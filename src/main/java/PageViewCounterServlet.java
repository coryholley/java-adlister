import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="PageViewCounterServlet", urlPatterns = "/count")
public class PageViewCounterServlet extends HttpServlet {
    private int counter = 0;
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        counter += 1;
        res.getWriter().println("<h1>The count is " +counter+ ".</h1>");
        String reset = req.getParameter("reset");

        if (reset.equalsIgnoreCase("reset")) {
            counter = 0;
        }
    }
}
