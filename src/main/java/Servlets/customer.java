package Servlets;

import com.enities.Customer;
import com.enities.User;
import helper.FactoryProvider;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


public class customer extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        String full_name = req.getParameter("c_name");
        String phone = req.getParameter("c_phone");
        String front_pocket = req.getParameter("c_f_pocket");
        String side_pocket = req.getParameter("c_s_pocket");
        String collor_type = req.getParameter("c_collor_type");
        String cloth_name = req.getParameter("c_cloth_name");
        String other_details = req.getParameter("c_text_area");
        String cuff = req.getParameter("c_cuff");
        String status = req.getParameter("c_order_status");
        String neck = req.getParameter("c_neck");
        String chest = req.getParameter("c_chest");
        String waist = req.getParameter("c_waist");
        String shirt_length = req.getParameter("c_shirt");
        String half_shoulder = req.getParameter("c_shoulder-half");
        String shoulder_width = req.getParameter("c_shoulder");
        String arm_length = req.getParameter("c_arm");
        String inseam = req.getParameter("c_inseam");
        String wrist = req.getParameter("c_wrist");





        try {
            String userID = null;
            Cookie[] cookies = req.getCookies();

            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("uid")) {
                        userID = cookie.getValue();
                    }
                }
            }


            Session session = FactoryProvider.getFactory().openSession();

            List<Customer> list = new ArrayList();

            Customer customer = new Customer();

            User user = new User();

            user.setUser_ID(Integer.parseInt(userID));
            customer.setFull_name(full_name);
            customer.setPhone(phone);
            customer.setFront_pocket(front_pocket);
            customer.setSide_pocket(side_pocket);
            customer.setCollor_type(collor_type);
            customer.setOther_details(other_details);
            customer.setCloth_name(cloth_name);
            customer.setCuff(cuff);
            customer.setStatus(status);
            customer.setNeck(Float.parseFloat(neck));
            customer.setChest(Float.parseFloat(chest));
            customer.setWaist(Float.parseFloat(waist));
            customer.setShirt_length(Float.parseFloat(shirt_length));
            customer.setHalf_shoulder(Float.parseFloat(half_shoulder));
            customer.setShoulder_width(Float.parseFloat(shoulder_width));
            customer.setArm_length(Float.parseFloat(arm_length));
            customer.setInseam(Float.parseFloat(inseam));
            customer.setWrist(Float.parseFloat(wrist));

            list.add(customer);
            user.setCustomers(list);

            Transaction transaction = session.beginTransaction();

            session.save(user);

            transaction.commit();
            session.close();

        }catch (Exception e){
            e.printStackTrace();
        }


    }
}
