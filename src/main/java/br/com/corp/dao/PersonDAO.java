package br.com.corp.dao;

import br.com.corp.dto.PersonDTO;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional(propagation = Propagation.REQUIRED)
public interface PersonDAO extends GenericDAO<PersonDTO, Integer> {
}
