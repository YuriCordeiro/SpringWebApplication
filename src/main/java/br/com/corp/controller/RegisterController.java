package br.com.corp.controller;

import br.com.corp.dto.AddressDTO;
import br.com.corp.dto.PersonDTO;
import br.com.corp.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/register")
public class RegisterController {

    @Autowired
    private PersonService personService;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public ModelAndView registerUser() {
        ModelAndView model = new ModelAndView();
        model.setViewName("register");
        return model;
    }

    /**
     * Should receive the user data
     *
     * @return
     */
    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    public ModelAndView regiserNewUser(@ModelAttribute("personObject") PersonDTO personObject,
                                       @ModelAttribute("addressObject") AddressDTO addressObject) {

        if (personService.registerPerson(personObject, addressObject)) {
            return new ModelAndView("registeredSuccessully");
        }


        return new ModelAndView();
    }

}
