package br.com.corp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterController {

    @RequestMapping(value = "/register", method = RequestMethod.GET)
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
    @RequestMapping(value = "/registerNewUser", method = RequestMethod.POST)
    public ModelAndView regiserNewUser() {
        ModelAndView model = new ModelAndView();
        model.setViewName("register");
        return model;
    }
}
