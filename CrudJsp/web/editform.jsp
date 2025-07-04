<%@page import="model.Employee" %>
<%@page import="dao.EmployeeDao" %>


<%
    String id = request.getParameter("id");
    Employee s = EmployeeDao.getById(Integer.parseInt(id));

%>



<%@include file="header.jsp" %>

<div class="container my-3">
    <div class="bg-success text-center">
        <h1 class="jumborton">Update Student</h1>
    </div>
    <!--    start form-->
    <form action="edit.jsp"  method="post">
        <input type="hidden" name="id" value="<%=s.getId()%>" />

        <div class="row">
            <div class="col-md-6">
                <label for="exampleInputEmail1" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" name="name" value="<%=s.getName()%>" placeholder="Full Name">
            </div>

            <div class="col-md-6">
                <label for="exampleInputEmail1" class="form-label">Email</label>
                <input type="text" class="form-control" id="email" name="email" value="<%=s.getEmail()%>" placeholder="example@gmail.com">
            </div>        
        </div>
          
            <div class="row">
    <div class="col-md-6">
        <label for="exampleInputEmail1" class="form-label">Contact Number</label>
        <input type="text" class="form-control" id="contact" name="contact" value="<%=s.getContact()%>" placeholder="+880159325884">
    </div>
     <div class="col-md-6">
            <label for="exampleInputSalary" class="form-label">Salary</label>
            <input type="text" class="form-control" id="salary" name="salary" value="<%=s.getSalary()%>" placeholder="00000000">
        </div>  

</div>
        
    <div class="row">
<div class="col-md-6">
    <label for="exampleInputGender" class="form-label">Gender</label>
    <div class="form-check">
        <input class="form-check-input" type="radio" value="Male" name="gender" id="flexRadioDefault1"
               <%= "Male".equals(s.getGender()) ? "checked" : ""%>>
        <label class="form-check-label" for="flexRadioDefault1">Male</label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="radio" value="Female" name="gender" id="flexRadioDefault2"
               <%= "Female".equals(s.getGender()) ? "checked" : ""%>>
        <label class="form-check-label" for="flexRadioDefault2">Female</label>
    </div>
</div>        
</div>
        
        
</div>

<div class="row mt-3 text-center">
    <div class="col-md-6">
        <button type="submit" class="btn btn-success text-center" >Update</button>

    </div>

    <div class="col-md-6">
        <button type="reset" class="btn btn-danger text-center" >Reset</button>

    </div>
</div>
</form>

<!--end form    -->
</div>


<%@include file="footer.jsp" %>
