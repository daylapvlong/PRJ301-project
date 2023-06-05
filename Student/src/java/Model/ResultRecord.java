/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.ArrayList;

/**
 *
 * @author admin's
 */
public class ResultRecord {
    private int ResultRecordID;
    private int QuestionID;
    private int StudentID;
    private String name;
    private double process;
    ArrayList<Boolean> listAns;
    
    public ResultRecord(){}

    public ResultRecord(int ResultRecordID, int QuestionID, int StudentID, String name, double process, ArrayList<Boolean> listAns) {
        this.ResultRecordID = ResultRecordID;
        this.QuestionID = QuestionID;
        this.StudentID = StudentID;
        this.name = name;
        this.process = process;
        this.listAns = listAns;
    }

    public int getResultRecordID() {
        return ResultRecordID;
    }

    public void setResultRecordID(int ResultRecordID) {
        this.ResultRecordID = ResultRecordID;
    }

    public int getQuestionID() {
        return QuestionID;
    }

    public void setQuestionID(int QuestionID) {
        this.QuestionID = QuestionID;
    }

    public int getStudentID() {
        return StudentID;
    }

    public void setStudentID(int StudentID) {
        this.StudentID = StudentID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getProcess() {
        return process;
    }

    public void setProcess(double process) {
        this.process = process;
    }

    public ArrayList<Boolean> getListAns() {
        return listAns;
    }

    public void setListAns(ArrayList<Boolean> listAns) {
        this.listAns = listAns;
    }
    
    
}
