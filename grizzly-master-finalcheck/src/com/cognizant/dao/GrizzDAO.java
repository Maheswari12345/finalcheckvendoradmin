package com.cognizant.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.cognizant.bean.Grizz;

public class GrizzDAO {
	public static Connection connect()  throws Exception{
		Connection conn=null;
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
	
	return conn;
	
		
	}
	public int insert(Grizz gr) throws Exception
	{
		Connection conn=connect();
		String insertQuery= "insert into product(id,category,name,description,price) values (?,?,?,?,?)";
	
		PreparedStatement pstmt = conn.prepareStatement(insertQuery);
		pstmt.setInt(1, gr.getId());
		pstmt.setString(2, gr.getCategory());
		pstmt.setString(3, gr.getName());
		
		pstmt.setString(4,gr.getDescription());
		pstmt.setInt(5, gr.getPrice());
		
	
		int insertstatus=0;
		insertstatus=pstmt.executeUpdate();
		return insertstatus;
		
	
	}
	public int insert1(Grizz gr) throws Exception
	{
		Connection conn=connect();
		String insertQuery= "insert into vendorproduct(name,offer,quantity,instock,buffer,req) values (?,?,?,?,?,?)";
	
		PreparedStatement pstmt = conn.prepareStatement(insertQuery);
		pstmt.setString(1, gr.getName());
		pstmt.setInt(2, gr.getOffer());
		pstmt.setInt(3, gr.getQuantity());
		
		pstmt.setInt(4,gr.getInstock());
		pstmt.setInt(5, gr.getBuffer());
		pstmt.setInt(6, gr.getReq());
	
		int insertstatus=0;
		insertstatus=pstmt.executeUpdate();
		return insertstatus;
		
	
	}
	
	
	
	public int delete(String Name)throws Exception
	
	{
		Connection conn=connect();
		String deleteQuery="delete from product where name= '"+ Name+"'";
		int delete=0;
		Statement stmt=conn.createStatement();
		delete=stmt.executeUpdate(deleteQuery);
		return delete;
	
	}
public int delete1(String Name)throws Exception
	
	{
		Connection conn=connect();
		String deleteQuery="delete from vendorproduct where name= '"+ Name+"'";
		int delete=0;
		Statement stmt=conn.createStatement();
		delete=stmt.executeUpdate(deleteQuery);
		return delete;
	
	}
	
	public int update(Grizz gr)throws Exception
	{
		Connection conn=connect();
		String updateQuery="update product set name=?,category=?,description=?,price=? where id=?";
		PreparedStatement pstmt=conn.prepareStatement(updateQuery);
		pstmt.setInt(5, gr.getId());
		pstmt.setString(1,gr.getName());
		pstmt.setString(2,gr.getCategory());
		pstmt.setString(3, gr.getDescription());
		pstmt.setInt(4, gr.getPrice());
		
		
		int up=0;
		up=pstmt.executeUpdate();
		return up;
	
	}
	public int update1(Grizz gr)throws Exception
	{
		Connection conn=connect();
		String updateQuery="update vendorproduct set instock=?,buffer=? where name=?";
		PreparedStatement pstmt=conn.prepareStatement(updateQuery);
	
		pstmt.setString(3,gr.getName());
		
		pstmt.setInt(1, gr.getInstock());
	
		pstmt.setInt(2, gr.getBuffer());
		
		
		
		
		int up=0;
		up=pstmt.executeUpdate();
		return up;
	
	}

