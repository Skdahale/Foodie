package com.mycompany.foodi.entities;

public class Category {
    private String name;

    public Category(String name) {
        this.name = name;
    }

    public Category(int categoryId, String categoryTitle, String categoryDescription) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public String getName() {
        return name;
    }

    public static void main(String[] args) {
        Category category = new Category("Example Category");
        System.out.println(category.getName());
    }
}
