
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="java.util.Properties" %>
<%@ page import="java.io.PrintWriter" %>

<%
    // Thông tin SMTP
    String host = "smtp.example.com";
    String port = "587";
    String username = "your-email@example.com";
    String password = "your-password";

    // Thông tin người gửi và người nhận
    String sender = "your-email@example.com";
    String recipient = request.getParameter("email");

    // Tạo đối tượng Session
    Properties props = new Properties();
    props.put("mail.smtp.host", host);
    props.put("mail.smtp.port", port);
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.starttls.enable", "true");
    Session session = Session.getInstance(props, new javax.mail.Authenticator() {
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(username, password);
        }
    });

    // Tạo đối tượng MimeMessage
    MimeMessage message = new MimeMessage(session);
    message.setFrom(new InternetAddress(sender));
    message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
    message.setSubject("Subject of the Email");
    message.setText("Content of the Email");

    // Gửi email
    Transport.send(message);

    // Gửi phản hồi về trình duyệt
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    out.println("<html><body>");
    out.println("<h1>Email sent successfully!</h1>");
    out.println("</body></html>");
%>