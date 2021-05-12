package helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import javax.servlet.http.HttpServlet;

public class FactoryProvider extends HttpServlet {

    public static SessionFactory sessionFactory;

    Configuration configuration = new Configuration();

    public static SessionFactory getSessionFactory ()
    {

        if (sessionFactory==null)
        {
            sessionFactory = new Configuration().configure().buildSessionFactory();

        }
        return sessionFactory;
    }



}
