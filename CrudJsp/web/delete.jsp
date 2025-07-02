<jsp:useBean class="model.Employee" id="s"
/>

<%@page import="dao.EmployeeDao" %>
<jsp:setProperty name="s" property="*" />


<%
    EmployeeDao.deleteEmployee(s.getId());
    response.sendRedirect("index.jsp");
    %>
