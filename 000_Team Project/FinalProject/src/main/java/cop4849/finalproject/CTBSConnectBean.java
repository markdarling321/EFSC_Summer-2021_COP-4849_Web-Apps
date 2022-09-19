package cop4849.finalproject;

// IMPORTS
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.faces.bean.ApplicationScoped;
import javax.inject.Named;
import javax.faces.bean.ManagedBean;

// BEAN ANNOTATIONS
@Named
@ApplicationScoped
@ManagedBean
public final class CTBSConnectBean {

    // GLOBAL CONSTANTS
    private static final String 
            URL = "jdbc:derby://localhost:1527/teamproject",
            USERNAME = "efsc",
            PASSWORD = "efsc";
    
    // INSTANCE VARIABLES
    private Connection connection;
    
    // EMPTY CONSTRUCTOR
    public CTBSConnectBean() {
        connect();
    }// END EMPTY CONSTRUCTOR
    
    public void connect() {
        try {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        }
        catch (SQLException ignored) {
            connection = null;
        }
    }// END connect()
    
    public Connection getConnection() {
        return connection;
    }// END getConnection()
    
    public boolean getIsConnected() {
        return connection != null;
    }// END getIsConnected()
    
}// END CTBSConnectBean{}