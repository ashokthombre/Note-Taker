package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;


public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public SaveNoteServlet() {
        super();
      
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		try 
		{
            String title=request.getParameter("title");
            String content=request.getParameter("note");
            
            Note note=new Note(title,content,new Date());
            
            System.out.println(note.getId() +" "+note.getTitle());
            
            Session s=FactoryProvider.getFactory().openSession();
            
            Transaction tx=s.beginTransaction();
            
            s.save(note);
            
            tx.commit();
            
            s.close();
            response.setContentType("text/html");
            
            PrintWriter out=response.getWriter();
            
            response.sendRedirect("all_show.jsp");
                
            out.println("<h1 style='text-align:center'>Note is added successfully</h1>");
           
            out.println("<h1 style='text-align:center'><a href='all_show.jsp'>View All Notes</a></h1>");
            
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
	}

}
