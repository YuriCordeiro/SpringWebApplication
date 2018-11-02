package br.com.corp.dao;

import br.com.corp.dto.PersonDTO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PersonDAO extends JpaRepository<PersonDTO, Integer> {
}
