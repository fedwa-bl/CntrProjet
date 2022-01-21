package beans;

import java.util.Date;
import beans.Crenom;
public class Reservation {
	 
	    private int id;
	    private String dateDebut;
	    private String dateFin;
	    private int id_client;
	    private int numero;
	    private double prix;

	    public Reservation(int id, String dateDebut,String dateFin, int numero,double prix,int id_c) {
	        this.id = id;
	        this.dateDebut = dateDebut;
	        this.dateFin=dateFin;
	        this.id_client = id_c;
	        this.prix=prix;
	        this.numero=numero;
	    }
	    public Reservation(int id, String dateDebut,String dateFin, int numero,int id_c) {
	        this.id = id;
	        this.dateDebut = dateDebut;
	        this.dateFin=dateFin;
	        this.id_client = id_c;
	        this.numero=numero;
	    }
	    public Reservation(String dateDebut,String dateFin, int numero,double prix,int id_c) {
	    	this.dateDebut = dateDebut;
	        this.dateFin=dateFin;
	        this.id_client = id_c;
	        this.prix=prix;
	        this.numero=numero;
	    }
	    public Reservation(String dateDebut,String dateFin, int numero,int id_c) {
	    	this.dateDebut = dateDebut;
	        this.dateFin=dateFin;
	        this.id_client = id_c;
	       this.numero=numero;
	    }

	    public int getId() {
	        return id;
	    }

	    public void setId(int id) {
	        this.id = id;
	    }

	    

	   

		public String getDateDebut() {
			return dateDebut;
		}

		public void setDateDebut(String dateDebut) {
			this.dateDebut = dateDebut;
		}

		public String getDateFin() {
			return dateFin;
		}

		public void setDateFin(String dateFin) {
			this.dateFin = dateFin;
		}

		

		public int getId_client() {
			return id_client;
		}

		public void setId_client(int id_client) {
			this.id_client = id_client;
		}

		public int getNumero() {
			return numero;
		}

		public void setNumero(int numero) {
			this.numero = numero;
		}

		public double getPrix() {
			return prix;
		}

		public void setPrix(double prix) {
			this.prix = prix;
		}

		


	    
	    
	 

}
