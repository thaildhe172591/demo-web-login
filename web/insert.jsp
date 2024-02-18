<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Insert Student</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <style>
            body {
                font-family: Arial, sans-serif;
            }
            .container {
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
            }
            .form-group {
                margin-bottom: 15px;
            }
            .form-group label {
                display: block;
                margin-bottom: 5px;
            }
            .form-group input {
                width: 100%;
                padding: 10px;
                font-size: 16px;
            }
            .form-group button {
                background-color: #4CAF50;
                color: white;
                padding: 10px 20px;
                border: none;
                cursor: pointer;
                font-size: 16px;
            }
            .form-group button:hover {
                background-color: #45a049;
            }
            .error {
                color: red;
                margin-top: 10px;
            }
            .back {
                display: flex;
                align-items: center;
                margin-bottom: 10px;
            }
            .back i, a{      
                text-decoration: none;
            }
            .back {   
                margin: 0 50px;
            }
        </style>
    </head>
    <body>
        <h1><a href="show" class="back"><i class="fas fa-arrow-left"></i></a></h1>
        <div class="container"> 
            <form style="display: flex;  justify-content: center; align-items: center; flex-direction: column" action="insert">
                <h2>Insert Student</h2>
                <div class="form-group">
                    <label for="rollNo">RollNo</label>
                    <input type="text" name="rollNo" id="rollNo">
                </div>

                <div class="form-group">
                    <label for="Name">Name</label>
                    <input type="text" name="name" id="name">
                </div>

                <div class="form-group">
                    <label for="mark">Mark</label>
                    <input type="text" name="mark" id="mark">
                </div>

                <div class="form-group">
                    <button type="submit">Insert</button>
                    <button type="reset">Reset</button>
                </div>
            </form>
        </div>
        <div class="error">${requestScope.error}</div>    
    </body>
</html>
