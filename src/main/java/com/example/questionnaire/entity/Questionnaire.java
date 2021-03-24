package com.example.questionnaire.entity;

import javax.persistence.*;

@SuppressWarnings("ALL")
@Entity
public class Questionnaire {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;
    private String surname;
    private String patronymic;
    private String sex;
    private String marital_status;
    private String residential_address;
    private String registration_address;
    private Long mobile_number;
    private String personal_data_additional_inf;
    private String education;
    private String education_institution;
    private String faculty;
    private String form_of_education;
    private String year_of_completion;
    private String speciality_by_diploma;
    private String diploma_qualification;
    private String additional_information_education;
    private String place_of_work;
    private String date_of_employment;
    private String date_of_dismissal;
    private String position;
    private String function;
    private String reason_for_dismissal;
    private String additional_information;
    private String preffered_line_of_business;
    private String preffered_position;
    private String additional_information_add;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User sender;

    private String filename;


    public Questionnaire() {
    }

    public Questionnaire(User user, String name, String surname, String patronymic, String sex,
                         String marital_status, String residential_address, String registration_address,
                         Long mobile_number, String personal_data_additional_inf, String education,
                         String education_institution, String faculty, String form_of_education, String year_of_completion,
                         String speciality_by_diploma, String diploma_qualification, String additional_information_education,
                         String place_of_work, String date_of_employment, String date_of_dismissal, String position,
                         String function, String reason_for_dismissal, String additional_information,
                         String preffered_line_of_business, String preffered_position, String additional_information_add) {
        this.sender = user;
        this.name = name;
        this.surname = surname;
        this.patronymic = patronymic;
        this.sex = sex;
        this.marital_status = marital_status;
        this.residential_address = residential_address;
        this.registration_address = registration_address;
        this.mobile_number = mobile_number;
        this.personal_data_additional_inf = personal_data_additional_inf;
        this.education = education;
        this.education_institution = education_institution;
        this.faculty = faculty;
        this.form_of_education = form_of_education;
        this.year_of_completion = year_of_completion;
        this.speciality_by_diploma = speciality_by_diploma;
        this.diploma_qualification = diploma_qualification;
        this.additional_information_education = additional_information_education;
        this.place_of_work = place_of_work;
        this.date_of_employment = date_of_employment;
        this.date_of_dismissal = date_of_dismissal;
        this.position = position;
        this.function = function;
        this.reason_for_dismissal = reason_for_dismissal;
        this.additional_information = additional_information;
        this.preffered_line_of_business = preffered_line_of_business;
        this.preffered_position = preffered_position;
        this.additional_information_add = additional_information_add;
    }

    public String getSenderName() {
        return sender != null ? sender.getUsername(): "<none>";
    }

    public User getSender() {
        return sender;
    }

    public void setSender(User sender) {
        this.sender = sender;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
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

    public String getPatronymic() {
        return patronymic;
    }

    public void setPatronymic(String patronymic) {
        this.patronymic = patronymic;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getMarital_status() {
        return marital_status;
    }

    public void setMarital_status(String marital_status) {
        this.marital_status = marital_status;
    }

    public String getResidential_address() {
        return residential_address;
    }

    public void setResidential_address(String residential_address) {
        this.residential_address = residential_address;
    }

    public String getRegistration_address() {
        return registration_address;
    }

    public void setRegistration_address(String registration_address) {
        this.registration_address = registration_address;
    }

    public Long getMobile_number() {
        return mobile_number;
    }

    public void setMobile_number(Long mobile_number) {
        this.mobile_number = mobile_number;
    }

    public String getPersonal_data_additional_inf() {
        return personal_data_additional_inf;
    }

    public void setPersonal_data_additional_inf(String personal_data_additional_inf) {
        this.personal_data_additional_inf = personal_data_additional_inf;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getEducation_institution() {
        return education_institution;
    }

    public void setEducation_institution(String education_institution) {
        this.education_institution = education_institution;
    }

    public String getFaculty() {
        return faculty;
    }

    public void setFaculty(String faculty) {
        this.faculty = faculty;
    }

    public String getForm_of_education() {
        return form_of_education;
    }

    public void setForm_of_education(String form_of_education) {
        this.form_of_education = form_of_education;
    }

    public String getYear_of_completion() {
        return year_of_completion;
    }

    public void setYear_of_completion(String year_of_completion) {
        this.year_of_completion = year_of_completion;
    }

    public String getSpeciality_by_diploma() {
        return speciality_by_diploma;
    }

    public void setSpeciality_by_diploma(String speciality_by_diploma) {
        this.speciality_by_diploma = speciality_by_diploma;
    }

    public String getDiploma_qualification() {
        return diploma_qualification;
    }

    public void setDiploma_qualification(String diploma_qualification) {
        this.diploma_qualification = diploma_qualification;
    }

    public String getAdditional_information_education() {
        return additional_information_education;
    }

    public void setAdditional_information_education(String additional_information_education) {
        this.additional_information_education = additional_information_education;
    }

    public String getPlace_of_work() {
        return place_of_work;
    }

    public void setPlace_of_work(String place_of_work) {
        this.place_of_work = place_of_work;
    }

    public String getDate_of_employment() {
        return date_of_employment;
    }

    public void setDate_of_employment(String date_of_employment) {
        this.date_of_employment = date_of_employment;
    }

    public String getDate_of_dismissal() {
        return date_of_dismissal;
    }

    public void setDate_of_dismissal(String date_of_dismissal) {
        this.date_of_dismissal = date_of_dismissal;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getFunction() {
        return function;
    }

    public void setFunction(String function) {
        this.function = function;
    }

    public String getReason_for_dismissal() {
        return reason_for_dismissal;
    }

    public void setReason_for_dismissal(String reason_for_dismissal) {
        this.reason_for_dismissal = reason_for_dismissal;
    }

    public String getAdditional_information() {
        return additional_information;
    }

    public void setAdditional_information(String additional_information) {
        this.additional_information = additional_information;
    }

    public String getPreffered_line_of_business() {
        return preffered_line_of_business;
    }

    public void setPreffered_line_of_business(String preffered_line_of_business) {
        this.preffered_line_of_business = preffered_line_of_business;
    }

    public String getPreffered_position() {
        return preffered_position;
    }

    public void setPreffered_position(String preffered_position) {
        this.preffered_position = preffered_position;
    }

    public String getAdditional_information_add() {
        return additional_information_add;
    }

    public void setAdditional_information_add(String additional_information_add) {
        this.additional_information_add = additional_information_add;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }
}

