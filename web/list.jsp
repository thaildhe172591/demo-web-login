<%-- 
    Document   : index
    Created on : Jan 26, 2024, 5:00:19 PM
    Author     : LDT
--%>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Student Information</title>
        <link href="https://cdn.jsdelivr.net/npm/remixicon@3.2.0/fonts/remixicon.css" rel="stylesheet">

        <link rel="stylesheet" href="assets/css/styles.css">
        <link rel="stylesheet" href="assets/css/list.css">
    </head>
    <body>
        <%--<c:if test="${sessionScope.account==null}">--%>
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
            <div class="container-list">
                <h2>Student Information</h2>
                <a href="insert.jsp" class="button">Insert new</a>

                <form>
                    <table>
                        <thead>
                            <tr>
                                <th>RollNo</th>
                                <th>Name</th>
                                <th>Mark</th>
                                <th colspan="2">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${requestScope.data}" var="listStd">
                                <tr>
                                    <td>${listStd.rollNo}</td>
                                    <td>${listStd.name}</td>
                                    <td>${listStd.mark}</td>
                                    <td> <a href="edit?rollNo=${listStd.rollNo}" class="button">Edit</a></td>
                                    <td>
                                        <form class="delete" action="delete" method="post">
                                            <input type="hidden" name="rollNo" value="${listStd.rollNo}">
                                            <a href="#" onclick="deleteCustomer(this);" class="button">Delete</a>
                                        </form>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>

        <script>
            function deleteCustomer(e) {
                if (confirm("Are you sure?")) {
                    e.closest("form").submit();
                }
            }
        </script>
    <%--</c:if>--%>
</body>
</html>