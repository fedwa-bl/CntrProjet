package beans;

public class Chambre {
 
	    private int id;
	    private int numero;
	    private String  prix;
	    private String type;

	  
	    public int getNumero() {
			return numero;
		}

		public void setNumero(int numero) {
			this.numero = numero;
		}

		

		public String getPrix() {
			return prix;
		}

		public void setPrix(String prix) {
			this.prix = prix;
		}

		public Chambre(int numero, String prix, String type) {
			super();
			this.numero = numero;
			this.prix = prix;
			this.type = type;
		}

		public Chambre(int id, int numero, String prix, String type) {
			super();
			this.id = id;
			this.numero = numero;
			this.prix = prix;
			this.type = type;
		}

		public int getId() {
	        return id;
	    }

	    public void setId(int id) {
	        this.id = id;
	    }

	    

	    public String getType() {
	        return type;
	    }

	    public void setType(String type) {
	        this.type = type;
	    }

		@Override
		public String toString() {
			return "Chambre [id=" + id + ", numero=" + numero + ", prix=" + prix + ", type=" + type + "]";
		}

	   
 

}
