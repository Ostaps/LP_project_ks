package ks.individual.lab.project.dto;

import ks.individual.lab.project.entity.Commodity;

/**
 * Created by Ostap on 20.11.2017.
 */
public class CommodityDto {
    private String description;
    private String name;
    private double price;

    public CommodityDto() {
    }

    public CommodityDto(String description, String name, double price) {
        this.description = description;
        this.name = name;
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public static CommodityDto convertToDTO(Commodity commodity){
        return new CommodityDto(commodity.getDescription(), commodity.getName(), commodity.getPrice());
    }
}
