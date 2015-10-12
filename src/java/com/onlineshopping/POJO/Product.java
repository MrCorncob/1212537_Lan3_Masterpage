/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.onlineshopping.POJO;
import java.io.Serializable;
import java.text.DecimalFormat;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 *
 * @author Corncob
 */
@Entity
@Table(name="Product")
public class Product implements Serializable {
    
    @Id
    private long id;
    private long manufacture;
    private long os;
    private String name;
    private String color;
    private float screensize;
    private long price;
    private String description;

    /**
     * @return the id
     */
    public long getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(long id) {
        this.id = id;
    }

    /**
     * @return the manufacture
     */
    public long getManufacture() {
        return manufacture;
    }

    /**
     * @param manufacture the manufacture to set
     */
    public void setManufacture(long manufacture) {
        this.manufacture = manufacture;
    }

    /**
     * @return the os
     */
    public long getOs() {
        return os;
    }

    /**
     * @param os the os to set
     */
    public void setOs(long os) {
        this.os = os;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the color
     */
    public String getColor() {
        return color;
    }

    /**
     * @param color the color to set
     */
    public void setColor(String color) {
        this.color = color;
    }

    /**
     * @return the screensize
     */
    public float getScreensize() {
        return screensize;
    }

    /**
     * @param screensize the screensize to set
     */
    public void setScreensize(float screensize) {
        this.screensize = screensize;
    }

    /**
     * @return the price
     */
    public long getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(long price) {
        this.price = price;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }
    
    public String getPriceFormat()
    {
        DecimalFormat formatter = new DecimalFormat("###,###,###.##");
        String result = formatter.format(this.price) + " VNĐ";
        return result;
    }
}
