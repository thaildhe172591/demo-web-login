<%-- 
    Document   : view
    Created on : Feb 6, 2024, 11:46:07 PM
    Author     : LDT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="https://cdn.jsdelivr.net/npm/remixicon@3.2.0/fonts/remixicon.css" rel="stylesheet">

        <link rel="stylesheet" href="assets/css/styles.css">

        <title>Menu</title>
    </head>
    <body>
        <!--=============== HEADER ===============-->
    <%--<c:if test="${sessionScope.account!=null}">--%>

        <header class="header">
            <nav class="nav container">
                <div class="nav__data">
                    <a href="#" class="nav__logo">
                        <i class="ri-planet-line"></i> Project By LDT
                    </a>

                    <div class="nav__toggle" id="nav-toggle">
                        <i class="ri-menu-line nav__burger"></i>
                        <i class="ri-close-line nav__close"></i>
                    </div>
                </div>

                <!--=============== NAV MENU ===============-->
                <div class="nav__menu" id="nav-menu">
                    <ul class="nav__list">
                        <li><a href="view.jsp" class="nav__link">Home</a></li>

                        <li><a href="show" class="nav__link">View List</a></li>


                        <li class="dropdown__item">
                            <div class="nav__link">
                                Users <i class="ri-arrow-down-s-line dropdown__arrow"></i>
                            </div>

                            <ul class="dropdown__menu">
                                <li>
                                    <a href="#" class="dropdown__link">
                                        <i class="ri-user-line"></i> Profiles
                                    </a>                          
                                </li>

                                <li>
                                    <a href="#" class="dropdown__link">
                                        <i class="ri-lock-line"></i> Accounts
                                    </a>
                                </li>

                                <li>
                                    <a href="#" class="dropdown__link">
                                        <i class="ri-message-3-line"></i> Messages
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="logout" class="nav__link">Log Out</a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <div class="img-container">
            <div class="image-container">
                <img src="z5032772668800_4ff5ada9965bde79abdec8161bf65347.jpg" alt="alt">
            </div>
        </div>  

        <!--=============== MAIN JS ===============-->
        <script src="assets/js/main.js"></script>
    <%--</c:if>--%>
</body>
</html>
