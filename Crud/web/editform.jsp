<%@page import="model.Model" %>
<%@page import="dao.Dao" %>


<%
    String id = request.getParameter("id");
    Model s = Dao.getById(Integer.parseInt(id));

%>



<%@include file="header.jsp" %>

<div class="container my-3">
    <div class="bg-success text-center">
        <h1 class="jumborton">Update Employee </h1>
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
                <label for="exampleInputDesignation" class="form-label">Designation</label>
                <input type="text" class="form-control" id="designation" name="designation" value="<%=s.getDesignation()%>" placeholder="">
            </div>        
        </div>
          
            <div class="row">
    
     <div class="col-md-6">
            <label for="exampleInputSalary" class="form-label">Salary</label>
            <input type="text" class="form-control" id="salary" name="salary" value="<%=s.getSalary()%>" placeholder="00000000">
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

