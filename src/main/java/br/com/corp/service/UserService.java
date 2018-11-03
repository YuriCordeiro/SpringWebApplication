package br.com.corp.service;


import br.com.corp.dto.UserDTO;

public interface UserService {

    UserDTO findUserByEmail(String email);

    void updateUser(UserDTO user);
}
