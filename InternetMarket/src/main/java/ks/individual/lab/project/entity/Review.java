package ks.individual.lab.project.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import java.util.Date;

/**
 * Created by Ostap on 20.11.2017.
 */
@Entity
public class Review {
    @Id
    @GeneratedValue
    private int id;
    private String text;
    private Date date;

    @ManyToOne
    private User user;

    @ManyToOne
    private Commodity commodity;

    public Review() {
    }

    public Review(String text, User user) {
        this.text = text;
        this.user = user;
        this.date = new Date();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Commodity getCommodity() {
        return commodity;
    }

    public void setCommodity(Commodity commodity) {
        this.commodity = commodity;
    }
}
