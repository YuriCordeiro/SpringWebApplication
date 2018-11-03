package br.com.corp.dao.impl;

import br.com.corp.dao.UserDAO;
import br.com.corp.dto.UserDTO;
import org.springframework.stereotype.Component;

@Component("userDAO")
public class UserDAOImpl extends GenericHibernateDAOImpl<UserDTO, String> implements UserDAO {
}
