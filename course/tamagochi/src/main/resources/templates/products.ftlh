<!DOCTYPE html>
<head>
    <title>Tamagochi</title></head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-dark bg-dark">
    <div class="container-fluid">
        <a href="/" style="text-decoration: none">
            <span class="navbar-brand mb-0 h1">Tamagochi</span>
        </a>
        <#if user.email??>
            <h3>имя пользователя: <i>${user.name}</i></h3>
            <form action="/logout" method="post">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input class="btn btn-light my-2 my-sm-0" type="submit" value="Выйти">
            </form>
        <#else>
            <button class="btn btn-light my-2 my-sm-0" type="button"
                    onclick="window.location.href = '/login'">
                Войти
            </button>
        </#if>
    </div>
</nav>
<#if user.email??>
    <#if user.isAdmin()>
        <h1 style="text-align: center">
            <a href="/admin" style="text-decoration: none">Панель администратора</a>
        </h1>
        <hr>
    </#if>
</#if>
<h1 style="text-align: center">Лучшие предложения</h1>
<hr>
<div style="text-align: center; display: flex; justify-content: center">
    <form action="/" method="get"><b>Поиск по названию пиццы:</b>
        <input type="text" name="title"><br><hr>
        <input style="width: 40%" class="btn btn-dark" type="submit" value="Поиск"/>
    </form>
</div>
<#list products as products>
    <div>
        <hr><p style="text-align: center"><b>${products.title}</b> ${products.price} руб. | <a href="/product/${products.id}" style="text-decoration: none;">Подробнее...</a></p>
    </div>
<#else>
    <h3 style="text-align: center">Пиццы нет</h3>
</#list>
</body>
</html>