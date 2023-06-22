package Dal;

import Model.Answer;
import DB.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Thaycacac
 */
public class AnswerDAO extends DBContext {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public ArrayList<Answer> getListAnswer(int questionId) {
        ArrayList<Answer> listAnswer = new ArrayList<>();
        String query = "SELECT * FROM Answer WHERE questionID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1,questionId);
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                int quesId = rs.getInt(2);               
                String contet = rs.getString(3);
                boolean isCorrectAnswer = rs.getBoolean(4);
                Answer ans = new Answer(id, questionId, contet, isCorrectAnswer);
                listAnswer.add(ans);
            }
            return listAnswer;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    
    public static void main(String[] args) {
        AnswerDAO dao = new AnswerDAO();
        ArrayList<Answer> list = dao.getListAnswer(1);
        System.out.println(list);
    }
}
