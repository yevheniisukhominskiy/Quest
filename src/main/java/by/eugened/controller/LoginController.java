package by.eugened.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.*;

@WebServlet("/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/view/authorization/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        try {
            // Загружаем драйвер
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Устанавливаем соединение
            try (Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/questsdb", "root", "QazxcdewS228")) {

                String query = "SELECT * FROM users WHERE username = ?";
                try (PreparedStatement statement = connection.prepareStatement(query)) {
                    // Устанавливаем значение параметра
                    statement.setString(1, username);

                    // Выполняем запрос
                    try (ResultSet resultSet = statement.executeQuery()) {
                        if (resultSet.next()) {
                            String storedPassword = resultSet.getString("password");
                            // Проверяем пароль
                            if (storedPassword.equals(password)) {
                                // Авторизация успешна — создаем сессию
                                HttpSession session = req.getSession();
                                session.setAttribute("username", username);
                                resp.sendRedirect("/quests");
                            } else {
                                // Неверный пароль
                                resp.sendRedirect("/login?error=invalid_password");
                            }
                        } else {
                            // Пользователь не найден
                            resp.sendRedirect("/login?error=user_not_found");
                        }
                    }
                }
            }
        } catch (ClassNotFoundException e) {
            // Логируем отсутствие драйвера
            e.printStackTrace();
            resp.sendRedirect("/error?message=driver_not_found");
        } catch (SQLException e) {
            // Логируем ошибку работы с базой данных
            e.printStackTrace();
            resp.sendRedirect("/error");
        }
    }
}
