/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.mavenproject24.CarDAOSingleton;

import com.example.mavenproject24.carConnection.DatabaseConnection;
import com.example.mavenproject24.carmodel.Car;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CarDAO {
    private Connection conn;

    public CarDAO() {
        conn = DatabaseConnection.getInstance().getConnection();
    }

    public void addCar(String brand, String model, int year) {
        try {
            String sql = "INSERT INTO Cars (brand, model, year) VALUES (?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, brand);
            stmt.setString(2, model);
            stmt.setInt(3, year);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Car> getAllCars() {
        List<Car> cars = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Cars";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                cars.add(new Car(rs.getInt("id"), rs.getString("brand"), rs.getString("model"), rs.getInt("year")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cars;
    }
}
