/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author admin's
 */
public class Answer {
    private int AnswerID;
    private int QuestionID;
    private String Text;
    private boolean IsCorrectAnswer;
    
    public Answer(){}

    public Answer(int AnswerID, int QuestionID, String Text, boolean IsCorrectAnswer) {
        this.AnswerID = AnswerID;
        this.QuestionID = QuestionID;
        this.Text = Text;
        this.IsCorrectAnswer = IsCorrectAnswer;
    }

    public int getAnswerID() {
        return AnswerID;
    }

    public void setAnswerID(int AnswerID) {
        this.AnswerID = AnswerID;
    }

    public int getQuestionID() {
        return QuestionID;
    }

    public void setQuestionID(int QuestionID) {
        this.QuestionID = QuestionID;
    }

    public String getText() {
        return Text;
    }

    public void setText(String Text) {
        this.Text = Text;
    }

    public boolean isIsCorrectAnswer() {
        return IsCorrectAnswer;
    }

    public void setIsCorrectAnswer(boolean IsCorrectAnswer) {
        this.IsCorrectAnswer = IsCorrectAnswer;
    }

   
}
