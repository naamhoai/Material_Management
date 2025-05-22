<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .container {
            margin-top: 10px;
            width: 50%;
            margin-left: auto;
            margin-right: auto;
            border: 1px solid darkgrey;
            border-radius: 10px;
            padding: 20px;
        }

        h2 {
            text-align: center;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }

        textarea {
            resize: vertical;
        }

        .button-group {
            display: flex;
            justify-content: space-between;
        }

        button {
            padding: 8px 16px;
            cursor: pointer;
            border: none;
            border-radius: 5px;
        }

        .btn-submit {
            background-color: #007BFF;
            color: white;
        }

        .btn-reset {
            background-color: #6c757d;
            color: white;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Information</h2>
    <form action="./SendMailServlet" method="post">
        <div class="form-group">
            <label>To:</label>
            <input type="text" name="to" placeholder="Enter Email">
        </div>
        <div class="form-group">
            <label>Subject:</label>
            <input type="text" name="subject" placeholder="Enter Subject">
        </div>
        <div class="form-group">
            <label for="content">Content:</label>
            <textarea name="content" rows="3"></textarea>
        </div>
        <div class="button-group">
            <button type="submit" class="btn-submit">Send</button>
            <button type="reset" class="btn-reset">Cancel</button>
        </div>
    </form>
</div>
</body>
</html>