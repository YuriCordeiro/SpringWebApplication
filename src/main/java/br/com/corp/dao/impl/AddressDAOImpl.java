package br.com.corp.dao.impl;

import br.com.corp.dao.AddressDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
@Transactional
public class AddressDAOImpl implements AddressDAO {

    private Logger log = LoggerFactory.getLogger(AddressDAOImpl.class);

}
