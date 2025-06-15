<%@taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import ="model.Student" %>
<%@page import="dao.StudentDao" %>
<%@page import="java.util.*" %>

<%@include file="header.jsp" %>







<div class="container">
    
    <h1 class="text-primary text-center">All Student</h1>  
    
    <table class ="table table-striped">
        <thead> 
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Contact</th>
                <th>Action</th>
            </tr>>
        </thead>>
        
        <tbody>
            <c:forEach items="${list}" var="s">
                <tr>
                    <td></td>
                      <td></td>
                        <td></td>
                          <td></td>
                            <td></td>
                  
        
        
        
        
    </table>
    
    
    
    
    
    
    
    
    
</div>
