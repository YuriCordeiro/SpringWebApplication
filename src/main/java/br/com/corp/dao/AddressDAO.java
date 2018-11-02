package br.com.corp.dao;

import br.com.corp.dto.AddressDTO;
import org.springframework.data.repository.CrudRepository;

public interface AddressDAO extends CrudRepository<AddressDTO, Integer> {
}
