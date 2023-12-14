package com.pichill.comment.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.pichill.comment.entity.Comment;
import com.pichill.comment.service.CommentService;
import com.pichill.comment.service.CommentServiceImpl;

@WebServlet("/comment/comment.do")
public class CommentServlet extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
		res.setContentType("application/json; charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		if("list_All".equals(action)) {
			CommentService commentSvc = new CommentServiceImpl();
			 List<Comment> comments = commentSvc.getAllComments();
			String json = new Gson().toJson(comments);
			PrintWriter out = res.getWriter();
			out.print(json);
			out.flush();
		    
		}
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("application/json; charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
//		if("list_All".equals(action)) {
//			CommentService commentSvc = new CommentServiceImpl();
//			 List<Comment> comments = commentSvc.getAllComments();
//			String json = new Gson().toJson(comments);
//			PrintWriter out = res.getWriter();
//			out.print(json);
//			out.flush();
//		}
		if ("insert".equals(action)) {
			String commentContent = req.getParameter("commentContent");
			Comment comment = new Comment();
			comment.setCommentContent(commentContent);		
			comment.setgUserID(11000001);
			comment.setPostID(31000008);
			CommentService commentSvc = new CommentServiceImpl();
			Comment addedComment = commentSvc.addComment(comment);
			String json = new Gson().toJson(addedComment);
			PrintWriter out = res.getWriter();
			out.print(json);
			out.flush();
		}
		if ("delete".equals(action)) {	
			System.out.println("=================");
			System.out.println("Action is 'delete'");
			Integer commentID = Integer.valueOf(req.getParameter("commentID"));
			System.out.println("commentID="+commentID);
			CommentService commentSvc = new CommentServiceImpl();
			commentSvc.delete(commentID);
			String json = "{\"message\": \"Comment deleted successfully\"}";
			PrintWriter out = res.getWriter();
			out.print(json);
			out.flush();
		}
		if("getOne_For_update".equals(action)) {
			Integer commentID = Integer.valueOf(req.getParameter("commentID"));
			CommentService commentSvc = new CommentServiceImpl();
			Comment comment = commentSvc.getByCommentID(commentID);
			String json = new Gson().toJson(comment);

			PrintWriter out = res.getWriter();
			out.print(json);
			out.flush();
		}
		if("update".equals(action)) {
			Integer commentID = Integer.valueOf(req.getParameter("commentID"));
			String commentContent = req.getParameter("commentContent");
			Comment comment = new Comment();
			comment.setCommentID(commentID);		
			comment.setCommentContent(commentContent);		
			CommentService commentSvc = new CommentServiceImpl();
			Comment updatedComment = commentSvc.updateComment(comment);
			String json = new Gson().toJson(updatedComment);
			PrintWriter out = res.getWriter();
			out.print(json);
			out.flush();
		}
	}
}
