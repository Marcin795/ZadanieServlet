import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/")
public class IndexServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        var login = request.getParameter("login");
        var session = request.getSession(false);
        var reset = request.getParameter("reset");
        if("reset".equals(reset) && session != null) {
            session.invalidate();
            request.getSession().invalidate();
        }

        if(login != null && !login.isBlank()) {
            session = request.getSession();
        }

        if(session == null) {
            request.getRequestDispatcher("/WEB-INF/Home.jsp").include(request, response);
        } else {
            request.getRequestDispatcher("/WEB-INF/Min.jsp").include(request, response);
        }
    }
}
