package Servlets;

import com.enities.User;
import helper.FactoryProvider;
import org.hibernate.Session;
import org.hibernate.Transaction;

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
   try {
            Session session = FactoryProvider.getFactory().openSession();

            User user = new User();

            user.setUser_ID(1);
            user.setUser_name(user_name);
            user.setUser_email(user_email);
            user.setUser_password(user_password);
            user.setUser_phone(user_phone);
            Transaction transaction = session.beginTransaction();

            session.save(user);

            transaction.commit();
            session.close();


        }catch (Exception ex)
        {
            ex.printStackTrace();
        }
    }


}
