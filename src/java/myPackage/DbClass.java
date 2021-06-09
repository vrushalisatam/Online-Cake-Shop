/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myPackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import myPackage.classes.User;

/**
 *
 * @author Admin
 */
public class DbClass {
    private Connection conn;
    public DbClass() throws ClassNotFoundException, SQLException {
        establishConnection();
    }
    private void establishConnection() throws ClassNotFoundException, SQLException {
         Class.forName("com.mysql.cj.jdbc.Driver");
            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/celebakeation?autoReconnect=true&useSSL=false","root","system");
        }
    
    public ArrayList getAllUsers(){
        ArrayList list=new ArrayList();
        PreparedStatement pstm;
        try {
            pstm = conn.prepareStatement("Select * from users where customer_id != 100");
            ResultSet rs=pstm.executeQuery();
            while(rs.next()){
                User user =new User(rs.getString("name"),rs.getString("email"),rs.getString("password"),rs.getString("contact_no"),rs.getString("address"));
            list.add(user);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
        return list;
    }
    
     public String getEmailId(String emailId){
        String str = null;
        PreparedStatement pstm;
        try {
            pstm = conn.prepareStatement("Select email from users where email=?");
            pstm.setString(1,emailId);
            ResultSet rs=pstm.executeQuery();            
            pstm = conn.prepareStatement("Select admin_email from admin where admin_email=?");
            pstm.setString(1,emailId);
            ResultSet rs1=pstm.executeQuery();
            if(rs.next()){
                str = rs.getString("email");
            }
            if(rs1.next()){
                str = rs1.getString("admin_email");
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return str;
    }
     
     public User getUserDetails(String emailId){
         User userDetails=null;
         
         try {
            String sql="SELECT name,email,password,contact_no,address from users where email=?";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, emailId);
            ResultSet rs=pstm.executeQuery();
            while(rs.next()){
                userDetails=new User(rs.getString("name"),rs.getString("email"),rs.getString("password"),rs.getString("contact_no"),rs.getString("address"));
            }
            pstm.close();
        } catch (SQLException ex) {
            Logger.getLogger(DbClass.class.getName()).log(Level.SEVERE, null, ex);
        }
         return userDetails;
    }
    
    public void addNewUser(String fname,String emailId,String pass,String contact,String address){
        try {
            String sql="INSERT into users(name,email,password,contact_no,address)"+ "Values(?,?,?,?,?)";
            
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1,fname);
            pstm.setString(2,emailId );
            pstm.setString(3,pass);
            pstm.setString(4,contact);
            pstm.setString(5,address );
            pstm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DbClass.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
  
    
   public void updateUser(String fname,String emailId,String pass,String contact,String address){
        try {
            
            String sql="Update users set name=?, password=?  , contact_no=? , address=? where email='"+emailId+"'";
            
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1,fname);
            pstm.setString(2,pass );
            pstm.setString(3,contact);
            pstm.setString(4,address );
            pstm.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(DbClass.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
   public void addFeedback(String fname,String emailId,String feedback){
       try{
           String sql = "select customer_id from users where email = '"+ emailId +"'";
           PreparedStatement pstm = conn.prepareStatement(sql);
           ResultSet rs=pstm.executeQuery();
           while(rs.next()){
               int cid = rs.getInt("customer_id");
               String sql1 = "insert into feedback(customerID,customer_name,feedbacks) values(?,?,?)";
               PreparedStatement pst = conn.prepareStatement(sql1);
               pst.setInt(1, cid);
               pst.setString(2, fname);
               pst.setString(3,feedback);
               pst.executeUpdate();
            }
        }catch (SQLException ex) {
            Logger.getLogger(DbClass.class.getName()).log(Level.SEVERE, null, ex);
        }
   }
    
    
    
   
   
    public boolean loginValidate(String emailId, String userPass) throws SQLException{
    
    String sql2="Select * from admin where admin_email=?";
    String sql="SELECT * FROM users WHERE email=?";
    PreparedStatement pstm=conn.prepareStatement(sql);
    PreparedStatement pst1=conn.prepareStatement(sql2);
    pst1.setString(1,emailId);
    pstm.setString(1,emailId);
    ResultSet rst = pst1.executeQuery();
    ResultSet rs=pstm.executeQuery();
    if(rs.next()){
        String uname=rs.getString("email");
        String pass=rs.getString("password");
            if( uname.equals(emailId) && pass.equals(userPass)){
                  return true;
            } 
        }
    else if(rst.next()){
        String uname=rst.getString("admin_email");
        String pass=rst.getString("password");
            if( uname.equals(emailId) && pass.equals(userPass)){
                  return true;
             } 
        }
          return false;
    }


    
    public ArrayList getAllGift(){
        ArrayList list=new ArrayList();
        //Products gift = null;
        try {
            String sql="SELECT * from products";
            PreparedStatement pstm = conn.prepareStatement(sql);
                ResultSet rs=pstm.executeQuery();
                while(rs.next()){
                    list.add(rs.getString(1));
                    list.add(rs.getString(2));
                  list.add(rs.getBlob(3));
                  list.add(rs.getString(4));
                 list.add(rs.getString(5));
                   list.add(rs.getString(6));
                    //gift =new Gift(rs.getInt(1),rs.getString(2),
                        //rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
            //list.add(gift);
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(DbClass.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public void updateBooking(String emailID) throws SQLException{
        
        String cmd = "select customer_id from users where email ='"+emailID+"'";
        PreparedStatement pstm = conn.prepareStatement(cmd);
        ResultSet rs=pstm.executeQuery();
        while(rs.next()){
            int cid = rs.getInt("customer_id");
            String sql = "update bookings set status='Confirm' where status ='Booked' and customer_ID='"+cid+"'";
            pstm=conn.prepareStatement(sql);
            pstm.executeUpdate();
        }
    }
    
    public void confirmBooking(String emailID) throws SQLException
    {
        String cmd = "select customer_id,name from users where email ='"+emailID+"'";
        PreparedStatement pstm = conn.prepareStatement(cmd);
        ResultSet rs=pstm.executeQuery();
        while(rs.next()){
            int cid = rs.getInt("customer_id");
            String name=rs.getString("name");
            String sql = "update bookings set status='Confirm', customer_ID="+cid+", customer_NAME='"+name+"' where status ='Booked' and customer_ID="+100;
            pstm=conn.prepareStatement(sql);
            pstm.executeUpdate();
        }
    }
    
   
    public void delGift(int id){
        try {
            String sql="DELETE from products where Pid=?";
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setInt(1,id);
            pstm.executeUpdate();
            pstm.close();
        } catch (SQLException ex) {
            Logger.getLogger(DbClass.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void delBooking(int id){
        try {
            String sql="DELETE from bookings where booking_id=?";
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setInt(1,id);
            pstm.executeUpdate();
            pstm.close();
        } catch (SQLException ex) {
            Logger.getLogger(DbClass.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
   
}
