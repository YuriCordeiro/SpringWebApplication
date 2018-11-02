package br.com.corp.dao;

import br.com.corp.dto.StateDTO;
import org.springframework.data.repository.CrudRepository;

public interface StateDAO extends CrudRepository<StateDTO, Integer> {
}
