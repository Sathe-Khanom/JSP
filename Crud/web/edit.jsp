<jsp:useBean class="model.Model" id="s"
             />

<%@page import="dao.Dao" %>
<jsp:setProperty name="s" property="*" />


<%
    int result = Dao.update(s);
    if (result > 0) {

        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("error.jsp");

    }
%>

