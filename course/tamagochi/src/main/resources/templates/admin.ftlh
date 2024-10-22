<!DOCTYPE html>
<html>
<head>
    <title>Tamagochi</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-dark bg-dark">
    <div class="container-fluid">
        <a href="/" style="text-decoration: none">
            <span class="navbar-brand mb-0 h1">Tamagochi</span>
        </a>
    </div>
</nav>
<h1 style="text-align: center">Панель администратора</h1>
<hr>
<table class="table table-hover table-dark">
    <tr>
        <th>Email</th>
        <th>Номер телефона</th>
        <th>Активность</th>
        <th>Роли</th>
        <th>Бан</th>
    </tr>
    <#list users as user>
        <tr>
            <th>${user.email}</th>
            <th>${user.numberPhone}</th>
            <th><#if user.active>true><#else>false</#if></th>
            <th><#list user.roles as role>${role}<#sep>, </#list></th>
            <th>
                <form action="/admin/user/ban/${user.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Бан">
                </form>
            </th>
        </tr>
    <#else>
        <h3>Пользователей нет</h3>
    </#list>
</table>
<hr>
<h3>Создать новый товар</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Название пиццы: <input type="text" name="title"/><br><br>
    Описание пиццы: <input type="text" name="description"/><br><br>
    Цена пиццы: <input type="number" name="price"/><br><br>
    Фотография: <input type="file" name="file1"/><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Добавить товар"/>
</form>
</body>
</html>