    <#include "security.ftlh">
    <#import "login.ftlh" as l>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="/main">Questionnaire</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="/main">Главная</a>
                </li>
                <#if isUser>
                <li class="nav-item">
                    <a class="nav-link" href="/questionnaire">Заполнить анкету</a>
                </li>
                </#if>
                <#if isAdmin || isManager>
                <li class="nav-item">
                    <a class="nav-link" href="/filter">Список анкет</a>
                </li>
                </#if>
                <#if isAdmin>
                <li class="nav-item">
                    <a class="nav-link" href="/user">Список пользователей</a>
                </li>
                </#if>
            </ul>
            <#if isAdmin || isManager || isUser>
            <div class="navbar-text mr-6">${name}</div>
            <@l.logout />
            </#if>
        </div>
</nav>