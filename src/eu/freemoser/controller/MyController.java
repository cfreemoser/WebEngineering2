package eu.freemoser.controller;

import eu.freemoser.bean.CalculatorBean;
import eu.freemoser.bean.ErrorBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by freim on 14.06.2017.
 */
@WebServlet(name = "MyConroller", urlPatterns = {"/myconroller"})
public class MyController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String z1 = req.getParameter("zahl1");
        String z2 = req.getParameter("zahl2");
        String op = req.getParameter("operant");

        CalculatorBean bean = new CalculatorBean();


        if (z1 == null || z1.length() < 1) {
            sendError(req, resp, "Dein erster operant ist nicht vorhanden!!");
            return;
        } else if (z1.matches("[0-9]*")) {
            bean.setValue1(Integer.valueOf(z1));
        } else {
            sendError(req, resp, "Dein erster operant ist keine Zahl!");
            return;
        }

        if (z2 == null || z2.length() < 1) {
            sendError(req, resp, "Dein zweiter operant ist nicht vorhanden!!");
            return;
        } else if (z2.matches("[0-9]*")) {
            bean.setValue2(Integer.valueOf(z2));
        } else {
            sendError(req, resp, "Dein zweiter operant ist keine Zahl!");
            return;
        }

        if (op == null || op.length() < 1) {
            sendError(req, resp, "Deine operation ist nicht vorhanden!!");
            return;
        } else if (op.matches("[/ | % | '+' | '-' ]")) {
            if (bean.getValue2() == 0 && op.equals("/")) {
                sendError(req, resp, "Division durch null nicht erlaubt!");
                return;
            }
            bean.setOperator(op);
        } else {
            sendError(req, resp, "Unbekannter Operant!");
            return;
        }

        req.setAttribute("bean", bean);
        req.getRequestDispatcher("form.jsp").forward(req, resp);

    }

    private void sendError(HttpServletRequest req, HttpServletResponse resp, String s) throws IOException, ServletException {
        ErrorBean bean = new ErrorBean();
        bean.setError(s);
        req.setAttribute("errorBean", bean);
        req.getRequestDispatcher("form.jsp").forward(req, resp);
        System.out.println(req.hashCode());
    }

}
