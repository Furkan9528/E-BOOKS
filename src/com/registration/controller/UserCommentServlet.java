package com.registration.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.registration.dao.UserCommentDao;
import com.registration.model.UserComment;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/commentregister")
public class UserCommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private UserCommentDao usercommentDao= new UserCommentDao();  
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserCommentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dispatcher= request.getRequestDispatcher("footer.jsp");
		dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nameal= request.getParameter("nameal");
		String email= request.getParameter("email");
		String numberphone= request.getParameter("numberphone");
		String message= request.getParameter("message");
		
		UserComment usercomment = new UserComment();
		
		usercomment.setNameal(nameal);
		usercomment.setEmail(email);
		usercomment.setNumberphone(numberphone);
		usercomment.setMessage(message);
		
		try {
			usercommentDao.registerUserComment(usercomment);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher= request.getRequestDispatcher("congrats.jsp");
		dispatcher.forward(request, response);
;	}

}
