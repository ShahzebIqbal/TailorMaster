package com.enities;


import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import java.util.List;

@Entity
public class User {

    @Id
    private int user_ID;
    private String user_name;
    private String user_email;
    private String user_password;
    private String user_address;

    @OneToMany(mappedBy = "user",cascade = CascadeType.ALL)
    private List<customer> customers;

    public User() {
        super();
    }

    public User(int user_ID, String user_name, String user_email, String user_password, String user_address, List<customer> customers) {
        this.user_ID = user_ID;
        this.user_name = user_name;
        this.user_email = user_email;
        this.user_password = user_password;
        this.user_address = user_address;
        this.customers = customers;
    }

    public int getUser_ID() {
        return user_ID;
    }

    public void setUser_ID(int user_ID) {
        this.user_ID = user_ID;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    public String getUser_password() {
        return user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public String getUser_address() {
        return user_address;
    }

    public void setUser_address(String user_address) {
        this.user_address = user_address;
    }

    public List<customer> getCustomers() {
        return customers;
    }

    public void setCustomers(List<customer> customers) {
        this.customers = customers;
    }
}
