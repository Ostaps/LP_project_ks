package ks.individual.lab.project.dto;

import ks.individual.lab.project.entity.User;

/**
 * Created by Ostap on 20.11.2017.
 */
public class UserDto {
    private String name;
    private String secondName;
    private String email;
    private String phone;

    public UserDto() {
    }

    public UserDto(String name, String secondName, String email, String phone) {
        this.name = name;
        this.secondName = secondName;
        this.email = email;
        this.phone = phone;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSecondName() {
        return secondName;
    }

    public void setSecondName(String secondName) {
        this.secondName = secondName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public static UserDto convertToDTO(User user){
        return new UserDto(user.getName(), user.getSecondName(), user.getEmail(), user.getPhone());
    }

}
