package dal;

import model.User;
import model.Role;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class conection extends JDBCconnection {
    public List<Role> getRoles() {
        List<Role> users = new ArrayList<>();
        String sql = "SELECT * FROM roles";
         try {
             PreparedStatement st = connection.prepareStatement(sql);
             ResultSet rs = st.executeQuery();
             while (rs.next()) {
                 Role user = new Role();
                 user.setRoleid(rs.getInt("role_id"));
                 user.setRolename(rs.getString("role_name"));
                 users.add(user);
             }

         } catch (Exception e) {
             throw new RuntimeException(e);
         }

        return users;
    }

    public List<User> users() {
        List<User> account = new ArrayList<>();
        String sql = "SELECT  user_name , password , role_id FROM materialmanagement.users;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User acc  = new User();
                acc.setUsername(rs.getString("user_name"));
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
        List<Role> users = con.getRoles();
        System.out.println(users);
    }




}
