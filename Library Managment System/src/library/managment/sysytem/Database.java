package library.managment.sysytem;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Database 
{

    public static Connection getCon() throws ClassNotFoundException, SQLException {
        {
            try
            { 
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?zeroDateTimeBehavior=convertToNull","root","");
                return con;
            }
            catch(Exception e)
            {
              System.out.println(e);
              return null;
            }
        
   
        }    
    
    }

    void openConnection() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

   
    
}
