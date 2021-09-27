package com.hr.shop.entity;

import java.util.Date;

/**
 * @author mxxxl
 * @date 2021/1/8
 */
public class Article {

    private int id;
    private String typeCode;
    private String title;
    private String supplier;
    private double price;
    private double discount;
    private String locality;
    private Date putawayDate;
    private int storage;
    private String image;
    private String description;
    private Date createDate;
    private boolean disabled;

    public Article() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTypeCode() {
        return typeCode;
    }

    public void setTypeCode(String typeCode) {
        this.typeCode = typeCode;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSupplier() {
        return supplier;
    }

    public void setSupplier(String supplier) {
        this.supplier = supplier;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public String getLocality() {
        return locality;
    }

    public void setLocality(String locality) {
        this.locality = locality;
    }

    public Date getPutawayDate() {
        return putawayDate;
    }

    public void setPutawayDate(Date putawayDate) {
        this.putawayDate = putawayDate;
    }

    public int getStorage() {
        return storage;
    }

    public void setStorage(int storage) {
        this.storage = storage;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public boolean isDisabled() {
        return disabled;
    }

    public void setDisabled(boolean disabled) {
        this.disabled = disabled;
    }

    @Override
    public String toString() {
        return "Article{" +
                "id=" + id +
                ", typeCode='" + typeCode + '\'' +
                ", title='" + title + '\'' +
                ", supplier='" + supplier + '\'' +
                ", price=" + price +
                ", discount=" + discount +
                ", locality='" + locality + '\'' +
                ", putawayDate=" + putawayDate +
                ", storage=" + storage +
                ", image='" + image + '\'' +
                ", description='" + description + '\'' +
                ", createDate=" + createDate +
                ", disabled=" + disabled +
                '}';
    }
}