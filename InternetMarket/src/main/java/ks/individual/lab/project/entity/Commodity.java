package ks.individual.lab.project.entity;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Ostap on 20.11.2017.
 */
@Entity
public class Commodity {
    @Id
    @GeneratedValue
    private int id;
    private String name;
    private String description;
    private double price;

    @ManyToMany
    @JoinTable(name = "purchase_commodity", joinColumns = @JoinColumn(name = "id_commodity"), inverseJoinColumns = @JoinColumn(name = "id_purchase"))
    private List<Purchase> purchaseList;

    @OneToMany(mappedBy = "commodity")
    private List<Review>reviewList;

    public Commodity() {
    }

    public Commodity(String name, String description, double price) {
        this.name = name;
        this.description = description;
        this.price = price;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public List<Purchase> getPurchaseList() {
        return purchaseList;
    }

    public void setPurchaseList(List<Purchase> purchaseList) {
        this.purchaseList = purchaseList;
    }


}
