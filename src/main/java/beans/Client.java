package beans;

public class Client {
	 
	 
	    private int id;
	    private String nom;
	    private String prenom;
	    private String numtele;
	    private String etat="0";
	    private String login ; 
	    private String password  ;

	    public Client(int id, String nom, String prenom,String num,String etat) {
	        this.id = id;
	        this.nom = nom;
	        this.prenom = prenom;
	        this.etat=etat;
	        this.numtele=num;
	    }
	    	
	    public Client(String nom, String prenom,String num,String etat) {
	        this.nom = nom;
	        this.prenom = prenom;
	        this.etat=etat;
	        this.numtele=num;
	    }
	    public Client(String nom, String prenom,String num,String etat,String password , String Login) {
	        this.nom = nom;
	        this.prenom = prenom;
	        this.numtele=num;
	        this.password = password;
	        this.login = Login;
	    }

	    public String getLogin() {
			return login;
		}

		public void setLogin(String login) {
			this.login = login;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public int getId() {
	        return id;
	    }

	    public void setId(int id) {
	        this.id = id;
	    }

	    public String getNom() {
	        return nom;
	    }

	    public void setNom(String nom) {
	        this.nom = nom;
	    }

	    public String getPrenom() {
	        return prenom;
	    }

	    public void setPrenom(String prenom) {
	        this.prenom = prenom;
	    }

	   

		public String getNumtele() {
			return numtele;
		}

		public void setNumtele(String numtele) {
			this.numtele = numtele;
		}

		public String getEtat() {
			return etat;
		}

		public void setEtat(String etat) {
			this.etat = etat;
		}

		@Override
	    public String toString() {
	        return "Client{" + "id=" + id + ", nom=" + nom + ", prenom=" + prenom + '}';
	    }
	    
	 
}
