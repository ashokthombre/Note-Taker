<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="java.util.List" %>
<%@page import="com.entities.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Note</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
  
    <div class="container">
    <%@include file="navbar.jsp" %>
    
    
     <h1>Please Edit your details</h1>
    <br>
     <!-- This is add form -->
     
     <%
     
     
        int noteId=Integer.parseInt(request.getParameter("note_id").trim());
     
          Session s=FactoryProvider.getFactory().openSession();
          
          Note note=(Note)s.get(Note.class,noteId);
     
     
     %>
     
    <form action="UpdateServlet" method="post">
    
    <input value="<%=note.getId() %>" name="noteId" type="hidden"/>
    
  <div class="form-group">
    <label for="title">Note Title</label>
    <input 
    type="text" 
    value="<%=note.getTitle() %>"
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
   ><%=note.getContent()%></textarea>
   
   
  </div>
  
  
 <div class="container text-center">
   <button  type="submit" class="btn btn-primary">Update</button>
 </div>

</form>
    
    
       
   
</body>
</html>