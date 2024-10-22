<!DOCTYPE html>
<html>
<head>
    <title>Tamagochi</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-dark bg-dark">
    <div class="container-fluid">
        <a href="/" style="text-decoration: none">
            <span class="navbar-brand mb-0 h1">Tamagochi</span>
        </a>
    </div>
</nav>
<div>
    <h4>Авторизация</h4>
        <form action="/login" method="post" style="align-content: center;">
            <div class="form-group">
            Эл. почта: <input type="email" name="username"><br><br>
            </div>
            <div class="form-group">
            Пароль: <input type="password" name="password"><br><br>
            </div>
            <div class="form-group">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="submit" value="Вход"/>
            </div>
        </form>
    <div class="form-group">
        <a href="/registration" style="text-decoration: none">Зарегистрироваться</a>
    </div>
</div>
</body>
</html>
