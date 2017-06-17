package eu.freemoser.web.servlets;

import eu.freemoser.web.beans.AddressBean;
import eu.freemoser.web.beans.ErrorBean;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Locale;

/**
 * Created by freim on 17.06.2017.
 */
@WebServlet(name = "Save", urlPatterns = "/save")
public class SaveServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        AddressBean bean = new AddressBean();
        bean.setId(req.getParameter("id"));
        bean.setChristanname(req.getParameter("christianname"));
        bean.setName(req.getParameter("lastname"));
        bean.setStreet(req.getParameter("street"));
        bean.setNumber(Integer.valueOf(req.getParameter("number")));
        bean.setCity(req.getParameter("city"));
        bean.setPostcode(req.getParameter("postcode"));
        bean.setCountry(req.getParameter("country"));
        bean.setEmail(req.getParameter("email"));
        bean.setPhone(req.getParameter("phone"));
        bean.setMobile(req.getParameter("mobile"));
        Locale l = new Locale("en", "US");
        DateTimeFormatter f = DateTimeFormatter.ofPattern("d MMMM, uuuu", l);
        bean.setBithdate(LocalDate.parse(req.getParameter("birthdate"), f));
        if (bean.save()) {
            resp.sendRedirect("/AddressDetail.jsp?id=" + bean.getId());
        } else {
            ErrorBean errorBean = new ErrorBean();
            errorBean.setReson("Oh dude! I was not able to perform this Action");
            req.setAttribute("error", bean);
            String nextJSP = "/ErrorPage.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
            dispatcher.forward(req, resp);
        }
    }
}
