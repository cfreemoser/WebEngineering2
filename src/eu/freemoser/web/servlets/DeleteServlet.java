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

/**
 * Created by freim on 17.06.2017.
 */
@WebServlet(name = "delete", urlPatterns = "/delete")
public class DeleteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        AddressBean bean = new AddressBean();
        bean.setId(req.getParameter("id"));
        if (bean.delete()) {
            resp.sendRedirect("/list.jsp");
        } else {
            ErrorBean errorBean = new ErrorBean();
            errorBean.setReson("Oh dude! Sorry somehow I can not delete this shit -_-");
            req.setAttribute("error", bean);
            String nextJSP = "/ErrorPage.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
            dispatcher.forward(req, resp);
        }


    }
}
