package com.example.questionnaire.controller;

import com.example.questionnaire.entity.Questionnaire;
import com.example.questionnaire.repository.QuestionnaireRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
@PreAuthorize("hasAnyAuthority('ADMIN','MANAGER')")
public class FilterController {
    @Autowired
    private QuestionnaireRepository questionnaireRepository;

    @GetMapping("/filter")
    public String main(@RequestParam(required = false) String filter, Model model){
        Iterable<Questionnaire> questionnaires = questionnaireRepository.findAll();
        if (filter != null && !filter.isEmpty()) {
            questionnaires = questionnaireRepository.findBySurname(filter);
        }else {
            questionnaires = questionnaireRepository.findAll();
        }
        model.addAttribute("questionnaire",questionnaires);
        model.addAttribute("filter",filter);
        return "filter";
    }
}
