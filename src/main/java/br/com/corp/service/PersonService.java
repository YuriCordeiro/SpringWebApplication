package br.com.corp.service;

import br.com.corp.dto.AddressDTO;
import br.com.corp.dto.PersonDTO;

public interface PersonService {

    boolean registerPerson(PersonDTO person, AddressDTO address);
}
