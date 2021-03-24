<#assign
know = Session.SPRING_SECURITY_CONTEXT??
>

<#if know>
    <#assign
    user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    name = user.getUsername()
    isAdmin = user.isAdmin()
    isManager = user.isManager()
    isUser = user.isUser()
    >
<#else>
    <#assign
    name = "uknow"
    isAdmin = false
    isManager = false
    isUser = false
    >
</#if>