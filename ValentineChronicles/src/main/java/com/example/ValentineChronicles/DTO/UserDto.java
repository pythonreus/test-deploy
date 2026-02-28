package com.example.ValentineChronicles.DTO;

public class UserDto {
    private String name;
    private String email;
    private int Age;

    public UserDto(){

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getAge() {
        return Age;
    }

    public void setAge(int age) {
        Age = age;
    }

    @Override
    public String toString() {
        return "UserDto{name='" + name + " "+  email + "', age=" + Age + "}";
    }
}
