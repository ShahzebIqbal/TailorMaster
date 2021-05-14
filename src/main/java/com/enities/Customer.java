package com.enities;

import javax.persistence.*;
import java.util.Date;
import java.util.Random;

@Entity
public class Customer {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int    ID;
    private String full_name;
    private String phone;
    private String front_pocket;
    private String side_pocket;
    private String collor_type;
    private String cloth_name;
    private String other_details;
    private String cuff;
    private String status;
    private Date   received_date;
    private Date   delivery_date;
    private float neck;
    private float chest;
    private float waist;
    private float shirt_length;
    private float half_shoulder;
    private float shoulder_width;
    private float arm_length;
    private float inseam;
    private float wrist;

    @ManyToOne
    private User user;

    public Customer() {
        super();
    }

    public Customer(String full_name, String phone, String front_pocket, String side_pocket, String collor_type, String cloth_name, String other_details, String cuff, String status, Date received_date, Date delivery_date, float neck, float chest, float waist, float shirt_length, float half_shoulder, float shoulder_width, float arm_length, float inseam, float wrist, User user) {

        this.ID                 = new Random().nextInt(99999999);
        this.full_name          = full_name;
        this.phone              = phone;
        this.front_pocket       = front_pocket;
        this.side_pocket        = side_pocket;
        this.collor_type        = collor_type;
        this.cloth_name         = cloth_name;
        this.other_details      = other_details;
        this.cuff               = cuff;
        this.status             = status;
        this.received_date      = received_date;
        this.delivery_date      = delivery_date;
        this.neck               = neck;
        this.chest              = chest;
        this.waist              = waist;
        this.shirt_length       = shirt_length;
        this.half_shoulder      = half_shoulder;
        this.shoulder_width     = shoulder_width;
        this.arm_length         = arm_length;
        this.inseam             = inseam;
        this.wrist              = wrist;
        this.user               = user;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getFront_pocket() {
        return front_pocket;
    }

    public void setFront_pocket(String front_pocket) {
        this.front_pocket = front_pocket;
    }

    public String getSide_pocket() {
        return side_pocket;
    }

    public void setSide_pocket(String side_pocket) {
        this.side_pocket = side_pocket;
    }

    public String getCollor_type() {
        return collor_type;
    }

    public void setCollor_type(String collor_type) {
        this.collor_type = collor_type;
    }

    public String getCloth_name() {
        return cloth_name;
    }

    public void setCloth_name(String cloth_name) {
        this.cloth_name = cloth_name;
    }

    public String getOther_details() {
        return other_details;
    }

    public void setOther_details(String other_details) {
        this.other_details = other_details;
    }

    public String getCuff() {
        return cuff;
    }

    public void setCuff(String cuff) {
        this.cuff = cuff;
    }

    public Date getReceived_date() {
        return received_date;
    }

    public void setReceived_date(Date received_date) {
        this.received_date = received_date;
    }

    public Date getDelivery_date() {
        return delivery_date;
    }

    public void setDelivery_date(Date delivery_date) {
        this.delivery_date = delivery_date;
    }

    public float getNeck() {
        return neck;
    }

    public void setNeck(float neck) {
        this.neck = neck;
    }

    public float getChest() {
        return chest;
    }

    public void setChest(float chest) {
        this.chest = chest;
    }

    public float getWaist() {
        return waist;
    }

    public void setWaist(float waist) {
        this.waist = waist;
    }

    public float getShirt_length() {
        return shirt_length;
    }

    public void setShirt_length(float shirt_length) {
        this.shirt_length = shirt_length;
    }

    public float getHalf_shoulder() {
        return half_shoulder;
    }

    public void setHalf_shoulder(float half_shoulder) {
        this.half_shoulder = half_shoulder;
    }

    public float getShoulder_width() {
        return shoulder_width;
    }

    public void setShoulder_width(float shoulder_width) {
        this.shoulder_width = shoulder_width;
    }

    public float getArm_length() {
        return arm_length;
    }

    public void setArm_length(float arm_length) {
        this.arm_length = arm_length;
    }

    public float getInseam() {
        return inseam;
    }

    public void setInseam(float inseam) {
        this.inseam = inseam;
    }

    public float getWrist() {
        return wrist;
    }

    public void setWrist(float wrist) {
        this.wrist = wrist;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
