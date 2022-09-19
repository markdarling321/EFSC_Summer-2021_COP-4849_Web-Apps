package cop4849.finalproject;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.faces.bean.RequestScoped;
import javax.inject.Inject;
import javax.inject.Named;
import javax.faces.bean.ManagedBean;

@Named
@RequestScoped
@ManagedBean
public final class CTBSNSCTDegreeBean {
    
    private static final String GET_NSCT_COURSES 
            = "SELECT * FROM SCHEDULE WHERE Networking = 'True' ORDER BY CourseNumber";
    private static final String
            NUMBER_COL = "CourseNumber",
            NAME_COL = "CourseName";
    
    private static final String[][] COL = {
        {"PB_40", "ME_40", "CO_40", "TI_40", "EL_40"},
        {"PB_10", "ME_10", "CO_10", "TI_10", "EL_10"},
        {"PB_20", "ME_20", "CO_20", "TI_20", "EL_20"}
    };
    private static final int 
            SEMESTER_COUNT = COL.length,
            CAMPUS_COUNT = COL[0].length;
            
    private final Connection connection;
    private Statement statement;
    private ResultSet resultSet;
    private ArrayList<CourseEntry> courses;
    private boolean dataCreated;
    
    public static class CourseEntry {
        
        private String number;
        private String name;
        private final boolean[][] offered 
                = new boolean[SEMESTER_COUNT][CAMPUS_COUNT];
        
        // getters and setters
        public String getName() {
            return name;
        }
        public void setName(String name) {
            this.name = name;
        }
        public String getNumber() {
            return this.number;
        }
        public void setNumber(String number) {
            this.number = number;
        }
        public boolean getCourseOffered(int semester, int campus) {
            return offered[semester][campus];
        }
        public void setCourseData(int semester, int campus, boolean offered) {
            this.offered[semester][campus] = offered;
        }
    }
    
    @Inject
    public CTBSNSCTDegreeBean() {
        CTBSConnectBean connectBean = new CTBSConnectBean();
        connection = connectBean.getConnection();
        if (createStatement()) {
            if (createQuery()) {
                createData();
            }
        }
    }
    
    public boolean getQueryCreated() {
        return resultSet != null;
    }
    
    public boolean getStatementCreated() {
        return statement != null;
    }
    
    public boolean getIsConnected() {
        return connection != null;
    }
    public ArrayList<CourseEntry> getCourses() {
        return courses;
    }
    
    private boolean createStatement() {
        if (connection != null) {
            try {
                statement = connection.createStatement();
            }
            catch (SQLException ignored) {
                return false;
            }
        }
        else {
            return false;
        }
        return true;
    }
    
    public boolean createQuery() {
        if (statement != null) {
            try {
                resultSet = statement.executeQuery(GET_NSCT_COURSES);
            }
            catch (SQLException ignored) {
                return false;
            }
        }
        else {
            return false;
        }
        return true;
    }
    
    private void createData() {
        dataCreated = false;
        if (resultSet != null) {
            courses = new ArrayList<>();
            try {
                while (resultSet.next()) {
                    CourseEntry newCourse = new CourseEntry();
                    newCourse.setName(resultSet.getString(NAME_COL));
                    newCourse.setNumber(resultSet.getString(NUMBER_COL));
                    for (int i = 0; i < SEMESTER_COUNT; i++) {
                        for (int j = 0; j < CAMPUS_COUNT; j++) {
                            newCourse.setCourseData(i, j,
                                    resultSet.getBoolean(COL[i][j]));
                        }
                    }
                    courses.add(newCourse);
                }
            }
            catch (SQLException ignored) {
                return;
            }
        }
        else {
            return;
        }
        dataCreated = true;
    }
    
}
