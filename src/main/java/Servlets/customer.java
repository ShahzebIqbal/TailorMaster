package Servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;


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


        System.out.println("this line is working ");
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        out.println("<h1>Print : "+full_name+phone+front_pocket+side_pocket+collor_type+cloth_name+other_details+cuff+status+neck+chest+waist+shirt_length+half_shoulder+shoulder_width+arm_length+
                inseam+wrist+"</h1>");

    }
}
