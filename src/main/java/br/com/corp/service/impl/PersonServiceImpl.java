package br.com.corp.service.impl;

import br.com.corp.dao.PersonDAO;
import br.com.corp.dto.PersonDTO;
import br.com.corp.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PersonServiceImpl implements PersonService {

    @Autowired
    private PersonDAO personDAO;

    public List<PersonDTO> findAll() {
        return (List<PersonDTO>) personDAO.findAll();
    }

}
