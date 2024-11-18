package by.eugened.controller;

import by.eugened.model.Option;
import by.eugened.model.Quest;
import by.eugened.model.Question;
import by.eugened.support.QuestLoader;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet("/quest")
public class QuestController extends HttpServlet {
    // TODO: Add session
    private Quest quest;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        try {
            String filePath = req.getParameter("filePath");
            QuestLoader loader = new QuestLoader();
            quest = loader.loadQuest("C:/Users/Eugene/IdeaProjects/Quest/src/main/" + filePath);

            if (session.getAttribute("startTime") == null) {
                session.setAttribute("startTime", System.currentTimeMillis());
            }
        } catch (IOException e) {
            throw new ServletException("Failed to load quest data", e);
        }

        int id = Integer.parseInt(req.getParameter("id"));
        Question question = findQuestionById(id);

        req.setAttribute("quest", quest);
        req.setAttribute("question", question);
        req.getRequestDispatcher("/view/quest/quest.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Question question = findQuestionById(id);
        List<Option> options = question.getOptions();
        String userAnswerId = req.getParameter("answer");

        Integer nextQuestionId = null;
        for (Option option : options) {
            if (option.getId() == Integer.parseInt(userAnswerId)) {
                nextQuestionId = option.getNextQuestionId();
                break;
            }
        }
        if (nextQuestionId != null) {
            question = findQuestionById(nextQuestionId);
            req.setAttribute("quest", quest);
            req.setAttribute("question", question);
            req.getRequestDispatcher("/view/quest/quest.jsp").forward(req, resp);
        } else {
            HttpSession session = req.getSession();
            Long startTime = (Long) session.getAttribute("startTime");

            if (startTime != null) {
                long elapsedTime = System.currentTimeMillis() - startTime;
                long elapsedSeconds = elapsedTime / 1000;
                req.setAttribute("elapsedTime", elapsedSeconds);
                session.removeAttribute("startTime");
            }
            req.getRequestDispatcher("/view/quest/result.jsp").forward(req, resp);
        }

    }

    private Question findQuestionById(int id) {
        return quest.getQuestions().stream()
                .filter(q -> q.getId() == id)
                .findFirst()
                .orElse(null);
    }
}
