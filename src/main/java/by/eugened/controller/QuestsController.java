package by.eugened.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/quests")
public class QuestsController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        // Проверка на авторизацию
        if (session.getAttribute("username") == null) {
            resp.sendRedirect("/login");
            return;
        }
        req.getRequestDispatcher("/view/quests.jsp").forward(req, resp);
    }
}

