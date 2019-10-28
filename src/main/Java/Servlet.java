import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import java.io.IOException;

@WebServlet("/servlet")
public class Servlet extends HttpServlet {

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        var cookies = request.getCookies();
        var cookie = cookies[0].getValue();

        var httpSession = request.getSession(false);


        var writer = response.getWriter();
        var x = request.getParameter("login");
        writer.println("<!DOCTYPE html>\n" +
                        "<html>\n" +
                        "    <head>\n" +
                        "        <title>Najmiejszy Elemęt</title>\n" +
                        "    </head>\n" +
                        "    <body>\n" +
                        "       <h1>" + cookie + "</h1>\n" +
                        "       <h1>" + httpSession + "</h1>\n" +
                        "    </body>\n" +
                        "</html>\n");
        response.addCookie(new Cookie("jwt", "placeholder"));
    }
}
