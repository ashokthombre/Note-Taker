<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
 <%@include file="all_js_css.jsp" %>
</head>
<body>

    <div class="container">
    <%@include file="navbar.jsp" %>
    
    <h1>Please fill Your Note Details</h1>
    <br>
     <!-- This is add form -->
    <form action="SaveNoteServlet" method="post">
    
  <div class="form-group">
    <label for="title">Note Title</label>
    <input 
    type="text" 
    name="title"
    required
    class="form-control" 
    id="title" 
    aria-describedby="emailHelp" 
    placeholder="Enter Note Title">
 
  </div>
  
  <div class="form-group">
    <label for="content">Note Content*</label>
   <textarea id="content"
   name="note" 
   required
   placeholder="Enter your Note"
   class="form-control"
   style="height:300px";
   >
   </textarea>
   
   
  </div>
  
  
 <div class="container text-center">
   <button type="submit" class="btn btn-primary">Add Note</button>
 </div>

</form>
    
    
    
    
    
    </div>
</body>
</html>