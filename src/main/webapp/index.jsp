<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign Up - Material Management</title>
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
      background: linear-gradient(to top, #d8e7ee, #9f9ef3);
      background-size: cover;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .container {
      width: 850px;
      height: 520px;
      display: flex;
      border-radius: 20px;
      overflow: hidden;
      box-shadow: 0 5px 20px rgba(0,0,0,0.2);
      background-color: white;
    }

    .form-section {
      width: 45%;
      padding: 40px;
      background: linear-gradient(to bottom right, #ffffff, #e0e0e0);
      display: flex;
      flex-direction: column;
      justify-content: center;
      flex-direction: column;
    }

    .form-section h2 {
      margin-bottom: 10px;
      color: #333;
    }

    .form-section p {
      font-size: 14px;
      margin-bottom: 25px;
      color: #777;
    }

    .form-section input {
      padding: 12px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 10px;
    }

    .form-section button {
      padding: 12px;
      background-color: #6dbdf2;
      color: white;
      border: none;
      border-radius: 10px;
      cursor: pointer;
      font-weight: bold;

    }

    .form-section {
      display: flex;
      gap: 10px;
      margin-top: 15px;
      background-color: white;
      color: #333;
      border: 1px solid #ccc;
      flex: 1;
    }


    .providers img{
      position: absolute;
      left: 668px;
      bottom: 110px;
      border: #333 solid 1px;
      border-radius: 50%;
      width: 50px;

    }

    .form-section small {
      margin-top: 15px;
      font-size: 12px;
      color: #666;
    }

    .image-section {
      width: 55%;
      background-image: url("FileJSP/pexels-cottonbro-7484811.jpg");
      background-size: cover;
      background-position: center;
      position: relative;
    }

    .image-section::before {
      content: "";
      position: absolute;
      top: 0; left: 0; right: 0; bottom: 0;
      background: rgba(0, 0, 0, 0.3);
    }

    .image-section .overlay-text {
      position: absolute;
      bottom: 20px;
      left: 20px;
      color: white;
      z-index: 2;
    }

    .image-section .overlay-text h3 {
      margin-bottom: 5px;
    }
    .form-section form {
      display: flex;
      flex-direction: column;
    }

  </style>
</head>

<body>

<div class="container">

  <div class="form-section">

    <h2>Login</h2>
    <p>Sign up and get access to our material management system</p>
  <% if (request.getAttribute("mess")!=null){%>
    <h4 style="color: red;"> <%= request.getAttribute("mess") %></h4>
    <%}%>
    <form action="Html" method="post">
    <input type="text" placeholder="Username" name="user">
    <input type="password" placeholder="Password" name="pass">
    <button type="submit">Login</button>
    </form>

    <div class="providers">
      <a href="#"> <img src="FileJSP/customer-support-1714.png"/></a>
    </div>

  </div>

  <div class="image-section">
    <div class="overlay-text">
      <h3> Material Management System.</h3>
      <p>Manage your materials smarter & faster</p>
    </div>
  </div>
</div>
</body>
</html>
