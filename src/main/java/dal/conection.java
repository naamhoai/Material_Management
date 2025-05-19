package dal;

import model.*;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class conection extends JDBCconnection {
    public List<User> getUsers() {
        List<User> users = new ArrayList<>();
        String sql = "SELECT * FROM roles";
         try {
             PreparedStatement st = connection.prepareStatement(sql);
             ResultSet rs = st.executeQuery();
             while (rs.next()) {
                 User user = new User();
                 user.setRoleid(rs.getInt("role_id"));
                 user.setRolename(rs.getString("role_name"));
                 users.add(user);
             }

         } catch (Exception e) {
             throw new RuntimeException(e);
         }

        return users;
    }

    public List<Accounts> getAccount() {
        List<Accounts> account = new ArrayList<>();
        String sql = "SELECT username,password,role_id FROM quanlyvattu.users";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Accounts acc  = new Accounts();
                acc.setUsername(rs.getString("username"));
                acc.setPassword(rs.getString("password"));
                acc.setRole_id(rs.getInt("role_id"));
                account.add(acc);

            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return account;
    }




    public static void main(String[] args) {
        conection con = new conection();
        List<Accounts> users = con.getAccount();
        System.out.println(users);
    }




}
