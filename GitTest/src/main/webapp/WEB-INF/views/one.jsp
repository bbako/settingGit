<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
<div class="container">
  <h2>Show One</h2>
    <div class="panel panel-danger">
      <div class="panel-heading">Show One</div>
		<div class="panel-body">
		
		<table class="table table-bordered">
		    <thead>
		      <tr>
		        <th>Number</th>
		        <th>Title</th>
		        <th>Content</th>
		        <th>Writer</th>
		        <th>Date</th>
		        <th>ViewCount</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr>
				<td>${one.seq_id}               </td>
				<td>${one.board_title}          </td>
				<td>${one.board_content}        </td>
				<td>${one.board_writer}         </td>
				<td>${one.board_datetime}       </td>
				<td>${one.board_viewcounter}    </td>
		      </tr>
		    </tbody>
		</table>
		
			<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Modify</button>
			<button>Delete</button>
		</div>
    </div>
</div>

<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modify</h4>
        </div>
        <div class="modal-body">
			<form action="/update" method="post">
			    <div class="form-group">
			      <label for="email">title</label>
			      <input type="text" class="form-control" id="email" placeholder="title" name="board_title" value="${one.board_title}">
			    </div>
			    <div class="form-group">
			      <label for="email">writer</label>
			      <input type="text" class="form-control" id="email" placeholder="writer" name="board_writer" value="${one.board_writer}">
			    </div>
				<div class="form-group">
			      <label for="comment">content</label>
			      <textarea class="form-control" rows="5" id="comment" name="board_content" >${one.board_content}</textarea>
			    </div>    
			    <button type="submit" class="btn btn-default">Submit</button>
			    <button><a href="/index" >Cancel</a></button>
			</form>	
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>


</body>
</html>