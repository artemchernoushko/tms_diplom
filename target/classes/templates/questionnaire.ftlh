<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <div>

    <form class="was-validated" method="post" enctype="multipart/form-data">
    <div class="row">
        <div class="col-3">
            <label for="name" class="form-label">Имя</label>
            <input class="form-control is-invalid" type="text" name="name" id="validationInput" placeholder="Имя"
                   required/>
        </div>
        <div class="col-3">
            <label for="surname" class="form-label">Фамилия</label>
            <input class="form-control is-invalid" type="text" name="surname" id="validationInput1"
                   placeholder="Фамилия" required/>
        </div>
        <div class="col-3">
            <label for="patronymic" class="form-label">Отчество</label>
            <input class="form-control is-invalid" type="text" name="patronymic" id="validationInput2"
                   placeholder="Отчество" required/>
        </div>
    </div>
    <div class="form-group row">
    <label class="col-sm-1 pt-3">Пол:</label>
    <div class="col-sm-3 pt-3">
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="sex" id="gridRadios1" value="Мужской" checked>
            <label class="form-check-label" for="gridRadios1">
                Мужской
            </label>
        </div>
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="sex" id="gridRadios2" value="Женский">
            <label class="form-check-label" for="gridRadios2">
                Женский
            </label>
        </div>
    </div>
    </div>
    <div class="col-sm-3 pt-3">
    <label for="validationCustom04" class="col-form-label">Семейное положение:</label>
    <select class="form-select" name="marital_status" id="validationCustom04" required>
        <option selected disabled value=""></option>
        <option>Холост</option>
        <option>Женат</option>
        <option>Разведен</option>
        <option>Вдовец</option>
        <option>Не замужем</option>
        <option>Замужем</option>
        <option>Разведена</option>
        <option>Вдова</option>
    </select>
    </div>
        <div class="row pt-3">
            <div class="col-3">
                <label for="residential_address" class="form-label">Адрес проживания</label>
                <input class="form-control is-invalid" type="text" name="residential_address" id="validationInput5" placeholder="Адрес проживания"
                       required/>
            </div>
            <div class="col-3">
                <label for="registration_address" class="form-label">Адрес прописки</label>
                <input class="form-control is-invalid" type="text" name="registration_address" id="validationInput6"
                       placeholder="Адрес прописки" required/>
            </div>
            <div class="col-3">
                <label for="mobile_number" class="form-label">Номер телефона</label>
                <input class="form-control is-invalid" type="text" name="mobile_number" id="validationInput7"
                       placeholder="Номер телефона" required/>
            </div>
        </div>
        <div>
        <div class="custom-file pt-4">
            <div><label class="custom-file-label" for="validatedCustomFile">Фотография</label></div>
            <input type="file" name="file" class="custom-file-input" id="validatedCustomFile" required>
        </div>
        </div>
        <div class="form-group pt-3">
            <div><label for="exampleTextarea">Дополнительная информация</label></div>
            <textarea class="col-5" name="personal_data_additional_inf" id="exampleTextarea" rows="4"></textarea>
        </div>
        <div class="col-sm-3 pt-3">
            <label for="validationCustom08" class="col-form-label">Образование:</label>
            <select class="form-select" name="education" id="validationCustom08" required>
                <option selected disabled value=""></option>
                <option>Высшее</option>
                <option>Среднее специальное</option>
                <option>Профессионально-техническое</option>
                <option>Среднее</option>
            </select>
        </div>
        <div class="col-5 pt-2">
            <label for="validationInput9" class="form-label">Учебное заведение</label>
            <input class="form-control is-invalid" type="text" name="education_institution" id="validationInput9"
                   placeholder="Учебное заведение" required/>
        </div>
        <div class="row pt-3">
            <div class="form-group col-3">
                <label for="exampleFormControlInput1">Факультет(без сокращений)</label>
                <input type="text" class="form-control" name="faculty" id="exampleFormControlInput1" placeholder="Факультет">
            </div>
        <div class="form-group col-3">
            <label for="exampleFormControlInput2">Год окончания</label>
            <input type="text" class="form-control" name="year_of_completion" id="exampleFormControlInput2" placeholder="Год окончания">
        </div>
            <div class="col-sm-3">
                <label for="Custom11">Форма образования:</label>
                <select class="form-select" name="form_of_education" id="Custom11">
                    <option selected disabled value=""></option>
                    <option> </option>
                    <option>Дневное</option>
                    <option>Заочное</option>
                    <option>Вечернее</option>
                    <option>Дистанционное</option>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col-3">
                <label for="validationInput12" class="form-label">Специальность по диплому</label>
                <input class="form-control is-invalid" type="text" name="speciality_by_diploma" id="validationInput12" placeholder="Специальность по диплому"
                       required/>
            </div>
            <div class="col-3">
                <label for="surname" class="form-label">Квалификация по диплому</label>
                <input class="form-control is-invalid" type="text" name="diploma_qualification" id="validationInput13"
                       placeholder="Квалификация по диплому" required/>
            </div>
        </div>
        <div class="form-group pt-3">
            <div><label for="exampleTextarea2">Дополнительная информация об образовании</label></div>
            <textarea class="col-5" name="additional_information_education" id="exampleTextarea2" rows="4"></textarea>
        </div>
