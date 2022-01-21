package controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import beans.Crenom;
import beans.Reservation;
import beans.Chambre;
import service.ReservationService;
 

/**
 * Servlet implementation class CrenomController
 */
@WebServlet(name = "ReservationController", urlPatterns = { "/ReservationController" })
public class ReservationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ReservationService ms= new ReservationService();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReservationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
				if (request.getParameter("op") != null) {
					if (request.getParameter("op").equals("load")) {
						response.setContentType("application/json");
						List<Reservation> ls = ms.findAll();
						Gson gson = new Gson();
						response.getWriter().write(gson.toJson(ls));
					} else if (request.getParameter("op").equals("delete")) {
						int id = Integer.parseInt(request.getParameter("id"));
						ms.delete(ms.findById(id));
						response.setContentType("application/json");
						List<Reservation> ls = ms.findAll();
						Gson gson = new Gson();
						response.getWriter().write(gson.toJson(ls));
					} else if (request.getParameter("op").equals("update")) {

						int id = Integer.parseInt(request.getParameter("id"));
						String dateDebut = request.getParameter("DateDebut");
						String dateFin =  request.getParameter("DateFin");
						int num=Integer.parseInt( request.getParameter("ID_chambre"));
						int id_c=Integer.parseInt( request.getParameter("ID_client"));
						ms.update(new Reservation(id, dateDebut, dateFin,num,id_c));
						response.setContentType("application/json");
						List<Reservation> ls = ms.findAll();
						Gson gson = new Gson();
						response.getWriter().write(gson.toJson(ls));

					}	
					
	}else {

				 int id_c=Integer.parseInt( request.getParameter("ID_client"));
				 String dateDebut = request.getParameter("DateDebut");
					String dateFin =  request.getParameter("DateFin");
					int num=Integer.parseInt( request.getParameter("ID_chambre"));
				ms.create(new Reservation( dateDebut, dateFin,num,id_c));
				response.setContentType("application/json");
				List<Reservation> ls = ms.findAll();
				Gson gson = new Gson();
				response.getWriter().write(gson.toJson(ls));
	}
}
}
