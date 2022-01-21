package service;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import beans.Chambre;
import beans.Reservation;
import connexion.Connexion;
import doa.IDao;

public class ReservationService implements IDao<Reservation> {
	public boolean create (Reservation o) {
		String req= "insert into reservation  values(null,?,?,?,?)";
		try {
			PreparedStatement ps= Connexion.getInstane().getConnection().prepareStatement(req);
			ps.setString(1, o.getDateDebut());
			ps.setString(2, o.getDateFin());
			ps.setInt(3,o.getNumero());
			ps.setInt(4,o.getId_client()); 
			if(ps.executeUpdate()==1) {
				return true;
			}
		}catch(Exception e ) {
			System.out.println("create"+e.getMessage());
		}
		return false;
	} 
	
	
	@Override
	public List<Reservation>  findAll() {
		List<Reservation> ls= new ArrayList<Reservation>();
		String req= "select * from reservation ";
		
		try {
			PreparedStatement ps= Connexion.getInstane().getConnection().prepareStatement(req);
			ResultSet rs= ps.executeQuery();
			while(rs.next()) {
				 ls.add(  new Reservation(rs.getInt("id"),rs.getString("dateDebut"),rs.getString("dateFin"),rs.getInt("id_chambre"),rs.getInt("id_client"))) ;
			} 	 
		}catch (SQLException e) {
            System.out.println("findAll " + e.getMessage());
        }
		return ls;
	}
	@Override
	public boolean delete(Reservation o) {
		String req= "delete from reservation  where id=?";
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
	@Override
	public boolean update(Reservation o) {
		String req= "update reservation set dateDebut=?,dateFin=?,id_chambre=?,id_client=? where ID=?";
		try {
			PreparedStatement ps= Connexion.getInstane().getConnection().prepareStatement(req);
			ps.setString(1, o.getDateDebut());
			ps.setString(2, o.getDateFin());
			ps.setInt(3,o.getNumero());
			ps.setInt(4,o.getId_client());
			ps.setInt(5,o.getId());
			if(ps.executeUpdate()==1) {
				return true;
			}
		}catch(Exception e ) {
			System.out.println("Update"+e.getMessage());
		}
		return false;
	}
	@Override
	public Reservation findById(int id) {
		String req= "select *  from reservation  where ID=?";
		Chambre ls= null;
		try {
			PreparedStatement ps= Connexion.getInstane().getConnection().prepareStatement(req);
			ps.setInt(1,id); 
			ResultSet rs= ps.executeQuery();
			if(rs.next()) {
				return  new Reservation(rs.getInt("id"),rs.getString("dateDebut"),rs.getString("dateFin"),rs.getInt("id_chambre"),rs.getInt("id_client")) ;
			} 
				 
			 
		}catch(Exception e ) {
			System.out.println("findById "+e.getMessage());
		}
		return null;
	}
}
