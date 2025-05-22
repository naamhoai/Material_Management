
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Setting List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
        }
        h2 {
            margin-bottom: 10px;
        }
        .filter-section {
            display: flex;
            gap: 10px;
            margin-bottom: 10px;
        }
        .filter-section input, .filter-section select, .filter-section button {
            padding: 5px;
        }
        .top-right {
            float: right;
            margin-top: -35px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 10px;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        .action a {
            margin-right: 10px;
            color: blue;
            cursor: pointer;
        }
        .pagination {
            display: flex;
            gap: 5px;
            align-items: center;
        }
        .pagination button {
            padding: 5px 10px;
        }
        .delete-button {
            margin-left: 10px;
            background-color: red;
            color: white;
            padding: 5px 10px;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
<h2>Setting List</h2>

<div class="filter-section">
    <select>
        <option>All Types</option>
        <option>Warehouse Manager</option>
        <option>Director</option>
        <option>Employee</option>

    </select>
    <select>
        <option>All Statuses</option>
        <option>Active</option>
        <option>Deactive</option>
    </select>
    <select>
        <option>All Priority</option>
        <option>Hight</option>
        <option>Medium</option>
        <option>Low</option>


    </select>
    <input type="text" placeholder="Enter keyword(s) to search">
    <button>Search</button>
</div>

<div class="top-right">
    <a href="#">New Setting</a>
</div>

<table>
    <thead>
    <tr>
        <th>Choice</th>
        <th>Id</th>
        <th>Name</th>
        <th>Type</th>
        <th>Value</th>
        <th>Priority</th>
        <th>Status</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
<c:forEach var="u" items="${requestScope.list}">
    <tr>
        <td><input type="checkbox"></td>
        <td> ${u.user_id}</td>
        <td> ${u.fullname}</td>
        <td> ${u.username}</td>
        <td> </td>

        <td> ${u.priority}</td>
        <td>${u.status} </td>
        <td ><a href="#">Edit</a> <a href="#">Deactivate</a></td>
    </tr>
    </c:forEach>
    <tr><td>${requestScope.mess}</td></tr>



    </tbody>
</table>

<div class="pagination">
    <button>&lt;</button>
    <button>1</button>
    <button>2</button>
    <button>3</button>
    <button>...</button>
    <button>10</button>
    <button>&gt;</button>
    <button class="delete-button">Delete</button>
</div>
</body>
</html>
