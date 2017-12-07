package ks.individual.lab.project.entity;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

/**
 * Created by Ostap on 20.11.2017.
 */
@Entity
public class Purchase {
    @Id
    @GeneratedValue
    private int id;
    private Date date;
    private double amount;

    @ManyToOne
    private User user;

    @ManyToMany
    @JoinTable(name = "purchase_commodity", joinColumns = @JoinColumn(name = "id_purchase"), inverseJoinColumns = @JoinColumn(name = "id_commodity"))
    private List<Commodity> commodityList;

    public Purchase() {
    }

    public Purchase(double amount, User user, List<Commodity> commodityList) {
        this.date = new Date();
        this.amount = amount;
        this.user = user;
        this.commodityList = commodityList;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Commodity> getCommodityList() {
        return commodityList;
    }

    public void setCommodityList(List<Commodity> commodityList) {
        this.commodityList = commodityList;
    }
}
