package eu.freemoser.duda;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by freim on 10.06.2017.
 */

@WebServlet(urlPatterns = "/*")
public class NameServlet extends HttpServlet {


    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String parm = req.getParameter("name");
        String name = parm == null ? "Du Da" : parm;

        resp.setStatus(200);

        PrintWriter writer = resp.getWriter();
        writer.println("<h1> Hallo " + name + "!</h1>");
        writer.println("<form>");
        writer.println("Wie ist dein name? </br>");
        writer.println("<input type=\"text\" name=\"name\" /> </br> ");
        writer.println("<input type=\"submit\" value=\"sag hallo\" />");
        writer.println("</form>");

    }
}
