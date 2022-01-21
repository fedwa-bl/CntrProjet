package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import beans.Client;
 
import service.ClientService;

/**
 * Servlet implementation class Clinet
 */
@WebServlet(name = "ClientsController", urlPatterns = { "/ClientsController" })
public class ClientsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ClientService ms = new ClientService();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClientsController() {
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
		// TODO Auto-generated method stub
		//doGet(request, response);
		if (request.getParameter("op") != null) {
			if (request.getParameter("op").equals("load")) {
				response.setContentType("application/json");
				List<Client> ls = ms.findAll();
				Gson gson = new Gson();
				response.getWriter().write(gson.toJson(ls));
			} else if (request.getParameter("op").equals("delete")) {
				int id = Integer.parseInt(request.getParameter("id"));
				ms.delete(ms.findById(id));
				response.setContentType("application/json");
				List<Client> ls = ms.findAll();
				Gson gson = new Gson();
				response.getWriter().write(gson.toJson(ls));
			} else if (request.getParameter("op").equals("update")) {

				int id = Integer.parseInt(request.getParameter("id"));
				String nom = request.getParameter("Nom");
				String prenom =  request.getParameter("Prenom");
				String  numtele= request.getParameter("Phone");
				String etat=request.getParameter("Etat");
				ms.update(new Client(id, nom, prenom,numtele,etat));
				response.setContentType("application/json");
				List<Client> ls = ms.findAll();
				Gson gson = new Gson();
				response.getWriter().write(gson.toJson(ls));

			}else if(request.getParameter("op").equals("accept")) {
				int id = Integer.parseInt(request.getParameter("id"));
				
			    boolean a = ms.accept(id);
				response.setContentType("application/json");
				List<Client> ls = ms.findAll();
				Gson gson = new Gson();
				response.getWriter().write(gson.toJson(ls));
				
			}
			else if(request.getParameter("op").equals("connect")) {
				String mail=request.getParameter("Mail");
				String pwd = request.getParameter("Pwd");
				Client c= ms.connexion(mail,pwd);
				response.setContentType("application/json");
				HttpSession session = request.getSession();
				session.setAttribute("id",c.getId() );
				session.setAttribute("nom",c.getNom() );
				Gson gson = new Gson();
				response.getWriter().write(gson.toJson(c));
				
			}
		} else {

			String nom = request.getParameter("Nom");
			String prenom =  request.getParameter("Prenom");
			String  numtele= request.getParameter("Phone");
			String mail=request.getParameter("Mail");
			String pwd = request.getParameter("Pwd");
			String etat="0";
		    boolean a = ms.create(new Client(nom, prenom,numtele,etat,pwd,mail));
			response.setContentType("application/json");
			List<Client> ls = ms.findAll();
			Gson gson = new Gson();
			response.getWriter().write(gson.toJson(ls));
		}
	}

}
