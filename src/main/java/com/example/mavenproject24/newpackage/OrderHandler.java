/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.mavenproject24.newpackage;
// OrderHandler.java (Singleton Class)
public class OrderHandler {
    private static OrderHandler instance;
    private String orderNumber;
    private String customerName;
    private String address;
    private String phoneNumber;
    private String destinationDetails;

    // Private constructor to prevent instantiation
    private OrderHandler() {}

    // Public method to provide access to the instance
    public static OrderHandler getInstance() {
        if (instance == null) {
            instance = new OrderHandler();
        }
        return instance;
    }

    // Getter and Setter methods for order details
    public String getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getDestinationDetails() {
        return destinationDetails;
    }

    public void setDestinationDetails(String destinationDetails) {
        this.destinationDetails = destinationDetails;
    }

    // Method to display the order details
    public String displayOrderDetails() {
        return "Order Number: " + orderNumber + "<br>" +
               "Customer Name: " + customerName + "<br>" +
               "Address: " + address + "<br>" +
               "Phone Number: " + phoneNumber + "<br>" +
               "Destination Details: " + destinationDetails + "<br>";
    }
}
