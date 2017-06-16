package Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by admin on 13.06.2017.
 */
public class ConectionConfiguration  {

    public static Connection getConnection(){
        Connection connection = null;

        try {

            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/initdb","root", "04031980");

        }catch (Exception e){

            e.printStackTrace();
        }
        return connection;
    }


}
