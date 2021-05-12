package helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import javax.servlet.http.HttpServlet;

public class FactoryProvider extends HttpServlet {

    public static SessionFactory factory;

    public static SessionFactory getFactory(){


        if (factory==null) {
            factory = new Configuration().configure().buildSessionFactory();
        }
        return factory;
    }
    public void closeFactory(){

        if (factory.isOpen())
        {
            factory.close();
        }
    }

}
