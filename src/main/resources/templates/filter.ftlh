<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
<div>Список анкет</div>
<form method="get" action="filter">
    <input type="text" name="filter" value="${filter!}">
    <button type="submit">Найти</button>
</form>
<#list questionnaire as questionnaire>
    <div>
        <div>
            <div>
                <#if questionnaire.filename??>
                    <span class="border"><img src="/img/${questionnaire.filename}" alt="${questionnaire.filename}" class="mg-thumbnail" width="150" height="150"></span>
                </#if>
            </div>
        <label><b>ФИО: </b></label>
        <span>${questionnaire.surname}</span>
        <span>${questionnaire.name}</span>
        <span>${questionnaire.patronymic}</span> </div>
        <div><label><b>Пол:</b> <span>${questionnaire.sex}</span></label>
        <label><b>Семейное положение: </b><span>${questionnaire.marital_status}</span></label></div>
        <div><label><b>Адрес проживания:</b> <span>${questionnaire.residential_address}</span></label>
        <label><b>Адрес прописки: </b><span>${questionnaire.registration_address}</span></label>
        <label><b>Номер телефона: </b><span>${questionnaire.mobile_number}</span></label></div>
        <div><label><b>Дополнительная информация: </b>${questionnaire.personal_data_additional_inf}</label></div>
        <div><label><b>Образование: </b>${questionnaire.education}</label></div>
        <label><b>Учебное заведение: </b>${questionnaire.education_institution}</label>
        <div>
            <#if questionnaire.faculty??>
            <label><b>Факультет: </b>${questionnaire.faculty}</label></#if>
            <#if questionnaire.year_of_completion??>
            <label><b>Год окончания: </b>${questionnaire.year_of_completion}</label></#if>
            <#if questionnaire.form_of_education??>
        <label><b>Форма образования: </b>${questionnaire.form_of_education}</label></#if></div>
        <div><label><b>Специальность по диплому: </b>${questionnaire.speciality_by_diploma}</label>
            <label><b>Квалификация по диплому: </b>${questionnaire.diploma_qualification}</label></div>
        <label><b>Дополнительная информация об образовании: </b>${questionnaire.additional_information_education}</label>
        <div><label><b>Место работы: </b>${questionnaire.place_of_work}</label>
            <label><b>Дата устройства: </b>${questionnaire.date_of_employment}</label></div>
        <#if questionnaire.date_of_dismissal??>
            <label><b>Дата увольнения: </b>${questionnaire.date_of_dismissal}</label></#if>
        <div><label><b>Должность: </b>${questionnaire.position}</label></div>
        <label><b>Должностные обязанности: </b>${questionnaire.function}</label>
        <div><#if questionnaire.reason_for_dismissal??>
                <label><b>Причина увольнения: </b>${questionnaire.reason_for_dismissal}</label></#if></div>
        <label><b>Дополнительная информация об опыте работы: </b>${questionnaire.additional_information}</label>
        <div><label><b>Предпочтительное направление деятельности: </b> <span>${questionnaire.preffered_line_of_business}</span></label>
            <label><b>Должность на которую претендуете: </b><span>${questionnaire.preffered_position}</span></label></div>
        <div><strong>_______________________________________________</strong></div>
<#--        <div>-->
<#--            <#if questionnaire.filename??>-->
<#--                <span class="border"><img src="/img/${questionnaire.filename}" alt="${questionnaire.filename}" class="mg-thumbnail" width="150" height="150"></span>-->
<#--            </#if>-->
<#--        </div>-->
    </div>
<#else>
Выбранных анкет нету
</#list>
</@c.page>