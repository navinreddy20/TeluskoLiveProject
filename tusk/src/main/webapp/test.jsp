<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<script id="" src="#"></script>
<meta charset="utf-8" />
<title>Telusko- Test</title>
<!-- CSS Files -->
<link rel="stylesheet" href="plugin/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="plugin/font-awesome/css/font-awesome.min.css" />
	<link rel="icon" href="fav.ico" type="image/gif">
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/animate.min.html" />
<!-- / CSS Files -->


<style>

body {
	font-family: Open Sans;
}

h1 {
	text-align: center;
}

#title {
	text-decoration: underline;
}

#quiz {
	text-indent: 10px;
	display: none;
}

.button {
	border: 4px solid;
	border-radius: 5px;
	width: 50px;
	padding-left: 5px;
	padding-right: 5px;
	position: relative;
	float: right;
	background-color: #F97307;
	color: #F97307;
	margin: 0 2px 0 2px;
}

.button.active {
	background-color: #802000;
	color: #802000;
}

button {
	position: relative;
	float: right;
}

.button a {
	text-decoration: none;
	color: black;
}

.btn1 {
	background: #f97307;
	background-image: -webkit-linear-gradient(top, #f97307, #f97407);
	background-image: -moz-linear-gradient(top, #f97307, #f97407);
	background-image: -ms-linear-gradient(top, #f97307, #f97407);
	background-image: -o-linear-gradient(top, #f97307, #f97407);
	background-image: linear-gradient(to bottom, #f97307, #f97407);
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0px;
	font-family: Arial;
	color: white;
	font-size: 20px;
	text-decoration: none;
	width: 100px;
	height: 40px;
	font-color: white;
	padding-left: 30px;
	margin-left: 25px;
}

.btn1:hover {
	background: #f07e27;
	background-image: -webkit-linear-gradient(top, #f07e27, #c7620a);
	background-image: -moz-linear-gradient(top, #f07e27, #c7620a);
	background-image: -ms-linear-gradient(top, #f07e27, #c7620a);
	background-image: -o-linear-gradient(top, #f07e27, #c7620a);
	background-image: linear-gradient(to bottom, #f07e27, #c7620a);
	text-decoration: none;
}

#container {
	width: 100%;
	margin: auto;
	padding: 0 25px 40px 10px;
	color: black;
	font-weight: bold;
}

ul {
	list-style-type: none;
	padding: 0;
	margin: 0;
}

#prev {
	display: none;
	margin-left: 15px;
}

#start {
	display: none;
	width: 90px;
}
</style>
<link rel="stylesheet" type="text/css"
	href="http://fonts.googleapis.com/css?family=Open Sans" />
</head>
<body>
<%


response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setHeader("Expires", "0"); // Proxies.
%>
	
	<br><br><br>
	<div class="row">
                   <center> <div class="col-md-12 text-center countdown-timer ct1">
                        <h1>Exam Starts in <span id="startCount">2</span>!</h1>
                    </div>
	<section id="about">
		<div class="container">
			<div class="row text-center">
			  <div class="row blue-box  blog-params">
				<div class="col-md-12 question">  
					<h3>
						<span id="qno"></span> <span id="q"></span>
					</h3>
				
			</div>

			<h4>
				<div class="row text-left">
					<div class="col-md-6">
						<div class="radio options">
							<label for="option1"><input type="radio" value=""
								name="ans" id="opt1"><span id="option1"></span></label>
						</div>
					</div>
					<div class="col-md-6">
						<div class="radio options">
							<label for="option2"><input type="radio" value=""
								name="ans" id="opt2"><span id="option2"></span></label>
						</div>
					</div>
				</div>


				<div class="row text-left">
					<div class="col-md-6">
						<div class="radio options">
							<label for="option3"><input type="radio" value=""
								name="ans" id="opt3"><span id="option3"></span></label>
						</div>
					</div>
					<div class="col-md-6">
						<div class="radio options">
							<label for="option4"><input type="radio" value=""
								name="ans" id="opt4"><span id="option4"></span></label>
						</div>
					</div>
				</div>
			</h4>



</div>
<br><br>


			<div class="row">
				<center>
				<p><input type="submit" class="btn btn-theme btn-green" id="prev" value="Prev" />
                 <input type="submit" class="btn btn-theme btn-green" id="next" value="Next"/>
           	
						 <input type="submit" class="btn btn-theme btn-orange" id="#end" value="End Test" onclick="go()"/></p>
			</center>
			</div>




		</div>
</div>
	</section>

 
	<!-- JavaScript Files -->
	<script src="plugin/jquery-1.10.2.min.js"></script>
	<script src="plugin/bootstrap/js/bootstrap.min.js"></script>
	<script src="plugin/jquery.cuteTime.min.js"></script>
	<script src="script/script.js"></script>
	<!-- / JavaScript Files -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script><script src="js/custom.js"></script>
	<!-- Counter  -->
	<script type="text/javascript" src="js/jquery.counterup.min.js"></script>
	<script src="js/countUp.min.js"></script>
	 <script type="text/javascript">
        var options = {
            useEasing : false,
            useGrouping : true,
            separator : '',
            decimal : '.',
            prefix : '',
            suffix : ''
        };
        var startCount = new CountUp("startCount", 1, 0, 0, 1, options);
        startCount.start(hideCounterShowTimer);
        function hideCounterShowTimer() {
            $('.ct1').addClass('hidden');
            $('.ct2').removeClass('hidden');
            $('#test-question > .container').removeClass('hidden');
            startMins();
        }
        function startMins() {
            $('#timer-min').text($('#timer-min').text()-1);
            startSeconds();
           
        }
        minsleft = 4;
     
        function startSeconds() {
        	
            var options = {
                useEasing : false,
                useGrouping : false,
                separator : ':',
                
                decimal : '.',
                prefix : '',
                suffix : '',
            };
            
            var secs = new CountUp("timer-sec",59,0,0,59,options);
            if(minsleft>=0) {
                secs.start(startMins);
                minsleft--;
            }
            else if(minsleft==-1)
            	{
            		go();
            	}
            else{
            	
                secs.start();
            }
            
        }
    </script>
	
	
	<form action="GET">

		<script>
	 var qs=[];
	  
	 var json = null;
	 var i=0;
	var answers = [];
	var queIds = [];
	 $.getJSON( "http://localhost:8085/tusk/getQuestions", function (json1) {

		 for(n=0;n<5;n++)
		  {
		  		qs[n] = json1[n].qid;
		  }
		 
		 json = json1;
 		console.log("json1",json1);
        $('#qno').append('Q. '+(i+1)+')');
        $('#q').html(json1[i].question);
        
        $('#option1').parent().attr("value",json.option1);
        $('#option1').append(json[i].opt1);
        $('#option2').parent().attr("value",json.option2);
        $('#option2').append(json[i].opt2);
        $('#option3').parent().attr("value",json.option3);
        $('#option3').append(json[i].opt3);
        $('#option4').parent().attr("value",json.option4);
        $('#option4').append(json[i].opt4);
        
        });
 	    
         
     
     $('#next').click(function() {
       
     	 if(document.getElementById('opt1').checked) {
     		 
     		  answers[i] = 1;
     	}else if(document.getElementById('opt2').checked) {
     		 
     		 answers[i] = 2;
     	}else if(document.getElementById('opt3').checked) {
     		
     		 answers[i] = 3;
     	}else if(document.getElementById('opt4').checked) {
     		 answers[i] = 4;
     	}

				i = i + 1;	
				
         	if(i<4)
             {
         		
         		 $('#prev').show();
         		
         	queIds[i]=json[i].queId;
         	$('#qno').html('Q. '+(i+1)+')');
             $('#q').html(json[i].question);
             $('#option1').parent().attr("value",json.option1);
             $('#option1').html(json[i].opt1);
             $('#option2').parent().attr("value",json.option2);
             $('#option2').html(json[i].opt2);
             $('#option3').parent().attr("value",json.option3);
             $('#option3').html(json[i].opt3);
             $('#option4').parent().attr("value",json.option4);
             $('#option4').html(json[i].opt4);
           
             
             
             }
         	else if(i==4)
         		{
         		 $('#next').hide();
         		 
         		queIds[i]=json[i].queId;
             	$('#qno').html('Q. '+(i+1)+')');
                 $('#q').html(json[i].question);
                 $('#option1').parent().attr("value",json.option1);
                 $('#option1').html(json[i].opt1);
                 $('#option2').parent().attr("value",json.option2);
                 $('#option2').html(json[i].opt2);
                 $('#option3').parent().attr("value",json.option3);
                 $('#option3').html(json[i].opt3);
                 $('#option4').parent().attr("value",json.option4);
                 $('#option4').html(json[i].opt4);
                 
                 
         		}
         	else
             	i=i-1;
      
     });
     $('#prev').click(function() {
         
				i=i-1;

                 if(i>0) 
            	 { 

            	 $('#next').show();
 
             queIds[i]=json[i].queId;
         	$('#qno').html('Q. '+(i+1)+')');
             $('#q').html(json[i].question);
             $('#option1').parent().attr("value",json.option1);
             $('#option1').html(json[i].opt1);
             $('#option2').parent().attr("value",json.option2);
             $('#option2').html(json[i].opt2);
             $('#option3').parent().attr("value",json.option3);
             $('#option3').html(json[i].opt3);
             $('#option4').parent().attr("value",json.option4);
             $('#option4').html(json[i].opt4);
            
             }
             
             
             else if(i==0)
             {  
            	 
            	 $('#prev').hide();
            	 $('#next').show();
            	 
                 queIds[i]=json[i].queId;
             	$('#qno').html('Q. '+(i+1)+')');
                 $('#q').html(json[i].question);
                 $('#option1').parent().attr("value",json.option1);
                 $('#option1').html(json[i].opt1);
                 $('#option2').parent().attr("value",json.option2);
                 $('#option2').html(json[i].opt2);
                 $('#option3').parent().attr("value",json.option3);
                 $('#option3').html(json[i].opt3);
                 $('#option4').parent().attr("value",json.option4);
                 $('#option4').html(json[i].opt4);
                
                 }

             else
                 i = i+ 1;
        
     });
     
     
     
     function go()
     {
         
                var c=0;
		            var myarray = [];
	            var myjson = "";
				c=0;
				
		            
			       	 if(document.getElementById('opt1').checked) {
			       		 
			       		  answers[i] = 1;
			       	}else if(document.getElementById('opt2').checked) {
			       		 
			       		 answers[i] = 2;
			       	}else if(document.getElementById('opt3').checked) {
			       		
			       		 answers[i] = 3;
			       	}else if(document.getElementById('opt4').checked) {
			       		 answers[i] = 4;
			       	}
			       
	            for (c = 0; c < 5; c++) {
	
					myjson = myjson + "&qid" + (c+1) + "=" + qs[c] + "&ans" + (c+1) + "=" + answers[c];

	            }
	

console.log(myjson);
<%
	request.getSession().setAttribute("tname", "java");
%>
	             var jspcall = "verify.htm?tname=<%=request.getSession().getAttribute("tname").toString()%>&json="+myjson; 
	            window.location.href = jspcall; 
	  
     }

    </script>

	</form>


</body>
</html>
