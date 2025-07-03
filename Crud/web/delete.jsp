<jsp:useBean class="model.Model" id="s"
/>

<%@page import="dao.Dao" %>
<jsp:setProperty name="s" property="*" />


<%
    Dao.delete(s.getId());
    response.sendRedirect("index.jsp");
    %>

