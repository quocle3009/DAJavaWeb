package pxu.edu.vn.bai03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FormProcessing extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        String textFieldValue = request.getParameter("text-field");
        String hiddenFieldValue = request.getParameter("hidden-field");
        String checkboxValue = request.getParameter("checkbox");
        String listboxValue = request.getParameter("listbox");
        String radioValue = request.getParameter("radio");
        
        out.println("<html><head><title>Form Processing Result</title>");
        out.println("<style>body { font-family: Arial, sans-serif; margin: 20px; }</style>");
        out.println("</head><body>");
        out.println("<h2>Form Processing Result:</h2>");
        out.println("<p>Text Field Value: " + textFieldValue + "</p>");
        out.println("<p>Hidden Field Value: " + hiddenFieldValue + "</p>");
        out.println("<p>Check Box Value: " + checkboxValue + "</p>");
        out.println("<p>List Box Value: " + listboxValue + "</p>");
        out.println("<p>Radio Button Value: " + radioValue + "</p>");
        out.println("</body></html>");
    }
}
