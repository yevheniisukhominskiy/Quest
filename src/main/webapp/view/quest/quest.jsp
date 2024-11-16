<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page isELIgnored="false" %>
<html>
    <head>
        <meta charset="utf-8">
        <link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css" rel="stylesheet">
        <link href="../../static/css/general/header.css" rel="stylesheet">
        <link href="../../static/css/quest/quest.css" rel="stylesheet">
        <title>Quiz</title>
    </head>
    <body>
        <header>
            <div class="container">
                <div class="menu">
                    <a href="#" class="logo">Quest</a>

                    <ul class="navbar">
                        <li><a href="/home" class="active">Home</a></li>
                        <li><a href="/quests">Quests</a></li>
                        <li><a href="/reviews">Reviews</a></li>
                        <li><a href="/about">About</a></li>
                    </ul>

                    <div class="authorization">
                        <a href="#">Sign In</a>
                        <a href="#">Registration</a>
                    </div>
                </div>
            </div>
        </header>
        <section>
            <div class="container">
                <c:if test="${not empty quest}">
                    <h2 class="part_label">${quest.title}</h2>
                </c:if>
                <div class="question">
                    <c:if test="${not empty question}">
                        <h2 class="label">${question.question}</h2>
                        <form action="" method="post">
                            <input type="hidden" name="id" value="${question.id}">
                            <c:forEach var="option" items="${question.options}">
                                <div class="answers">
                                    <input type="radio" id="option${option.id}" name="answer" value="${option.id}" required>
                                    <label for="option${option.id}">${option.text}</label>
                                </div>
                            </c:forEach>
                            <button class="button" type="submit">Відповісти</button>
                        </form>
                    </c:if>
                </div>
            </div>
        </section>
        <script src="../../static/js/header.js"></script>
    </body>
</html>
