package br.com.corp.dao.impl;

import br.com.corp.dao.PersonDAO;
import br.com.corp.dto.PersonDTO;
import org.springframework.stereotype.Component;


@Component("personDAO")
public class PersonDAOImpl extends GenericHibernateDAOImpl<PersonDTO, Integer> implements PersonDAO {
}
