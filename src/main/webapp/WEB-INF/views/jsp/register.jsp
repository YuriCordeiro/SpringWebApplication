<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
        <!-- META -->
        <%@ include file="../parts/meta.jsp" %>

        <title>Home</title>

        <!-- HEADER -->
        <%@ include file="../parts/header.jsp" %>
    </head>


    <!-- CONTENT -->
    <body>

    <div class="container" width="100%">


        <form style="margin-top: 20%">
          <div class="form-row">

            <div class="form-group col-md-6">
              <input type="text" class="form-control" placeholder="Nome" id="inputFirstName">
            </div>

            <div class="form-group col-md-6">
              <input type="text" class="form-control" placeholder="Sobrenome" id="inputLastName">
            </div>

          </div>

          <div class="form-row">
              <div class="form-group col-md-12">
                <input type="email" class="form-control" id="inputEmail" placeholder="Email">
              </div>

              <div class="form-group col-md-6">
                <input type="password" class="form-control" id="inputPassword" placeholder="Senha">
               </div>

               <div class="form-group col-md-6">
                <input type="passwordConfirm" class="form-control" id="inputPassword4" placeholder="Confirmar Senha">
              </div>

              <div class="form-group col-md-6">
              <label for="inputCity">Cidade</label>
              <input type="text" class="form-control" id="inputCity">
            </div>
            <div class="form-group col-md-4">
                  <label for="inputEstado">Estado</label>
                  <select id="inputEstado" class="form-control">
                    <option selected>Escolher...</option>
                    <option>...</option>
                  </select>
            </div>
            <div class="form-group col-md-2">
                  <label for="inputCEP">CEP</label>
                  <input type="text" class="form-control" id="inputCEP">
            </div>

            <div class="form-group col-md-12">
                <label for="inputCity">Endereço</label>
                <input type="text" class="form-control" id="inputEndereco" placeholder="Av. Nações unidas, 153">
            </div>


            <!-- TODO: ADICIONAR RADIOS DE SEXOS -->

          <div>

            <br/>
            <button type="submit" class="btn btn-warning">Cadastrar!</button>

        </form>

    </div>

    <div class="super_container">

        <div id="footer_div">
            <!-- FOOTER -->
            <%@ include file="../parts/footer.jsp" %>

        </div>

    </div>


    </body>


</html>