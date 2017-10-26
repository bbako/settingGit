<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Basic Table</h2>
  
  <button id="newwrite"><a href="/create">새글</a></button>
  <table class="table">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody id="showlistpart">
    
    
    </tbody>
  </table>
  
  <div>
  <ul id="pagenation">
  
  
  </ul>
  
  </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<script>
$( document ).ready(function() {
	showlist(); 
	
	function showlist(){
		console.log("show ~~!~!~!~");
		$.ajax({
			   url: '/index',
			   type: 'post',
			   data: {
				   page :1
				   
			   },
			   dataType: 'json',
			   success: function(data) {
			    tableMaker(data);
			   },
			});
	}
	
	function tableMaker(data){
		var str ="";
		
		$.each(data, function (index, value) {
			console.log(value);
			
			str+=" <tr><td><a href='/one?seq_id="+value.seq_id+"'>"+value.seq_id+"</a></td><td>"
					+value.board_title+"</td><td>"+value.board_content+"</td></tr>";
					
			$("#showlistpart").html(str);
			});
		
		
	}
	
});


</script>

</body>
</html>