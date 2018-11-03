package br.com.corp.service.impl;

import br.com.corp.dao.AddressDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service
@Component("addressService")
public class AddressServiceImpl {

    @Autowired
    private AddressDAO addressDAO;
}
