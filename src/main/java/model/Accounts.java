package model;

public class Accounts {
    private int user_id;
    private String username;
    private String password;
    private String phone;
    private String email;
    private int acive;
    private int role_id;


    public Accounts() {
    }
    public Accounts(int user_id, String username, String password, String phone, String email, int acive, int role_id) {
        this.user_id = user_id;
        this.username = username;
        this.password = password;
        this.phone = phone;
        this.email = email;
        this.acive = acive;
        this.role_id = role_id;
    }
    public int getUser_id() {
        return user_id;
    }
    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public int getAcive() {
        return acive;
    }
    public void setAcive(int acive) {
        this.acive = acive;
    }
    public int getRole_id() {
        return role_id;
    }
    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    @Override
    public String toString() {
        return "Accounts{" +
                "user_id=" + user_id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", acive=" + acive +
                ", role_id=" + role_id +
                '}';
    }
}


