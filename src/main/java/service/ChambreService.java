package service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.Chambre;
import connexion.Connexion;
import doa.IDao;

public class ChambreService implements IDao<Chambre> {
	
	public boolean create (Chambre o) {
		String req= "insert into chambre  values(null,?,?,?)";
		try {
			PreparedStatement ps= Connexion.getInstane().getConnection().prepareStatement(req);
			ps.setInt(1,o.getNumero());
			ps.setString(2,o.getType());
			ps.setString(3,o.getPrix());

			if(ps.executeUpdate()==1) {
				return true;
			}
		}catch(Exception e ) {
			System.out.println("create"+e.getMessage());
		}
		return false;
	} 
	@Override
	public boolean update (Chambre o) {
		String req= "update chambre set numero=?,type=?,prix=? where id=?";
		try {
			PreparedStatement ps= Connexion.getInstane().getConnection().prepareStatement(req);
			ps.setInt(1,o.getNumero());
			ps.setString(2,o.getType());
			ps.setString(3,o.getPrix());
			ps.setInt(4,o.getId());
			if(ps.executeUpdate()==1) {
				return true;
			}
		}catch(Exception e ) {
			System.out.println("Update"+e.getMessage());
		}
		return false;
	}
	
	public boolean delete (Chambre o) {
		String req= "delete from chambre  where id=?";
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
	
	
	public  Chambre  findById (int id) {
		String req= "select *  from chambre  where id=?";
		Chambre ls= null;
		try {
			PreparedStatement ps= Connexion.getInstane().getConnection().prepareStatement(req);
			ps.setInt(1,id); 
			ResultSet rs= ps.executeQuery();
			if(rs.next()) {
				return  new Chambre(rs.getInt("id"),rs.getInt("numero"),rs.getString("prix"),rs.getString("type")) ;
			} 
				 
			 
		}catch(Exception e ) {
			System.out.println("findById "+e.getMessage());
		}
		return null;
	}
	@Override
	public List<Chambre>  findAll() {
		List<Chambre> ls= new ArrayList<Chambre>();
		String req= "select * from chambre ";
		
		try {
			PreparedStatement ps= Connexion.getInstane().getConnection().prepareStatement(req);
			ResultSet rs= ps.executeQuery();
			while(rs.next()) {
				 ls.add( new Chambre(rs.getInt("id"),rs.getInt("numero"),rs.getString("prix"),rs.getString("type"))) ;
			} 	 
		}catch (SQLException e) {
            System.out.println("findAll " + e.getMessage());
        }
		return ls;
	}
	 

	
	 
}
