package pxu.edu.vn.bai04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginForm
 */
@WebServlet("/LoginForm")
public class LoginForm extends HttpServlet {
	private static final String VALID_EMAIL = "Quocle300903@gmail.com";
    private static final String VALID_PASSWORD = "12345678";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String docType = "<!doctype html public \"-//w3c//dtd html4.0 " +

				"transitional//en\">\n";
        if (email.equals(VALID_EMAIL) && password.equals(VALID_PASSWORD)) {
            // Đăng nhập thành công
        	out.println(docType +

    				"<html>\n" + "<head></head>\n" + "<body bgcolor=\"#f0f0f0\">\n <h1 align=\"center\">Dang nhap thanh cong!</h1>\n"+"</body></html>");
        } else {
            // Đăng nhập không thành công
        	out.println(docType +

    				"<html>\n" + "<head></head>\n" + "<body bgcolor=\"red\">\n <h1 align=\"center\">Dang nhap khong thanh cong!</h1>\n"+"</body></html>");

        }
    }

}
