package com.company.controller;


import com.company.entity.*;
import com.company.form.UserEditForm;
import com.company.service.inter.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class UserEditController {

    @Autowired
    private UserServiceInter userService;

    @Autowired
    private SkillServiceInter skillService;

    @Autowired
    private EmploymentHistoryServiceInter empHistoryService;

    @Autowired
    private CountryServiceInter countryService;

    @Autowired
    private UserSkillServiceInter userSkillService;


    @RequestMapping(method = RequestMethod.GET, value = "/useredit")
    public ModelAndView update(
            @RequestParam(value = "id", required = false) Integer id
    ) {

        User user = userService.getById(id);
        ModelAndView mv = new ModelAndView("useredit");

        List<Skill> skills = skillService.getAll();
        List<Country> countrys = countryService.getAll();
        List<UserSkill> userSkills = userSkillService.getAllSkillByUserId(id);

        mv.addObject("userSkills", userSkills);
        mv.addObject("user", user);
        mv.addObject("skills", skills);
        mv.addObject("countrys", countrys);

        return mv;

    }


    @RequestMapping(method = RequestMethod.POST, value = "/useredit")
    public ModelAndView updateUser(
            @Valid
            @ModelAttribute("user") UserEditForm userEditForm,
            BindingResult bindingResult) {
        ModelAndView mv = new ModelAndView("useredit");
        if (bindingResult.hasErrors()) {
            return mv;
        }

        User u = userService.getById(userEditForm.getId());
        Country nationality = countryService.getById(userEditForm.getNationality());
        Country country = countryService.getById(userEditForm.getBirthplace());
        u.setName(userEditForm.getName());
        u.setSurname(userEditForm.getSurname());
        u.setEmail(userEditForm.getEmail());
        u.setPhone(userEditForm.getPhone());
        u.setBirthdate(userEditForm.getBirthdate());
        u.setAddress(userEditForm.getAddress());
        u.setNationality(nationality);
        u.setBirthplaceId(country);
        u.setProfileDescription(userEditForm.getProfileDescription());

        userService.updateUser(u);

        return mv;

    }
//    @ModelAttribute("user")
//    public UserEditForm getUserEditForm(){
//        return new UserEditForm(null,null,null,null,null,null,null,null,null,null);
//    }

}
