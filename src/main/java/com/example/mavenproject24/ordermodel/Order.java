/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.mavenproject24.ordermodel;

public class Order {
    private int orderId;
    private int customerId;
    private String customerName;
    private double totalAmount;
    private double tax;
    private double discount;
    private double finalAmount;

    // Constructor
    public Order(int orderId, int customerId, String customerName, double totalAmount, double tax, double discount) {
        this.orderId = orderId;
        this.customerId = customerId;
        this.customerName = customerName;
        this.totalAmount = totalAmount;
        this.tax = tax;
        this.discount = discount;
        this.finalAmount = calculateFinalAmount();
    }

    // Getters and Setters
    public int getOrderId() { return orderId; }
    public int getCustomerId() { return customerId; }
    public String getCustomerName() { return customerName; }
    public double getTotalAmount() { return totalAmount; }
    public double getTax() { return tax; }
    public double getDiscount() { return discount; }
    public double getFinalAmount() { return finalAmount; }

    private double calculateFinalAmount() {
        return (totalAmount + tax) - discount;
    }
}

