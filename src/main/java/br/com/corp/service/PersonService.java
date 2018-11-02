package br.com.corp.service;

import br.com.corp.dto.PersonDTO;

import java.util.List;

public interface PersonService {

    public List<PersonDTO> findAll();
}
