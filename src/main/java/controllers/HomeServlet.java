package controllers;

import models.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by root on 05.10.16.
 */
public class HomeServlet extends HttpServlet {

    private Integer status;

    @Override
    public void init() throws ServletException {
        status = Integer.parseInt(getServletConfig().getInitParameter("param1"));
        System.out.println(status + " init выполняется первым");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // сюда переходит из формы методом POST
        //http://localhost:8080/MyWebApp/home.jsp
        // переход по форварду
        int a = Integer.parseInt(request.getParameter("a"));
        int b = Integer.parseInt(request.getParameter("b"));
        int res = a + b;
        request.setAttribute("res", res);
        RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/views/post.jsp");
        requestDispatcher.forward(request, response); // данные можно передать на вьюшку

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // сессия
        HttpSession session = request.getSession();
        session.setAttribute("fire", 1);
        //session.removeAttribute("fire"); // удалить из сессии

        String str = (String) session.getAttribute("fire");




        // как получить данные из вьюшки (jsp)
        int a = Integer.parseInt(request.getParameter("a"));
        int b = Integer.parseInt(request.getParameter("b"));
        int res = a + b;
        request.setAttribute("res", res);


        // как отправить данные из сервлета на вьюшку
        // т.к. переход на home.jsp, туда данные и передадутся
        User user = new User();
        user.setFirstName("Harley");
        user.setLastName("Queen");
        user.setAge(26);
        request.setAttribute("user", user);

        request.setAttribute("p1", "First param");
        request.setAttribute("p2", "Second param");




        //http://localhost:8080/MyWebApp/home.jsp
        // переход по форварду
        RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/views/home.jsp");
        requestDispatcher.forward(request, response); // данные можно передать на вьюшку
    }
}
