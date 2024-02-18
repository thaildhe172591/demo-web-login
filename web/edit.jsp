<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Customer</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <style>
            body {
                font-family: Arial, sans-serif;
            }

            .container {
                width: 100%;
                max-width: 600px;
                margin: 0 auto;
                box-sizing: border-box;
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
                width: 50%;
            }

            .form-group button:hover {
                background-color: #45a049;
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
        <c:set var="std" value="${requestScope.editStd}" />
        <h1><a href="show" class="back"><i class="fas fa-arrow-left"></i></a></h1>
        <div style="display: flex;  justify-content: center; align-items: center; flex-direction: column">
            <div class="container">
                <h1>Edit Customer</h1>
                <form action="edit" method="POST">
                    <div class="form-group">
                        <input type="hidden" name="rollNo" id="rollNo" value="${std.rollNo}">
                    </div>

                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" name="name" id="name" value="${std.name}">
                    </div>

                    <div class="form-group">
                        <label for="mark">Mark</label>
                        <input type="text" name="mark" id="mark" value="${std.mark}">
                    </div>

                    <div align ="left" class="form-group">
                        <button type="submit">Update</button>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>




<!--<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Edit Customer</title>
        <style>
            body {
                font-family: Arial, sans-serif;
            }

            .container {
                width: 100%;
                max-width: 600px;
                margin: 0 auto;
                padding: 20px;
                box-sizing: border-box;
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
                width: 50%;
            }

            .form-group button:hover {
                background-color: #45a049;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Edit Customer</h1>
            <form action="edit" method="POST">
                <div class="form-group">
                    <input type="hidden" name="rollNo" id="rollNo" value="${std.rollNo}">
                </div>

                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" name="name" id="name" value="${std.name}">
                </div>

                <div class="form-group">
                    <label for="mark">Mark</label>
                    <input type="text" name="mark" id="mark" value="${std.mark}">
                </div>

                <div align ="center" class="form-group">
                    <button type="submit">Update</button>
                </div>
            </form>
        </div>
    </body>
</html>-->