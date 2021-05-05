package com.company.form;

import org.springframework.format.annotation.DateTimeFormat;

import java.text.DateFormat;
import java.util.Date;

public class UserEditForm {

    private Integer id;
    private String name;
    private String surname;
    private String email;
    private String phone;
    private String profileDescription;
    private String address;
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    private Date birthdate;
    private String password;
    private /*List<UserSkill>*/ String userSkillList;
    private /*List<com.company.entity.EmploymentHistory>*/ String employmentHistoryList;
    private Integer nationality;
    private Integer birthplace;

    public UserEditForm() {
    }

    public UserEditForm(Date birthdate) {
        this.birthdate = birthdate;
    }

    public UserEditForm(Integer id, String name, String surname, String email, String phone, String profileDescription, String address, Date birthdate, String password, String userSkillList, String employmentHistoryList, Integer nationality, Integer birthplace) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.phone = phone;
        this.profileDescription = profileDescription;
        this.address = address;
        this.birthdate = birthdate;
        this.password = password;
        this.userSkillList = userSkillList;
        this.employmentHistoryList = employmentHistoryList;
        this.nationality = nationality;
        this.birthplace = birthplace;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getProfileDescription() {
        return profileDescription;
    }

    public void setProfileDescription(String profileDescription) {
        this.profileDescription = profileDescription;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(Date birthdate) {
        this.birthdate = birthdate;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserSkillList() {
        return userSkillList;
    }

    public void setUserSkillList(String userSkillList) {
        this.userSkillList = userSkillList;
    }

    public String getEmploymentHistoryList() {
        return employmentHistoryList;
    }

    public void setEmploymentHistoryList(String employmentHistoryList) {
        this.employmentHistoryList = employmentHistoryList;
    }

    public Integer getNationality() {
        return nationality;
    }

    public void setNationality(Integer nationality) {
        this.nationality = nationality;
    }

    public Integer getBirthplace() {
        return birthplace;
    }

    public void setBirthplace(Integer birthplace) {
        this.birthplace = birthplace;
    }
}