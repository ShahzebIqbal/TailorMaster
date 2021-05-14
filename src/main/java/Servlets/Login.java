package Servlets;

import com.enities.User;
import helper.FactoryProvider;
import org.hibernate.Session;
import org.hibernate.query.Query;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        String login_password = req.getParameter("login_password");
        String login_email = req.getParameter("login_email");

        Session session = FactoryProvider.getFactory().openSession();
        Query query = session.createQuery("from User where user_email =: x");

        query.setParameter("x",login_email);
        User user =(User) query.uniqueResult();


        System.out.println(user.getUser_email());
        System.out.println(user.getUser_password());


        if (login_password.equals(user.getUser_password()) && login_email.equals(user.getUser_email()))
        {
            Cookie cookie = new Cookie("uid",String.valueOf(user.getUser_ID()));
            resp.addCookie(cookie);
            resp.sendRedirect("home.jsp");
            session.close();
        }else
        {
            resp.sendRedirect("index.jsp");
            session.close();
        }


    }
}
