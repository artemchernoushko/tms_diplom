package com.example.questionnaire.repository;

import com.example.questionnaire.entity.Questionnaire;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface QuestionnaireRepository extends CrudRepository<Questionnaire, Long> {
    List<Questionnaire> findBySurname (String surname);
}
