<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
        <!-- META -->
        <%@ include file="../parts/meta.jsp" %>

        <title>Home</title>

        <!-- HEAD IMPORTS -->
        <%@ include file="../parts/head.jsp" %>

        <script type="text/javascript" >

            <!-- Execute when document its ready -->
            $(document).ready(function() {

                // Input Masks
                $('#inputPhoneNumber').mask('(00) 99999-9999');
                $('#inputCEP').mask('00000-000');
                $('#number').mask('000000');

                function limpa_formulário_cep() {
                    // Limpa valores do formulário de cep.
                    $("#inputAddress").val("");
                    $("#inputDistrict").val("");
                    $("#inputCity").val("");
                    $("#inputState").val("");

                    $("#inputAddress").prop('disabled', false);
                    $("#inputDistrict").prop('disabled', false);
                    $("#inputCity").prop('disabled', false);
                    $("#inputState").prop('disabled', false);
                }

                // Clear address fields when zipPostal input value is 0
                $('#inputCEP').on('input',function(e){
                   if($(this).val().length == 0){
                     $("#inputAddress").prop('readonly', false);
                     $("#inputDistrict").prop('readonly', false);
                     $("#inputCity").prop('readonly', false);
                     $("#inputState").prop('readonly', false);
                     limpa_formulário_cep();
                    }
                });

                //Quando o campo cep perde o foco.
                $("#inputCEP").blur(function() {

                    //Nova variável "cep" somente com dígitos.
                    var cep = $(this).val().replace(/\D/g, '');

                    //Verifica se campo cep possui valor informado.
                    if (cep != "") {

                        //Expressão regular para validar o CEP.
                        var validacep = /^[0-9]{8}$/;

                        //Valida o formato do CEP.
                        if(validacep.test(cep)) {

                            //Preenche os campos com "..." enquanto consulta webservice.
                            $("#inputAddress").val("...");
                            $("#inputDistrict").val("...");
                            $("#inputCity").val("...");
                            $("#inputState").val("...");

                            $("#inputAddress").prop('readonly', true);
                            $("#inputDistrict").prop('readonly', true);
                            $("#inputCity").prop('readonly', true);
                            $("#inputState").prop('readonly', true);

                            $('#inputAddressNumber').focus(); // Focus on House Number

                            //Consulta o webservice viacep.com.br/
                            $.getJSON("https://viacep.com.br/ws/"+ cep +"/json/?callback=?", function(dados) {

                                if (!("erro" in dados)) {
                                    //Atualiza os campos com os valores da consulta.
                                    $("#inputAddress").val(dados.logradouro);
                                    $("#inputDistrict").val(dados.bairro);
                                    $("#inputCity").val(dados.localidade);
                                    $("#inputState").val(dados.uf);
                                } //end if.
                                else {
                                    //CEP pesquisado não foi encontrado.
                                    limpa_formulário_cep();
                                    alert("CEP não encontrado.");
                                }
                            });
                        } //end if.
                        else {
                            //cep é inválido.
                            limpa_formulário_cep();
                            alert("Formato de CEP inválido.");
                        }
                    } //end if.
                    else {
                        //cep sem valor, limpa formulário.
                        limpa_formulário_cep();
                    }
                });



            });

        </script>

    </head>


    <!-- CONTENT -->
    <body>

    <div class="container" width="100%">

        <!-- HEADER -->
        <%@ include file="../parts/header.jsp" %>

        <form style="margin-top: 20%" action="/register/addUser" method="POST" class="needs-validation" novalidate>

          <div class="form-row">

                <div class="form-group col-md-6">
                  <label for="inputFirstName">Nome</label>
                  <input type="text" class="form-control" id="inputFirstName" name="firstName"
                  maxlength="30" required style="color: grey;">
                    <div class="valid-feedback">
                    </div>
                    <div class="invalid-feedback">
                        Digite o seu nome
                    </div>
                </div>

                <div class="form-group col-md-6">
                  <label for="inputLastName">Sobrenome</label>
                  <input type="text" class="form-control" id="inputLastName" name="lastName" style="color: grey;"
                  maxlength="100" required style="color: grey;">
                  <div class="valid-feedback">
                  </div>
                  <div class="invalid-feedback">
                      Digite o seu sobrenome
                  </div>
                </div>

              </div>

              <div class="form-row">

              <div class="form-group col-md-4">
                <label for="inputPhoneNumber">Telefone</label>
                <input type="text" class="form-control" id="inputPhoneNumber"
                name="phoneNumber"  maxlength="13" required style="color: grey;">

                <div class="invalid-feedback">
                    Insira um telefone para contato
                </div>

              </div>

              <div class="form-group col-md-8">
              <label for="inputEmail">Email</label>
                <input type="email" class="form-control" id="inputEmail" name="user.email"  maxlength="100" required style="color: grey;">

                <div class="valid-feedback">
                </div>
                <div class="invalid-feedback">
                    Insira um e-mail válido para se cadastrar e utilizá-lo na hora do Login
                </div>

              </div>

          </div>

          <div class="form-row">

              <div class="form-group col-md-6">
              <label for="inputPassword">Senha</label>
                <input type="password" class="form-control" id="inputPassword"
                maxlength="20" required style="color: grey;">

                    <div class="valid-feedback">
                    </div>
                    <div class="invalid-feedback">
                        Digite uma senha
                    </div>

               </div>

               <div class="form-group col-md-6">
               <label for="inputPassword">Confirmar a Senha</label>
                <input type="password" class="form-control" id="inputConfirmPassword" name="user.password" required style="color: grey;">

                    <div class="valid-feedback">
                    </div>
                    <div class="invalid-feedback">
                        Digite a sua senha novamente
                    </div>

              </div>

               <div class="form-group col-md-2">
                     <label for="inputCEP">CEP</label>
                     <input type="text" class="form-control" id="inputCEP" name="zipPostal" maxlength="8" required style="color: grey;">

                     <div class="valid-feedback">
                     </div>
                     <div class="invalid-feedback">
                         Digite um CEP
                     </div>

               </div>

                <div class="form-group col-md-1">
                  <label for="inputState">Estado</label>
                  <input type="text" class="form-control" id="inputState" name="uf" maxlength="2" required style="color: grey;">

                  <div class="valid-feedback">
                  </div>

                </div>

              <div class="form-group col-md-4">
                <label for="inputCity">Cidade</label>
                <input type="text" class="form-control" id="inputCity" name="city"  maxlength="2" required style="color: grey;">

                <div class="valid-feedback">
                  </div>

              </div>

            <div class="form-group col-md-5">
                <label for="inputDistrict">Bairro</label>
                <input type="text" class="form-control" id="inputDistrict" name="district"
                maxlength="30" required style="color: grey;">

                <div class="valid-feedback">
                </div>

            </div>

            <div class="form-group col-md-7">
                <label for="inputAddress">Endereço</label>
                <input type="text" class="form-control" id="inputAddress"
                name="address"  maxlength="255" required style="color: grey;">

                <div class="valid-feedback">
                  </div>

            </div>

            <div class="form-group col-md-2">
                <label for="inputAddressNumber">Número</label>
                <input type="text" class="form-control" id="inputAddressNumber"
                name="number" required style="color: black;" maxlength=5>

                <div class="valid-feedback">
                  </div>
                  <div class="invalid-feedback">
                      Informe um Número
                  </div>

            </div>

            <div class="form-group col-md-3">
                <label for="inputComplement">Complemento</label>
                <input type="text" class="form-control" id="inputComplement"
                name="complement"  maxlength="45" style="color: black;">
            </div>

            <!-- Gender -->
            <div class="form-group col-md-8">
                <label for="rdGender">Sexo</label>
                    <div class="form-row">
                        <div class="form-group col-md-2">
                            <input type="radio" id="rdSexGender" value="F" name="sexGender" checked>
                                Feminino
                        </div>

                        <div class="form-group col-md-2">
                            <input type="radio" id="rdSexGender" value="M" name="sexGender">
                                Masculino
                        </div>
                    </div>
            </div>

            <div class="form-group col-md-4">
                <!-- EMPTY CONTAINER -->
            </div>

            <div class="form-row">
                <div class="col-lg-4 col-lg-offset-4">
                    <button type="submit" class="btn btn-warning" style="background-color: #ff0066; color: white; border-color: black;">Cadastrar!</button>
            </div>
            </div>

          <div>

        </form>

        <script>
            (function() {
              'use strict';
              window.addEventListener('load', function() {
                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.getElementsByClassName('needs-validation');
                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function(form) {
                  form.addEventListener('submit', function(event) {
                    if (form.checkValidity() === false) {
                      event.preventDefault();
                      event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                  }, false);
                });
              }, false);
            })();
        </script>

    </div>

    <div class="super_container">

        <div id="footer_div">
            <!-- FOOTER -->
            <%@ include file="../parts/footer.jsp" %>

        </div>

    </div>

    </body>



</html>