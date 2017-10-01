package com.example.stian.mattis;

import android.os.Parcel;
import android.os.Parcelable;

/**
 * Created by Matias on 10/7/2015.
 */
public class Question implements Parcelable{

    private String question;
    private String correctAnswer;
    private String wrongAnswer1;
    private String wrongAnswer2;
    private int drawable = 0;

    public int getDrawable() {
        return drawable;
    }

    public Question(Parcel input){
        question = input.readString();
        correctAnswer = input.readString();
        wrongAnswer1 = input.readString();
        wrongAnswer2 = input.readString();
    }

    public Question(String question, String correctAnswer, String wrongAnswer1, String wrongAnswer2){
        this.question = question;
        this.correctAnswer = correctAnswer;
        this.wrongAnswer1 = wrongAnswer1;
        this.wrongAnswer2 = wrongAnswer2;

    }

    public Question(String question, String correctAnswer, String wrongAnswer1, String wrongAnswer2, int drawable){
        this.drawable = drawable;
        this.question = question;
        this.correctAnswer = correctAnswer;
        this.wrongAnswer1 = wrongAnswer1;
        this.wrongAnswer2 = wrongAnswer2;

    }

    public void setQuestion(String question, String correctAnswer, String wrongAnswer1, String wrongAnswer2) {
        this.question = question;
        this.correctAnswer = correctAnswer;
        this.wrongAnswer1 = wrongAnswer1;
        this.wrongAnswer2 = wrongAnswer2;
    }

    public String getQuestion(){
        return question;
    }

    public String getCorrectAnswer() {
        return correctAnswer;
    }

    public String getWrongAnswer1() {
        return wrongAnswer1;
    }

    public String getWrongAnswer2() {
        return wrongAnswer2;
    }

    public static final Parcelable.Creator<Question> CREATOR
            = new Parcelable.Creator<Question>() {
        public Question createFromParcel(Parcel in) {
            return new Question(in);
        }

        public Question[] newArray(int size) {
            return new Question[size];
        }
    };


    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(question);
        dest.writeString(correctAnswer);
        dest.writeString(wrongAnswer1);
        dest.writeString(wrongAnswer2);
    }
}
