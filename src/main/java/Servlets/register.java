package Servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class register extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        String user_name = req.getParameter("user_name");
        String user_phone = req.getParameter("user_phone");
        String user_email = req.getParameter("user_email");
        String user_password = req.getParameter("user_password");

        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.println("<h1> USER NAME : " +user_name+" USER PHONE: " +
                user_phone+" USER EMAIL : " +
                user_email+" USER PASSWORD : " +
                user_password+"</h1>");

    }
}
