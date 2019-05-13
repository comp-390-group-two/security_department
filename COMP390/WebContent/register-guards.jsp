<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Security Register Details</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #006666;">
<h2 style="color:#ffffff;">Egerton University</h2>
<form action="guardLoginServlet" method="post">

    <div class="row">
        <div class="container-fluid">
            <div class="col-md-3"></div>
            <div class="col-lg-6 col-md-6 col-sm-4">
                <div class="jumbotron" style="background-color:#003366;color:orange;">

                    <br>
                    <h3>Register Security Details here</h3>
				
				<div class="form-group">
                        <br/>
                        <label class="control-label" for="security_id">Security I.D</label>
                        <input type="text" name="security_id" class="form-control" placeholder="I.D">
                    </div>
                    
                    
                    <div class="form-group">
                        <br/>
                        <label class="control-label" for="name">First Name</label>
                        <input type="text" name="first_name" class="form-control" placeholder="Enter name">
                    </div>
                    
                      <div class="form-group">
                        <br/>
                        <label class="control-label" for="name">Last Name</label>
                        <input type="text" name="last_name" class="form-control" placeholder="Enter name">
                    </div>
                    
                    <div class="form-group">
                        <br/>
                        <label class="control-label" for="password">Password</label>
                        <input type="password" name="password" class="form-control" placeholder="Enter Password Here">
                    </div>

                    <div class="form-group">
                        <label class="control-label" for="choose dept">Choose Department</label>
                       <br/>
                        <select name="department">
                            <option value="administration">Administration</option>
                            <option value="library">Library</option>
                            <option value="gate_a">Gate A</option>
                            <option value="gate_b">Gate B</option>
                            <option value="gate_c">Gate C</option>
                            <option value="hostels">Hostels</option>

                        </select>
                    </div>
                 <div class="form-group">
                        <label class="control-label" for="choose ">Duty</label>
                       <br/>
                        <select name="duty">
                            <option value="inspectingentrance">Inspecting Entrance</option>
                            <option value="receive complaints">Receive Complaints</option>
                          
                        </select>
                    </div>

                    <div class="pull-center">
                        <br/>
                        <br/>
                        <button type="submit" name="register"
                      class="btn btn-primary">Register</button>

                    </div>
                 <!-- <h4 style="color:green;">${successMessage }</h4>
                    <h4 style="color:red;">${errorMessage }</h4>
                    </div>
                     -->   
                

            </div>
        </div>
    </div>
 </form>
  <footer style ="background-color: #222; color:#ffffff" class="site-footer" >
	<div class="container">

	
 <div class="row">
	<div class="col-md-4 ">
		<adress>
			Egerton University Security Department<br>
			P.O.BOX 536,<br>
			Egerton<br>
			PHONE NO_07XXXXXXXX
		</adress>
	</div>

	<div class="col-md-4 ">
		<address>
		Egerton University<br>
		<i>Transforming Lives Through Quality Education</i><br>
		NJORO Campus<br>
		www.egerton.ac.ke
		
		</address>
	</div>
	<div class="col-md-4" >
		 <adress >
       		Chief Security <br>
        	Egerton University-Kenya<br>
        	chiefsecurity@egerton.ac.ke<br>
		 </adress>
	</div>
	</div>
	<hr>
	<p>Website information</p>
	<div class="button-footer">
	<div class="col-md-8">©SecurityDepartmentEgertonUniverity .2019</div>
	</div>
	

   </div>

	</div>



</footer>
  

</body>
</html>