<#--    <div>Специальность по диплому</div>-->
<#--    <input type="text" name="speciality_by_diploma" placeholder="Специальность по диплому"/>-->
<#--    <div>Квалификация по диплому</div>-->
<#--    <input type="text" name="diploma_qualification" placeholder="Квалияикация по диплому"/>-->
<#--    <div>Дополнительная информация об образовании</div>-->
<#--    <input type="text" name="additional_information_education" placeholder="Дополнительная информация об образовании"/>-->
        <div class="row">
            <div class="col-3">
                <label for="validationInput14" class="form-label">Место работы</label>
                <input class="form-control is-invalid" type="text" name="place_of_work" id="validationInput14" placeholder="Место работы"
                       required/>
            </div>
            <div class="col-3">
                <label for="surname" class="form-label">Дата устройства</label>
                <input class="form-control is-invalid" type="text" name="date_of_employment" id="validationInput1"
                       placeholder="Дата устройства" required/>
            </div>
        </div>
        <div class="form-group col-3">
            <label for="exampleFormControlInput1">Дата увольнения</label>
            <input type="text" class="form-control" name="date_of_dismissal" id="exampleFormControlInput16" placeholder="Дата увольнения">
        </div>
            <div class="col-3">
                <label for="validationInput17" class="form-label">Должность</label>
                <input class="form-control is-invalid" type="text" name="position" id="validationInput17" placeholder="Должность"
                       required/>
            </div>
            <div class="form-group pt-3">
                <div><label for="exampleTextarea3">Должностные обязанности</label></div>
                <textarea class="col-5" name="function" id="exampleTextarea3" rows="4"></textarea>
            </div>
        <div class="form-group col-5">
            <label for="exampleFormControlInput19">Причина увольнения</label>
            <input type="text" class="form-control" name="reason_for_dismissal" id="exampleFormControlInput19" placeholder="Причина увольнения">
        </div>
        <div class="form-group pt-3">
            <div><label for="exampleTextarea4">Дополнительная информация об опыте работы</label></div>
            <textarea class="col-5" name="additional_information" id="exampleTextarea4" rows="4"></textarea>
        </div>
        <div class="row pt-3">
            <div class="col-5">
                <label for="validationInput20" class="form-label">Предпочтительное направление деятельности</label>
                <input class="form-control is-invalid" type="text" name="preffered_line_of_business" id="validationInput20" placeholder="Предпочтительное направление деятельности"
                       required/>
            </div>
            <div class="col-5">
                <label for="validationInput21" class="form-label">Должность на которую претендуете</label>
                <input class="form-control is-invalid" type="text" name="preffered_position" id="validationInput21"
                       placeholder="Должность на которую претендуете" required/>
            </div>
        </div>
<#--    <div>Предпочтительное направление деятельности</div>-->
<#--    <input type="text" name="preffered_line_of_business" placeholder="Предпочтительное направление деятельности"/>-->
<#--    <div>Должность на которую претендуете</div>-->
<#--    <input type="text" name="preffered_position" placeholder="Должность на которую претендуете"/>-->
<#--    <div>Дополнительная информация</div>-->
<#--    <input type="text" name="additional_information_add" placeholder="Дополнительная информация"/>-->
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button class="btn btn-primary pt-2" type="submit" >Отправить</button>
    </form>
    </div>
</@c.page>