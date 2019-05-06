<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <title>Security Profile</title>
</head>
<body style="background-color: #006666;">
<h2 style="color:#ffffff;">Security Guard Profile</h2>


    <div class="row">


        <div class="container-fluid">
            <div class="col-md-3"></div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="jumbotron" style="background-color:black;color:orange;">
        <h3 style="color:wheat">Details</h3>
                <hr>
           <p style="font-size:16px"> Name:</p>   
                <br/>
           <pstyle="font-size:16px">Current Department:</p>     
                <br/>

             <p style="font-size:16px">Security Firm :</p>    
                <br/>

                <hr>
                <h3 style="color:wheat">Update Details</h3>
                <form action="#" method="get">
                 <div class="form-group">
                        <label class="control-label" for="security_id">Change working department:</label>
                            <select name="Choose department">
                                <br/>
                                <option value="administration">Administration</option>
                                <option value="library">Library</option>
                                <option value="gate_a">Gate A</option>
                                <option value="gate_b">Gate B</option>
                                <option value="gate_c">Gate C</option>
                                <option value="hostels">Hostels</option>

                            </select>
                    </div>
                <div class="form-group">
                        <label for="assign_duty">Duty</label>
                        <textarea placeholder="Enter comment"
                                  style="resize:vertical"
                                  id="assign_duty"
                                  rows="1" spellcheck="false"
                                  class="form-control autosize-target text-left">

                               </textarea>
                    </div>
                <div class="form-group">
                <input type="submit" class="btn btn-primary"
                       value="Submit"/>
                </div>

            </div>
            </div>
        </div>

    </div>
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
    
</form>
</body>
</html>