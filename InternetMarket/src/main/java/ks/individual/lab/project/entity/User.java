package ks.individual.lab.project.entity;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Ostap on 20.11.2017.
 */
@Entity
public class User {
    @Id
    @GeneratedValue
    private int id;
    private String name;
    private String secondName;
    private String email;
    private String phone;
    private String password;

    @ManyToOne
    private Role role;

    @OneToMany(mappedBy = "user")
    private List<Purchase> purchaseList;
    @OneToMany(mappedBy = "user")
    private List<Review> reviewList;

    public User() {
    }

    public User(String name, String secondName, String email, String phone, String password) {
        this.name = name;
        this.secondName = secondName;
        this.email = email;
        this.phone = phone;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSecondName() {
        return secondName;
    }

    public void setSecondName(String secondName) {
        this.secondName = secondName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<Purchase> getPurchaseList() {
        return purchaseList;
    }

    public void setPurchaseList(List<Purchase> purchaseList) {
        this.purchaseList = purchaseList;
    }

    public List<Review> getReviewList() {
        return reviewList;
    }

    public void setReviewList(List<Review> reviewList) {
        this.reviewList = reviewList;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }
}
