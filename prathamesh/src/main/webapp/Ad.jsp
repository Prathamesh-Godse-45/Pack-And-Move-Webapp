<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin Page</title>
        <%@include file="Common_css_js.jsp"%>
    </head>
     <style>
        body {
            background-image: url('Admin bans.jpeg');
            height: 100vh;
            position: relative;
            background-position: center;
            background-repeat: repeat;
            background-size: cover;
            margin: 0;
            font-family: 'Arial', sans-serif;
        }

        nav {
            background-color: #FFA500;
            padding: 10px;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
        }

        .admin {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            margin-top: 20px;
        }

        .card {
        
            border: none;
            border-radius: 0px;
            margin-bottom: 20px;
            transition: transform 0.3s ease-in-out;
            
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card-body {
        border-radius:30px;
            padding: 20px;
        }

        .img-fluid {
            max-width: 100%;
            height: auto;
        }

        .modal-dialog {
            max-width: 800px;
        }

        .modal-content {
            border-radius: 50px;
        }

        .custom-bg {
            background-color: #FFA500;
            color: white;
        }
        .modal fade{
        radius:40px;
        }
        input[type="button"]{
        color: orange;
        
     }
     
     .form-control{
     color: orange;
     }
    </style>
    
    <body style="background-image:url(image/bg2.png); height: 780px; position: relative; background-position:center; background-repeat: no-repeat;background-size: cover; ">
        <nav class="navbar navbar-expand-lg " >
  <div class="container-fluid">
    <a class="navbar-brand" href="#"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home.jsp"><i class="fa-solid fa-house"></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="request.jsp">Requests</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Employeedetails.jsp">Employees</a>
          
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="vehical.jsp">vehicles</a>
        </li></ul>
       
    </div>
   
  </div>
   
</nav>
 <div class="admin">
   
    </div>
</div>
         
         <div class="container admin">
             <div class="container-fluid mt-3 ">
                
             
                 </div>
             </div>
             <div class="row mt-3">
                 <div class="col-md-6">
                     <div class="card" data-toggle="modal" data-target="#exampleModal">
                         <div class="card-body text-center">
                             <div class="container">
                         <img style="max-width:125px;" class="img-fluid rounded-circle" src="funnyyy.jpeg" />
                             </div>
                         <p class='mt-2'>click here to add new Vehicles</p>
                         <h1 class="text-uppercase text-muted">Add Vehicles</h1>
                         </div>
                         
                     </div>
                     
                 </div>
                 <div class="col-md-6">
                     <div class="card" data-toggle="modal" data-target="#productModal">
                         <div class="card-body text-center">
                             <div class="Container">
                         <img style="max-width:125px;" class="img-fluid rounded-circle" src="Private GIF.gif" />
                             </div>
                         <p class='mt2'>click here to add new Emoloyees</p>
                         <h1 class="text-uppercase text-muted"> Add Employees</h1>
                         </div>
                         
                     </div>
                     
                 </div>
             </div>
             
         </div>
             

                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header custom-bg text-white">
        <h5 class="modal-title" id="exampleModalLabel">Fill Vehicle details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form action="vehicaljdbc.jsp" method="post">
             
              <div class="form-group">
                  <input type="text" class="form-control" name="catagory" placeholder="Enter Category of Vehicle" required/><!-- comment -->
                  
              </div>
              <div class="form-group">
                  <textarea style="height:200px " class="form-control"  placeholder="Enter Vehical NO. details" name="vehicalinfo" required></textarea>
              </div><!-- comment -->
              <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="Submit" class="btn btn-primary">Add Vehicle</button>
      </div>
              
          </form>
      </div>
      
    </div>
  </div>
</div>







<div class="modal fade" id="productModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header custom-bg text-white">
        <h5 class="modal-title" id="exampleModalLabel">Employee details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      
      
      
      
      <div class="modal-body">
      
      
      
      
          <form action="addemp.jsp" method="post">
 
              
              
              <div class="form-group">
              
                  <input type="text" class="form-control" placeholder="Enter Name of Employee" name=ename id="ename" required/>
               
              </div>
              
             
              
              <div class="form-group">
              
                  <form id="jobForm" method="post" action="submit.php">
    <div class="form-group">
        <input type="text" class="form-control" placeholder="Enter Job Description" name="job" id="job" required/>
        <div class="invalid-feedback">Please enter a job description.</div>
    </div>
    <div class="form-group">
        <input type="text" class="form-control" placeholder="Enter Employee Salary" name="salary" id="salary" required pattern="\d+(\.\d{2})?" title="Please enter a number (e.g., 50000 or 50000.00)"/>
        <div class="invalid-feedback">Please enter a valid salary (e.g., 50000 or 50000.00).</div>
    </div>
    <div class="form-group">
        <input type="text" class="form-control" placeholder="Enter Age" name="age" id="age" required pattern="[0-9]{1,3}" maxlength="3" title="Please enter a number"/>
        <div class="invalid-feedback">Please enter a valid age.</div>
    </div>
    <div class="form-group">
        <input type="tel" class="form-control" placeholder="Enter Mobile No" name="mobileNo" id="mobileNo" required pattern="[0-9]{10}" maxlength="10" title="Please enter a 10-digit number"/>
        <div class="invalid-feedback">Please enter a valid 10-digit mobile number.</div>
    </div>
   


              
      
              <div class="modal-footer">
                  <button type="Submit" class="btn btn-primary">Add Employee</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
              </div>
              </form>
              
        
      </div>
         
      </div>
      
    </div>
</div>          
  


    </body>
</html>
    