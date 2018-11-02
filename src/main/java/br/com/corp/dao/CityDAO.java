package br.com.corp.dao;

import br.com.corp.dto.CityDTO;
import org.springframework.data.repository.CrudRepository;

public interface CityDAO extends CrudRepository<CityDTO, Integer> {
}
