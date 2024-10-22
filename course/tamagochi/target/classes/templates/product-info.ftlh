<!DOCTYPE html>
<html xmlns:th="http://www.w3.org/1999/xhtml">
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
<h4>Подробная информация о товаре</h4>
<#list images as img>
    <img src="/images/${img.id}" height="200px"/><br><br>
</#list>
<b>Название пиццы: </b>${product.title}<br>
<b>Описание пиццы: </b>${product.description}<br>
<b>Цена: </b>${product.price}<br>
<form onsubmit="return confirm('Вы действительно хотите купить этот товар?');">
    <input type="submit" value="Купить товар"/>
</form>
<form action ="/product/delete/${product.id}" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button type="submit" class="btn btn-danger m-3">
        Удалить
    </button>
</form>
</body>
</html>