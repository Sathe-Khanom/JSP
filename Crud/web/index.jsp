<%@taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import ="model.Model" %>
<%@page import="dao.Dao" %>
<%@page import="java.util.*" %>

<%@include file="header.jsp" %>

<%
    List<Model> list = Dao.getAllEmployee();
    request.setAttribute("list", list);
    
%>





<div class="container">

    <h1 class="text-success text-center">All </h1>  

    <table class ="table table-striped">
        <thead> 
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Contact</th>
                <th>Gender</th>
                <th>Salary</th>
                <th>Action</th>

            </tr>
        </thead>

        <tbody>
            <c:forEach items="${list}" var="s">
                <tr>
                    <td>${s.getId()}</td>
                    <td>${s.getName()}</td>
                    <td>${s.getEmail()}</td>
                    <td>${s.getContact()}</td>
                    <td>${s.getGender()}</td>
                    <td>${s.getSalary()}</td> 
                    <td>
                        <a href="editform.jsp?id=${s.id}" class="btn btn-primary">Edit</a> 
                        <a href="delete.jsp?id=${s.id}" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this student ');">Delete</a>                            </td>


                    </td>

                </tr>
            </c:forEach>
                
        </tbody>

        </table>
    
    </div>


<%@include file="footer.jsp" %>
