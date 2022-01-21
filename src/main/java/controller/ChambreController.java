package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import beans.Chambre;
import service.ChambreService;

/**
 * Servlet implementation class SalleController
 */
@WebServlet(name = "ChambreController", urlPatterns = { "/ChambreController" })
public class ChambreController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ChambreService ms = new ChambreService();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ChambreController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		if (request.getParameter("op") != null) {
			if (request.getParameter("op").equals("load")) {
				response.setContentType("application/json");
				List<Chambre> ls = ms.findAll();
				Gson gson = new Gson();
				response.getWriter().write(gson.toJson(ls));
			} else if (request.getParameter("op").equals("delete")) {
				int id = Integer.parseInt(request.getParameter("id"));
				ms.delete(ms.findById(id));
				response.setContentType("application/json");
				List<Chambre> ls = ms.findAll();
				Gson gson = new Gson();
				response.getWriter().write(gson.toJson(ls));
			} else if (request.getParameter("op").equals("update")) {

				int id = Integer.parseInt(request.getParameter("id"));
				int numero = Integer.parseInt(request.getParameter("Num"));
				String prix = request.getParameter("prix");
				String Type = request.getParameter("type");
				ms.update(new Chambre(id, numero, prix, Type));
				response.setContentType("application/json");
				List<Chambre> ls = ms.findAll();
				Gson gson = new Gson();
				response.getWriter().write(gson.toJson(ls));

			
		} else {
			int numero = Integer.parseInt(request.getParameter("Num"));
			String prix = request.getParameter("Prix");
			String Type = request.getParameter("Type");
			ms.create(new Chambre(numero, prix, Type));
			response.setContentType("application/json");
			List<Chambre> ls = ms.findAll();
			Gson gson = new Gson();
			response.getWriter().write(gson.toJson(ls));
		}
		// response.sendRedirect("index.jsp");
		// doGet(request, response);
		}
	}

}
