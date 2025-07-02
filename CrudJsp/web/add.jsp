<jsp:useBean class="model.Employee" id="s"
/>

<%@page import="dao.EmployeeDao" %>
<jsp:setProperty name="s" property="*" />


<%
    int result = EmployeeDao.saveEmployee(s);
    if(result > 0){

response.sendRedirect("index.jsp");
}
else{
  response.sendRedirect("error.jsp");
    
    }
    %>
