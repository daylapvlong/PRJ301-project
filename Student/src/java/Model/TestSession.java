/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.time.LocalDate;

/**
 *
 * @author admin's
 */
public class TestSession {
    private int TestSessionID;
    private String Code;
    private LocalDate StartDate;
    private LocalDate EndDate;
    private boolean IsInProgress;
    private int TestID;
    
    public TestSession(){}

    public TestSession(int TestSessionID, String Code, LocalDate StartDate, LocalDate EndDate, boolean IsInProgress, int TestID) {
        this.TestSessionID = TestSessionID;
        this.Code = Code;
        this.StartDate = StartDate;
        this.EndDate = EndDate;
        this.IsInProgress = IsInProgress;
        this.TestID = TestID;
    }

    public int getTestSessionID() {
        return TestSessionID;
    }

    public void setTestSessionID(int TestSessionID) {
        this.TestSessionID = TestSessionID;
    }

    public String getCode() {
        return Code;
    }

    public void setCode(String Code) {
        this.Code = Code;
    }

    public LocalDate getStartDate() {
        return StartDate;
    }

    public void setStartDate(LocalDate StartDate) {
        this.StartDate = StartDate;
    }

    public LocalDate getEndDate() {
        return EndDate;
    }

    public void setEndDate(LocalDate EndDate) {
        this.EndDate = EndDate;
    }

    public boolean isIsInProgress() {
        return IsInProgress;
    }

    public void setIsInProgress(boolean IsInProgress) {
        this.IsInProgress = IsInProgress;
    }

    public int getTestID() {
        return TestID;
    }

    public void setTestID(int TestID) {
        this.TestID = TestID;
    }

    
    
    
}
