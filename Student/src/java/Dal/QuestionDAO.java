package Dal;

import Model.Answer;
import Model.Question;
import DB.DBContext;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Thaycacac
 */
public class QuestionDAO {

    public ArrayList<Question> getListQuestion(int quizId) {
        ArrayList<Question> listQuestion = new ArrayList<>();
        Connection con = null;
        DBContext db = new DBContext();
        try {
            con = db.getConnection();
            Statement stmt = con.createStatement();
            String sql = "SELECT qn.questionId, qn.Content FROM Question qn\n"
                    + "INNER JOIN QuestionQuiz qz\n"
                    + "ON qn.questionId = qz.QuestionID\n"
                    + "WHERE qz.QuizID = " + quizId;
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt(1);
                String content = rs.getString(2);
                AnswerDAO ansDao = new AnswerDAO();
                ArrayList<Answer> listAns = ansDao.getListAnswer(id);

                Question question = new Question(id, content, listAns);
                listQuestion.add(question);
            }
            return listQuestion;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Question> getListQuestionNotDone(int quizId, ArrayList<Integer> questionDone) {
        ArrayList<Question> listQuestion = new ArrayList<>();
        Connection con = null;
        DBContext db = new DBContext();
        try {
            con = db.getConnection();
            Statement stmt = con.createStatement();
            String sql = "SELECT qn.questionId, qn.Content FROM Question qn\n"
                    + "INNER JOIN QuestionQuiz qz\n"
                    + "ON qn.questionId = qz.QuestionID\n"
                    + "WHERE qz.QuizID = " + quizId;
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt(1);
                String content = rs.getString(2);
                boolean check = true;
                for (Integer integer : questionDone) {
                    if (id == integer) {
                        check = false;
                        break;
                    }
                }
                if (check == false) {
                    continue;
                }
                AnswerDAO ansDao = new AnswerDAO();
                ArrayList<Answer> listAns = ansDao.getListAnswer(id);

                Question question = new Question(id, content, listAns);
                listQuestion.add(question);
            }
            return listQuestion;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    
    public static void main(String[] args) {
        QuestionDAO dao = new QuestionDAO();
        ArrayList<Integer> questionDone = new ArrayList<>();
        ArrayList<Question> list = dao.getListQuestion(1);
        System.out.println(list);

//        ArrayList<Question> list = dao.getListQuestionNotDone(1,questionDone);
//        System.out.println(list);
    }
}
