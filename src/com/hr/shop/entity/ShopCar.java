package com.hr.shop.entity;

/**
 * @author mxxxl
 * @date 2021/1/8
 */
public class ShopCar {

    private int id;
    private int articleId;
    private int buyNum;
    private int userId;

    /**
     * 扩充外键字段 用于界面显示
     */
    private String image;
    private String title;
    private double price;
    private double discount;
    private int storage;

    public ShopCar() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getArticleId() {
        return articleId;
    }

    public void setArticleId(int articleId) {
        this.articleId = articleId;
    }

    public int getBuyNum() {
        return buyNum;
    }

    public void setBuyNum(int buyNum) {
        this.buyNum = buyNum;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
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

    public int getStorage() {
        return storage;
    }

    public void setStorage(int storage) {
        this.storage = storage;
    }

    @Override
    public String toString() {
        return "ShopCar{" +
                "id=" + id +
                ", articleId=" + articleId +
                ", buyNum=" + buyNum +
                ", userId=" + userId +
                ", image='" + image + '\'' +
                ", title='" + title + '\'' +
                ", price=" + price +
                ", discount=" + discount +
                ", storage=" + storage +
                '}';
    }
}
