<%@include file="header.jsp" %>

<div  class="container my-3">
    
    <div class="bg-secondary text-center">  
        <h1 class="jumborton">Add Employee</h1>
    
  </div>
    <!--start form-->
    
     <form action="add.jsp"  method="post">
        <div class="row">
            <div class="col-md-6">
                <label for="exampleInputEmail1" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Full Name">
            </div>

            <div class="col-md-6">
                <label for="exampleInputDesignation" class="form-label">Designation</label>
                <input type="text" class="form-control" id="designation" name="designation" placeholder="">
            </div>        
        </div>
         
          

 <div class="row">
          
     
     <div class="col-md-6">
                <label for="exampleInputSalary" class="form-label">Salary</label>
                <input type="text" class="form-control" id="salary" name="salary" placeholder="0000000">
            </div>        
        </div>
         
     
       </div>
       


        <div class="row mt-3 text-center">
            <div class="col-md-6">
                <button type="submit" class="btn btn-success text-center" >Save</button>

            </div>

            <div class="col-md-6">
                <button type="reset" class="btn btn-danger text-center" >Reset</button>

            </div>
        </div>
    </form>
    
    
    <!<!-- end form -->  
    
    
    
    
</div>


<%@include file="footer.jsp" %>

