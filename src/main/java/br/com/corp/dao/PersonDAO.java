package br.com.corp.dao;

import br.com.corp.dto.PersonDTO;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PersonDAO extends CrudRepository<PersonDTO, Integer> {
}
