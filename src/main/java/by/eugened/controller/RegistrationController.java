package by.eugened.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/register")
public class RegistrationController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/view/authorization/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        try {
            // Загружаем драйвер
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Подключаемся к базе данных
            try (Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/questsdb",
                    "root",
                    "QazxcdewS228")) {

                // Запрос на вставку данных
                String query = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
                try (PreparedStatement ps = connection.prepareStatement(query)) {
                    ps.setString(1, userName);
                    ps.setString(2, email);
                    ps.setString(3, password);
                    ps.executeUpdate();
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("MySQL Driver not found!", e);
        }

        resp.sendRedirect("/login");
    }
}
