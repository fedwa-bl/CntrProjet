package service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.Client;
import beans.Crenom;
import beans.Chambre;
import connexion.Connexion;
import doa.IDao;

public class ClientService implements IDao<Client> {
	public boolean create (Client o) {
		String req= "insert into client  values(null,?,?,?,?,?,?)";
		
		try {
			PreparedStatement ps= Connexion.getInstane().getConnection().prepareStatement(req);
			ps.setString(1,o.getNom());
			ps.setString(2,o.getPrenom());
			ps.setString(3, o.getNumtele());
			ps.setString(4, "0"); 
			ps.setString(5, o.getLogin()); 
			ps.setString(6, o.getPassword()); 
			if(ps.executeUpdate()==1) {
				return true;
			}
		}catch(Exception e ) {
			System.out.println("create"+e.getMessage());
		}
		return false;
	} 
	@Override
	public boolean update (Client o) {
		String req= "update client set Nom=?,Prenom=?,numTele=?,etat=? where ID=?";
		try {
			PreparedStatement ps= Connexion.getInstane().getConnection().prepareStatement(req);
			ps.setString(1,o.getNom());
			ps.setString(2,o.getPrenom());
			ps.setString(3,o.getNumtele());
			ps.setString(4,o.getEtat());
			ps.setInt(5,o.getId());
			if(ps.executeUpdate()==1) {
				return true;
			}
		}catch(Exception e ) {
			System.out.println("Update"+e.getMessage());
		}
		return false;
	}
	
	public boolean delete (Client o) {
		String req= "delete from client  where ID=?";
		try {
			PreparedStatement ps= Connexion.getInstane().getConnection().prepareStatement(req);
			ps.setInt(1,o.getId()); 
			if(ps.executeUpdate()==1) {
				return true;
			}
		}catch(Exception e ) {
			System.out.println("delete"+e.getMessage());
		}
		return false;
	}
	
	
	public  Client  findById (int id) {
		String req= "select *  from client  where ID=?";
		Chambre ls= null;
		try {
			PreparedStatement ps= Connexion.getInstane().getConnection().prepareStatement(req);
			ps.setInt(1,id); 
			ResultSet rs= ps.executeQuery();
			if(rs.next()) {
				return  new Client(rs.getInt("id"),rs.getString("nom"),rs.getString("prenom"),rs.getString("numTele"),rs.getString("etat")) ;
			}  
		}catch(Exception e ) {
			System.out.println("findById "+e.getMessage());
		}
		return null;
	}
	@Override
	public List<Client>  findAll() {
		List<Client> ls= new ArrayList<Client>();
		String req= "select * from client";
		
		try {
			PreparedStatement ps= Connexion.getInstane().getConnection().prepareStatement(req);
			ResultSet rs= ps.executeQuery();
			while(rs.next()) {
				 ls.add( new Client(rs.getInt("id"),rs.getString("nom"),rs.getString("prenom"),rs.getString("numTele"),rs.getString("etat"))) ;
			} 	 
		}catch (SQLException e) {
            System.out.println("findAll " + e.getMessage());
        }
		return ls;
	}
	public List<Client>  findClientsNonVerified() {
		List<Client> ls= new ArrayList<Client>();
		String req= "select * from client where etat = '0'";
		
		try {
			PreparedStatement ps= Connexion.getInstane().getConnection().prepareStatement(req);
			ResultSet rs= ps.executeQuery();
			while(rs.next()) {
				 ls.add( new Client(rs.getInt("id"),rs.getString("nom"),rs.getString("prenom"),rs.getString("numTele"),rs.getString("etat"))) ;
			} 	 
		}catch (SQLException e) {
            System.out.println("findAll " + e.getMessage());
        }
		return ls;
	}
	public boolean  accept(int id) {
		String req= "update client set etat = '1' where id = ?";
		PreparedStatement ps;
		try {
			ps = Connexion.getInstane().getConnection().prepareStatement(req);
			ps.setInt(1,id);
			
			if(ps.executeUpdate()==1) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		 
	
		
		return false;
		
	}
	public Client connexion(String mail,String pwd) {
		String req= "select *  from client  where login=? and password=? and etat=?";
		
		try {
			PreparedStatement ps= Connexion.getInstane().getConnection().prepareStatement(req);
			ps.setString(1,mail); 
			ps.setString(2,pwd); 
			ps.setString(3, "1");
			ResultSet rs= ps.executeQuery();
			if(rs.next()) {
				return  new Client(rs.getInt("id"),rs.getString("nom"),rs.getString("prenom"),rs.getString("numTele"),rs.getString("etat")) ;
			}  
		}catch(Exception e ) {
			System.out.println("findById "+e.getMessage());
		}
		return null;
	}
}
