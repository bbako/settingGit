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
  <h2>새글 등록창 </h2>
  <form action="/create" method="post">
    <div class="form-group">
      <label for="email">title</label>
      <input type="text" class="form-control" id="email" placeholder="title" name="board_title">
    </div>
    <div class="form-group">
      <label for="email">writer</label>
      <input type="text" class="form-control" id="email" placeholder="writer" name="board_writer">
    </div>
	<div class="form-group">
      <label for="comment">content</label>
      <textarea class="form-control" rows="5" id="comment" name="board_content"></textarea>
    </div>    
    <button type="submit" class="btn btn-default">Submit</button>
    <button><a href="/index" >Cancel</a></button>
  </form>
</div>




</body>
</html>