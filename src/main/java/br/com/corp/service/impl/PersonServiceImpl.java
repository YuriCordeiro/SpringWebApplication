package br.com.corp.service.impl;

import br.com.corp.dao.PersonDAO;
import br.com.corp.dto.AddressDTO;
import br.com.corp.dto.PersonDTO;
import br.com.corp.dto.UserDTO;
import br.com.corp.service.PersonService;
import br.com.corp.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashSet;
import java.util.List;

@Service
public class PersonServiceImpl implements PersonService {

    public static final Logger log = LoggerFactory.getLogger(PersonServiceImpl.class);

    @Autowired
    private PersonDAO personDAO;
    @Autowired
    private UserService userService;

    /**
     * should return all person registered;
     *
     * @return
     */
    public List<PersonDTO> findAll() {
        return personDAO.findAll();
    }

    /**
     * Should insert a person
     *
     * @param person
     * @param address
     * @return
     */
    public boolean registerPerson(PersonDTO person, AddressDTO address) {

        if (person != null && address != null) {

            addPesonAddress(person, address);
            person.setRegisterDate(new Date());

            try {

                personDAO.insert(person);
                log.info("The user " + person.getFirstName() + " were registered succesfully.");

                UserDTO user = userService.findUserByEmail(person.getUser().getEmail());

                if (user != null && user.getPerson() == null) {
                    user.setPerson(person);
                    userService.updateUser(user);
                }

                return true;

            } catch (Exception e) {
                log.error("Something went wrong: ", e);
                return false;
            }


        } else {
            return false;
        }
    }

    /**
     * Should add a new Address to the user's addresses list
     *
     * @param person  a person
     * @param address a user new address
     */
    private void addPesonAddress(PersonDTO person, AddressDTO address) {

        address.setCreated(new Date());

        if (address.getComplement().isEmpty()) {
            address.setComplement(null);
        }

        if (person.getAddresses() != null) {
            person.getAddresses().add(address);
        } else {
            person.setAddresses(new HashSet<AddressDTO>());
            person.getAddresses().add(address);
        }

    }


}
