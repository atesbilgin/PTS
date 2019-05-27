import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author mathics
 */
public class MyDb {
    
    Connection con;
    public Connection getCon()
    {        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://dijkstra.ug.bcc.bilkent.edu.tr:3306/b_gutlygeldiyev", "b.gutlygeldiyev", "n8BDEVTm");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(MyDb.class.getName()).log(Level.SEVERE, null, ex);
            
        }
        return con;
    }
    
    
    public void kullanıcıListesi() throws SQLException
    {
        
        
        if(con == null)
        {
            System.out.println("Veritabanı bağlı değil");
            con = getCon();
        }
        
            try{
                Statement stmt = con.createStatement();
                ResultSet res = stmt.executeQuery("select * from user");
                System.out.println("kullanıcılar");
                while(res.next())
                {
                    System.out.println(res.getString(1));
                }
            }catch(Exception e)
            {
                e.printStackTrace();
            }
        
    }
    
    public static void main(String[] args) throws SQLException
    {
        MyDb dbk = new MyDb();
        dbk.getCon();
        dbk.kullanıcıListesi();
    }
   public boolean kullanıcıKontrol(String kullanıcıAdı,String sifre)
    {
        if(con == null)
        {
            System.out.println("Veritabanı bağlı değil");
            con = getCon();
        }
            try{
                Statement stmt = con.createStatement();
                String query = "select password from Person where username="+"'"+kullanıcıAdı+"'";
                ResultSet res = stmt.executeQuery(query);
                
                String sonSifre = "";
                while(res.next())
                {
                    sonSifre += res.getString(1);
                }
                
                
                return sifre.equals(sonSifre);
                
            }catch(Exception e){
                e.printStackTrace();
            }
            return false;
    }

    private ResultSet executeQuery(String select__from_user) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public ArrayList<String> Myboards(String username){
            if(con == null)
            {
                System.out.println("Veritabanı bağlı değil");
                con = getCon();
            }
            ArrayList<String> rst = new ArrayList<String>();
                try{
                    Statement stmt = con.createStatement();

                    int id = UsernameToId(username);
                    
                    System.out.println("Kullanıcının adı = " + username);
                    System.out.println("Kullanıcının Id si = "+ id);

                    ResultSet res = stmt.executeQuery("select project_name from Board natural join Person where Person_ID='"+ id+"'");


                    while(res.next())
                    {           
                        rst.add(res.getString(1));
                    }

                }catch(Exception e)
                {
                    e.printStackTrace();
                }
                return rst;
        }
    
    public ArrayList<String> LeaderBoards(String username){
            if(con == null)
            {
                System.out.println("Veritabanı bağlı değil");
                con = getCon();
            }
            ArrayList<String> rst = new ArrayList<String>();
                try{
                    Statement stmt = con.createStatement();

                    int id = UsernameToId(username);
                    
                    System.out.println("Kullanıcının adı = " + username);
                    System.out.println("Kullanıcının Id si = "+ id);

                    ResultSet res = stmt.executeQuery("select project_name from Board natural join SuperUser where Person_ID='"+ id+"'");


                    while(res.next())
                    {           
                        rst.add(res.getString(1));
                    }

                }catch(Exception e)
                {
                    e.printStackTrace();
                }
                return rst;
        }
    
    public String IdToUsername(int ID)
    {
        if(con == null)
        {
            System.out.println("Veritabanı bağlı değil");
            con = getCon();
        }
        
            try{
                Statement stmt = con.createStatement();
                ResultSet res = stmt.executeQuery("select username from Person where Person_ID=" + ID);
                System.out.println("kullanıcılar");
                String uname = "";
                while(res.next())
                {
                    uname += res.getString(1);
                }
                
                return uname;
            }catch(Exception e)
            {
                e.printStackTrace();
            }
            
         return "-1";
    }
    
    public int UsernameToId(String username)
    {
        if(con == null)
        {
            System.out.println("Veritabanı bağlı değil");
            con = getCon();
        }
        
            try{
                Statement stmt = con.createStatement();
                ResultSet res = stmt.executeQuery("select Person_ID from Person where username='"+username+"'");
                System.out.println("kullanıcılar");
                int id = -1;
                while(res.next())
                    id = res.getInt(1);
                
                return id;
            }catch(Exception e)
            {
                e.printStackTrace();
            }
            
         return -1;
    }
    
    
   public ArrayList<String> ParticipatedBoards(String username){
            if(con == null)
            {
                System.out.println("Veritabanı bağlı değil");
                con = getCon();
            }
            ArrayList<String> rst = new ArrayList<String>();
                try{
                    Statement stmt = con.createStatement();

                    int id = UsernameToId(username);
                    
                    System.out.println("Kullanıcının adı = " + username);
                    System.out.println("Kullanıcının Id si = "+ id);

                    ResultSet res = stmt.executeQuery("select project_name from Board natural join User where Person_ID='"+ id+"'");


                    while(res.next())
                    {           
                        rst.add(res.getString(1));
                    }

                }catch(Exception e)
                {
                    e.printStackTrace();
                }
                return rst;
        }
    
    
    public int registerUser (String fullName,String email, String username,String password, String job,String age) {
        try {
            Statement stmt = con.createStatement();
            String query = "insert into Person (username,full_name,email,password,job,age) values(?,?,?,?,?,?)";
            PreparedStatement preparedStmt = con.prepareStatement(query);
            preparedStmt.setString(1,username);
            preparedStmt.setString(2,fullName);
            preparedStmt.setString(3,email);
            preparedStmt.setString(4,password);
            preparedStmt.setString(5,job);
            
            int a = -1;
            a = Integer.parseInt(age);
            if (a !=-1){
            preparedStmt.setString(6,Integer.toString(a));
            return preparedStmt.executeUpdate();
            }
            else 
                System.out.println("invalid age");
          

        } catch (Exception e) {
            e.printStackTrace();
        }
    
    
        return 0;
    }
    
    
    
    public boolean createTeam (String teamname, int superUser_id) {
            try {
            Statement stmt = con.createStatement();
            String query = "insert into Team (team_name,SuperUser_ID) values(?,?)";
            PreparedStatement preparedStmt = con.prepareStatement(query);
            preparedStmt.setString(1,teamname);
            preparedStmt.setString(2,Integer.toString(superUser_id));
            return preparedStmt.execute();
          

        } catch (Exception e) {
            e.printStackTrace();
        }
    
        return false;
    
    }
    
    public int getSuperUserID (String uname){
       
        try {
            int id =  UsernameToId(uname);
            if (id == -1)
                return -1;
           
          
            Statement stmt = con.createStatement();
            ResultSet res = stmt.executeQuery("select Person_ID from SuperUser where Person_ID=" + id);
            
            if (res.next() == false)
                return -1;
            
            else return id;

        } catch (Exception e) {
            e.printStackTrace();
        }
    
    
    
    
        return -1;
    }
    
    
    public ArrayList<String> getLists (String projectName){
        
    
        int id = getProjectID(projectName);
        if (id == -1)
            return null;
        
         ArrayList<String> rst = new ArrayList<String>();
        try {
             Statement stmt = con.createStatement(); 
             ResultSet results = stmt.executeQuery("select list_name from List where project_ID='"+id+"'");
             
             while(results.next()){
                 rst.add(results.getString("list_name"));
             }
             
             return rst;
             
        }catch(Exception e){ e.printStackTrace();}
        
        
            return null;
    }
    
    
    public int getProjectID (String projectName){
        try {
            Statement stmt = con.createStatement();
            String query = "select project_ID from Board where project_name='"+projectName+"'";
            ResultSet results = stmt.executeQuery(query);
            int id = -1;
            
            while (results.next())
                id = results.getInt("project_ID");
            
            return id;
            

        } catch (Exception e) {
            e.printStackTrace();
        }
    
    
        return -1;
    
    }
    
    
}


