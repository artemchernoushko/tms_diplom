package com.example.questionnaire.controller;

import com.example.questionnaire.entity.Questionnaire;
import com.example.questionnaire.entity.User;
import com.example.questionnaire.repository.QuestionnaireRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.File;
import java.util.Map;
import java.util.UUID;

@Controller
@PreAuthorize("hasAuthority('USER')")
public class QuestionnaireController {
    @Autowired
    private QuestionnaireRepository questionnaireRepository;

    @Value("/C:/Users/chern/Desktop/questionnaire/questionnaire/uploads/")
    private String uploadPath;

    @GetMapping("/questionnaire")
    public String main(Map<String, Object> model){
        Iterable<Questionnaire> questionnaires = questionnaireRepository.findAll();
        model.put("questionnaire",questionnaires);
        return "questionnaire";
    }

    @PostMapping("questionnaire")
    public String add(@AuthenticationPrincipal User user, @RequestParam String name, @RequestParam String surname, @RequestParam String patronymic,
                      @RequestParam String sex, @RequestParam String marital_status, @RequestParam String residential_address,
                      @RequestParam String registration_address, @RequestParam Long mobile_number,
                      @RequestParam String personal_data_additional_inf,
                      @RequestParam String education, @RequestParam String education_institution,
                      @RequestParam String faculty, @RequestParam String form_of_education,
                      @RequestParam String year_of_completion, @RequestParam String speciality_by_diploma,
                      @RequestParam String diploma_qualification, @RequestParam String additional_information_education,
                      @RequestParam String place_of_work, @RequestParam String date_of_employment,
                      @RequestParam String date_of_dismissal, @RequestParam String position,
                      @RequestParam String function, @RequestParam String reason_for_dismissal,
                      @RequestParam String additional_information, @RequestParam String preffered_line_of_business,
                      @RequestParam String preffered_position, @RequestParam String additional_information_add, Map<String, Object> model, @RequestParam("file") MultipartFile file)
            throws IOException {
        Questionnaire questionnaire = new Questionnaire(user, name, surname, patronymic, sex, marital_status, residential_address,
                registration_address, mobile_number, personal_data_additional_inf, education, education_institution,
                faculty, form_of_education, year_of_completion, speciality_by_diploma, diploma_qualification, additional_information_education,
                place_of_work, date_of_employment, date_of_dismissal, position, function, reason_for_dismissal,additional_information,preffered_line_of_business,preffered_position,
                additional_information_add);

        if (file != null && !file.getOriginalFilename().isEmpty()) {
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }
            String uuidFile = UUID.randomUUID().toString();
            String resultFilename = uuidFile + "." + file.getOriginalFilename();
            file.transferTo(new File(uploadPath + "/" + resultFilename));
            questionnaire.setFilename(resultFilename);
        }

        questionnaireRepository.save(questionnaire);

        Iterable<Questionnaire> questionnaires = questionnaireRepository.findAll();
        model.put("questionnaire",questionnaires);

        return "questionnaire";
    }
}
