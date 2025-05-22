package controller;

import dal.conection;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.User;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "settinglist", value = "/settinglist")
public class settinglist extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        conection con = new conection();
        List<User> list = con.SettingList();
        if(list != null){
            request.setAttribute("list", list);
        }else {
            request.setAttribute("mess", "No data");
        }

        request.getRequestDispatcher("SettingList.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
