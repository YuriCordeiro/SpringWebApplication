package br.com.corp.service.impl;

import br.com.corp.dao.UserDAO;
import br.com.corp.dto.UserDTO;
import br.com.corp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service
@Component("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDAO;

    @Override
    public UserDTO findUserByEmail(String email) {
        return userDAO.findById(email, false);
    }

    @Override
    public void updateUser(UserDTO user) {
        userDAO.update(user);
    }
}


