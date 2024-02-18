<%-- 
    Document   : login
    Created on : Feb 6, 2024, 11:42:31 PM
    Author     : LDT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <link rel="stylesheet" href="style.css">
        <style>
            .password-container {
                position: relative;
                width: 100%;
            }

            .eye-icon {
                position: absolute;
                right: 10px;
                top: 50%;
                transform: translateY(-50%);
                cursor: pointer;
            }
        </style>
        <title>Login Page | LDT</title>
    </head>

    <body>
        <%--<c:if test="${sessionScope.account==null}">--%>
            <div class="container" id="container">
                <div class="form-container sign-up">
                    <form action="register" method="get">
                        <h1>Create Account</h1>
                        <div class="social-icons">
                            <a href="#" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>
                            <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                            <a href="#" class="icon"><i class="fa-brands fa-github"></i></a>
                            <a href="#" class="icon"><i class="fa-brands fa-linkedin-in"></i></a>
                        </div>
                        <span>or use your email for registeration</span>
                        <input type="text" placeholder="Name" name="name">
                        <input type="text" placeholder="Username" name="username">
                        <input type="password" placeholder="Password" name="password">
                        <input type="email" placeholder="Email" name="email">                        
<!--                        <input type="password" placeholder="Confirm Password" name="cfpassword">-->
                        <button>Sign Up</button>                  
                    </form>
                </div>
                <div class="form-container sign-in">
                    <form action="login" method="post">
                        <h1>Sign In</h1>
                        <div class="social-icons">
                            <a href="#" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>
                            <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                            <a href="#" class="icon"><i class="fa-brands fa-github"></i></a>
                            <a href="#" class="icon"><i class="fa-brands fa-linkedin-in"></i></a>
                        </div>
                        <span>or use your account</span>

                        <div class="password-container">
                            <input type="text" placeholder="Username" name="username">
                        </div>               
                        <div class="password-container">
                            <input type="password" placeholder="Password" name="password">
                            <i class="fa-solid fa-eye eye-icon"></i>
                        </div>
                        <a href="#">Forget Your Password?</a>
                        <button>Sign In</button>                   
                    </form>
                </div>
                
                <div class="toggle-container">
                    <div class="toggle">
                        <div class="toggle-panel toggle-left">
                            <h1>Welcome Back!</h1>
                            <p>Enter your personal details to use all of site features</p>
                            <button class="hidden" id="login">Sign In</button>
                        </div>
                        <div class="toggle-panel toggle-right">
                            <h1>Hello, Friend!</h1>
                            <p>Register with your personal details to use all of site features</p>
                            <button class="hidden" id="register">Sign Up</button>
                        </div>
                    </div>
                </div>
            </div>

            <script src="script.js"></script>
            <script>
                document.querySelector('.eye-icon').addEventListener('click', function () {
                    const passwordInput = document.querySelector('input[name="password"]');
                    if (passwordInput.type === 'password') {
                        passwordInput.type = 'text';
                    } else {
                        passwordInput.type = 'password';
                    }
                });
            </script>
        <%--</c:if>--%>
    </body>
</html>
<%-- 
    Document   : index
    Created on : Jan 30, 2024, 1:59:38 PM
    Author     : LDT
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!--<!DOCTYPE html>-->
<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <a style="display: flex;  justify-content: center; align-items: center; flex-direction: column" href="show"><h1>View List</h1></a>
    </body>
</html>-->
<%-- 
    Document   : index
    Created on : Jan 30, 2024, 1:59:38 PM
    Author     : LDT
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!--<!DOCTYPE html>-->
<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Management System</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                display: flex;
                justify-content: center;
                align-items: center;
                margin: 0;
                background-color: #f5f5f5;
                width: 500px;
                margin: 0 auto;
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.2);
            }
            a {
                display: flex;
                justify-content: center;
                align-items: center;
                text-decoration: none;
                color: #333;
                font-size: 2rem;
                padding: 1rem 2rem;
                border-radius: 0.5rem;
                background-color: #4CAF50;
                color: white;
                transition: background-color 0.3s ease;
            }
            a:hover {
                background-color: #45a049;
            }
            h1 {
                /*            margin: 0;*/
                text-align: center;     
                font-size: 2.5rem;
                color: #333;
            }
        </style>
    </head>
    <body>
        <div>
            <h1>Student Management System</h1>
            <a href="show">View List</a>
        </div>
    </body>
</html>-->