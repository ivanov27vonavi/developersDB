import Connection.ConectionConfiguration;

import java.sql.SQLException;

/**
 * Created by admin on 13.06.2017.
 */
public class Main {

    public static void main(String[] args) {
        java.sql.Connection connection = null;

        try {

            connection = ConectionConfiguration.getConnection();
            if (connection != null){
                System.out.println("Connection established !");
            }


        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if(connection != null){
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }

        }


    }
}