	public Grizz read(String Name)throws Exception
	{
		Connection conn=connect();
		String read="select name,brand,description,price,rating from product where name='"+Name+"'";
		Statement stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery(read);
		Grizz gr=new Grizz();
		if(rs.next())
		{
		
		
		gr.setName(rs.getString(1));
		gr.setBrand(rs.getString(2));
	
		gr.setDescription(rs.getString(3));
		gr.setPrice(rs.getInt(4));
		gr.setRating(rs.getFloat(5));

	
		}
		return gr;
	}
	public Grizz read1(String Name)throws Exception
	{
		Connection conn=connect();
		String read="select product.name,product.id,vendorproduct.instock,vendorproduct.req,vendorproduct.buffer,product.price,product.rating from product inner join vendorproduct on product.name=vendorproduct.name";
		Statement stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery(read);
		Grizz gr=new Grizz();
		if(rs.next())
		{
		
		
			 gr.setName(rs.getString(1));
             gr.setId(rs.getInt(2));
             gr.setInstock(rs.getInt(3));
             gr.setReq(rs.getInt(4));
             gr.setBuffer(rs.getInt(5));
             gr.setPrice(rs.getInt(6));
             gr.setRating(rs.getFloat(7));
            

	
		}
		return gr;
	}
	
	
	
	
	
	
	public List<Grizz> readAll()throws Exception
	{
		Connection conn=connect();
		List<Grizz> grList=new ArrayList<Grizz>();
        String read = "select name,brand,category,rating,description,price from product";
    	Statement stmt=conn.createStatement();
       
        ResultSet rs = stmt.executeQuery(read);
        
        
        while(rs.next())
        {
             Grizz gr = new Grizz();
            
             gr.setName(rs.getString(1));
             gr.setBrand(rs.getString(2));
             gr.setCategory(rs.getString(3));
             gr.setRating(rs.getFloat(4));
             gr.setDescription(rs.getString(5));
             gr.setPrice(rs.getInt(6));
     		
     		

            
           
             grList.add(gr);
        }
        

		return grList;
	}
	public List<Grizz> readAll1()throws Exception
	{
		Connection conn=connect();
		List<Grizz> grList=new ArrayList<Grizz>();
        String read = "select product.name,product.id,product.brand,product.category,vendorproduct.offer from product inner join vendorproduct on product.name=vendorproduct.name";
    	Statement stmt=conn.createStatement();
       
        ResultSet rs = stmt.executeQuery(read);
        
        
        while(rs.next())
        {
             Grizz gr = new Grizz();
            
             gr.setName(rs.getString(1));
             gr.setId(rs.getInt(2));
             gr.setBrand(rs.getString(3));
             gr.setCategory(rs.getString(4));
             gr.setOffer(rs.getInt(5));
             grList.add(gr);
        }
        

		return grList;
	}
	public List<Grizz> readAll2()throws Exception
	{
		Connection conn=connect();
		List<Grizz> grList=new ArrayList<Grizz>();
        String read = "select product.name,product.id,vendorproduct.instock,vendorproduct.req,vendorproduct.buffer,product.price,product.rating from product inner join vendorproduct on product.name=vendorproduct.name";
    	Statement stmt=conn.createStatement();
       
        ResultSet rs = stmt.executeQuery(read);
        
        
        while(rs.next())
        {
             Grizz gr = new Grizz();
            
             gr.setName(rs.getString(1));
             gr.setId(rs.getInt(2));
             gr.setInstock(rs.getInt(3));
             gr.setReq(rs.getInt(4));
             gr.setBuffer(rs.getInt(5));
             gr.setPrice(rs.getInt(6));
             gr.setRating(rs.getFloat(7));
             grList.add(gr);
            
        }
        

		return grList;
	}
	public Grizz readPage(String userName)throws Exception
	{
		Connection conn=connect();
		String read="select username,id,designation,office from login_page where username='"+userName+"'";
		Statement stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery(read);
		Grizz gr=new Grizz();
		if(rs.next())
		{
		gr.setUsername(rs.getString(1));
		gr.setUserid(rs.getString(2));
		gr.setDesignation(rs.getString(3));
		gr.setOffice(rs.getString(4));
	
		}
		return gr;
	}
	public Grizz readPage1(String userName)throws Exception
	{
		Connection conn=connect();
		String read="select username,vendorrating,mobile,address from login_page where username='"+userName+"'";
		Statement stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery(read);
		Grizz gr=new Grizz();
		if(rs.next())
		{
		gr.setUsername(rs.getString(1));
		gr.setVendorrating(rs.getInt(2));

		gr.setMobile(rs.getInt(3));
		
		gr.setAddress(rs.getString(4));
	
		}
		return gr;
	}
	
	
	
}
