<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page isELIgnored="false" %>
<html>
    <head>
        <meta charset="utf-8">
        <link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css" rel="stylesheet">
        <link href="../static/css/reviews.css" rel="stylesheet">
        <link href="../static/css/general/header.css" rel="stylesheet">
        <title>Reviews</title>
    </head>
    <body>
        <header>
            <div class="container">
                <div class="menu">
                    <a href="/home" class="logo">Quest</a>

                    <ul class="navbar">
                        <li><a href="/home">Home</a></li>
                        <li><a href="/quests">Quests</a></li>
                        <li><a href="/reviews">Reviews</a></li>
                        <li><a href="/about">About</a></li>
                    </ul>

                    <div class="authorization
                        <c:choose>
                            <c:when test="${not empty sessionScope.username}">
                                logged-in
                            </c:when>
                            <c:otherwise>
                                logged-out
                            </c:otherwise>
                        </c:choose>">
                        <c:choose>
                            <c:when test="${not empty sessionScope.username}">
                                <span><i class="ri-user-line"></i>${sessionScope.username}</span>
                                <a href="/logout">Log Out</a>
                            </c:when>
                            <c:otherwise>
                                <a href="/login">Sign In</a>
                                <a href="/register">Registration</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </header>
        <section class="reviews-section">
            <div class="container">
                <h1>Reviews of Our Quests</h1>
                <p>We are proud that our quests bring a lot of positive emotions and unforgettable experiences. Check out the many reviews from our participants who have already experienced our adventures!</p>

                <div class="reviews">
                    <div class="review-card">
                        <img src="../static/images/reviews/review_1.jpg" alt="Review Image 1" class="review-image">
                        <h3 class="review-title">Amazing Adventure!</h3>
                        <p class="review-text">"It was a real adventure! My friends and I went through the quest and couldn’t stop laughing and feeling excited. The tasks were engaging, and the atmosphere was incredible!"</p>
                        <p class="review-author">Ivan, Quest Participant</p>
                    </div>

                    <div class="review-card">
                        <img src="../static/images/reviews/review_2.jpg" alt="Review Image 2" class="review-image">
                        <h3 class="review-title">A Wonderful Experience!</h3>
                        <p class="review-text">"We decided to do the quest as a team-building activity. It was challenging but fun! A great idea for an active break!"</p>
                        <p class="review-author">Anastasia, Quest Participant</p>
                    </div>

                    <div class="review-card">
                        <img src="../static/images/reviews/review_3.jpg" alt="Review Image 3" class="review-image">
                        <h3 class="review-title">Unforgettable Impressions!</h3>
                        <p class="review-text">"The experience left us with the brightest memories. We were completely amazed by the quest and, of course, how carefully everything was planned!"</p>
                        <p class="review-author">Maxim, Quest Participant</p>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
