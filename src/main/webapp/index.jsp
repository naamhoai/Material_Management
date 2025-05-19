<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/FileCss/Css.css">


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">



</head>

<body>

<div class="shawdow">
    <div class="company-box">
        <img src="FileCss/pexels-ekaterinabelinskaya-4744755.jpg" alt="Logo" class="logoe">
        <h1 class="company-name">ABC Technologies</h1>
        <p class="slogan">Empowering Your Future</p>


        <img src="FileCss/pexels-edward-jenner-4249687.jpg" class="decor decor1" alt="">
        <img src="FileCss/pexels-karolina-grabowska-7285929.jpg" class="decor decor2" alt="">
        <img src="FileCss/pexels-shvetsa-4312841.jpg" class="decor decor3" alt="">
    </div>

</div>


<div class="content">
    <div class="content-item">
        <p><a href="#">Home</a></p>
        <p><a href="#">Catergory </a> </p>
        <p><a href="#">Product</a> </p>
        <p><a href="#">Supplier</a> </p>

    </div>
</div>
<div class="logo">
    <a href="#">
        <img src="FileCss/customer-support-1714.png">
    </a>

</div>

<div class="wrapper">
    <div class="met">
        <%if (request.getAttribute("mess") != null) {%>
       <b><p style="color: red" > <%=request.getAttribute("mess") %> </p></b>

        <%}%>
    </div>

    <form action="Html" method="post">

        <div class="input-box">
            <i class="fas fa-user"></i>
            <input type="text"  placeholder="user" name="user" required  />
        </div>
        <div class="input-box">
            <i class="fas fa-lock"></i>
            <input type="password" placeholder="pass" name="pass" required/>

        </div>
        <div class="remember-foegot">

        </div>
        <button type="submit" class="btn">Login</button>
        <div class="register">
            <p>You want to help?--<a href="#">HELP</a></p>
        </div>

    </form>

</div>
<div>
    <footer >
        <div class="cuoi">
            <p>Address: 123 Le Loi Street, District 1, Ho Chi Minh City</p>
            <p> Hotline: 0909 123 456</p>
            <p> Email: contact@abctech.vn</p>
            <p> Website: www.abctech.vn</p>
        </div>
    </footer>
</div>

</body>
</html>