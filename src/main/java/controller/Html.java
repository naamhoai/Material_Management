package controller;

import dal.conection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "Html", value = "/Html")
public class Html extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("user");
        String password = request.getParameter("pass");

        String mess = "";
        conection con = new conection();
        List<Accounts> acc = con.getAccount();
        if ( acc != null  ) {
            boolean vali = false;
            for (Accounts a : acc) {
                if (a.getUsername().equals(name) && a.getPassword().equals(password)) {
                    HttpSession session = request.getSession();
                    session.setAttribute("acc", a);
                    request.setAttribute("messa", a.getUsername());
                    request.setAttribute("messt", a.getRole_id());
                    vali = true;
                    break;
                }
            }
            if (vali) {
                request.getRequestDispatcher("Hom.jsp").forward(request, response);
            } else {
                mess = "Incorrect account or password";
                request.setAttribute("mess", mess);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }


        }

    }



    }


