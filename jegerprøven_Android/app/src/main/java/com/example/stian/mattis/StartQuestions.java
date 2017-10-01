package com.example.stian.mattis;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import java.util.Random;


public class StartQuestions extends AppCompatActivity {
    private ImageView picture;
    private TextView staatt;
    private TextView rightWrong;
    private TextView scoreText;
    private Button ferdig;
    private Button sjekk;
    private Button next;
    private TextView question;
    private TextView questionNum;
    private RadioButton radio1;
    private RadioButton radio2;
    private RadioButton radio3;
    private RadioGroup groupRadio;
    private RadioButton rightButton;
    private Questions q; //<--- skal være 50 men ikke nå brur


   public void setQandA(){
       Random rand = new Random();
        question.setText(q.setQuestion());
        groupRadio.clearCheck();
        sjekk.setEnabled(false);
       if (q.hasPicture()){
           picture.setVisibility(View.VISIBLE);
           picture.setAlpha((float) 1);
           picture.setImageResource(q.getPictureId());
       }
        switch (rand.nextInt(3)){
            case 0:
                radio1.setText(q.setRightAns());
                radio2.setText(q.setWrongAns1());
                radio3.setText(q.setWrongAns2());
                rightButton = radio1;
                break;
            case 1:
                radio3.setText(q.setRightAns());
                radio1.setText(q.setWrongAns1());
                radio2.setText(q.setWrongAns2());
                rightButton = radio3;
                break;
            case 2:
                radio2.setText(q.setRightAns());
                radio3.setText(q.setWrongAns1());
                radio1.setText(q.setWrongAns2());
                rightButton = radio2;
                break;
        }
       questionNum.setText(String.format("Spørsmål: %d",q.getAskedQuestions()+1));

   }

    public void activateSjekk(View view){
        sjekk.setEnabled(true);
    }


   public void startSjekk(View view){
       if (q.hasPicture()){
           picture.setAlpha((float) 0.4);
       }
       radio1.setClickable(false);
       radio2.setClickable(false);
       radio3.setClickable(false);
       sjekk.setVisibility(View.INVISIBLE);
       rightButton.setBackgroundResource(R.drawable.right);
       if(groupRadio.getCheckedRadioButtonId() == rightButton.getId()){
           q.rightAnswered();
           rightWrong.setText("Riktig!");
           scoreText.setText(String.format("Riktige: %d",q.getRightAnswered()));
       }
       else{
           findViewById( groupRadio.getCheckedRadioButtonId()).setBackgroundResource(R.drawable.wrong);
           rightWrong.setText("Feil!");
           scoreText.setText(String.format("Riktige: %d", q.getRightAnswered()));
       }
       rightWrong.setVisibility(View.VISIBLE);
       scoreText.setVisibility(View.VISIBLE);
       q.nextQuestion();
       if (q.getAskedQuestions() == q.getNumQuestions()){
           ferdig.setVisibility(View.VISIBLE);
           staatt.setVisibility(View.VISIBLE);

           if ((double)q.getRightAnswered()/q.getNumQuestions()  >=  0.8){
               rightWrong.setText("Bestått");
               staatt.setText("Gratulerer du har bestått!");
           }
           else{
               rightWrong.setText("Ikke bestått");
               staatt.setText("Dessverre, men du fikk ikke nok riktige.");
           }
       }
       else{
           next.setVisibility(View.VISIBLE);
       }

    }

    public void startMain(View view){
        Intent intent = new Intent(this, MainActivity.class );
        startActivity(intent);
    }


    public void nextQuestion(View view){
            radio1.setClickable(true);
            radio2.setClickable(true);
            radio3.setClickable(true);
            picture.setVisibility(View.INVISIBLE);
            rightWrong.setVisibility(View.INVISIBLE);
            next.setVisibility(View.INVISIBLE);
            question.setVisibility(View.VISIBLE);
            groupRadio.setVisibility(View.VISIBLE);
            sjekk.setVisibility(View.VISIBLE);

            radio1.setBackgroundResource(R.drawable.custom_checkbox);
            radio2.setBackgroundResource(R.drawable.custom_checkbox);
            radio3.setBackgroundResource(R.drawable.custom_checkbox);

            setQandA();
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_fifty_questions);

        Bundle intent = getIntent().getExtras();
        q = new Questions(intent.getInt("questions"),intent.getBoolean("artQuestions"));

        picture = (ImageView)findViewById(R.id.imageView);
        staatt =(TextView)findViewById(R.id.staatt);
        question = (TextView)findViewById(R.id.question);
        radio1 = (RadioButton)findViewById(R.id.radioButton1);
        radio2 = (RadioButton)findViewById(R.id.radioButton2);
        radio3 = (RadioButton)findViewById(R.id.radioButton3);
        groupRadio = (RadioGroup)findViewById(R.id.radioGroup);
        questionNum = (TextView)findViewById(R.id.questionNum);
        rightWrong = (TextView)findViewById(R.id.rightWrong);
        scoreText = (TextView)findViewById(R.id.scoreText);
        next = (Button)findViewById(R.id.nextQuestion);
        picture.setVisibility(View.INVISIBLE);
        rightWrong.setVisibility(View.INVISIBLE);
        next.setVisibility(View.INVISIBLE);
        staatt.setVisibility(View.INVISIBLE);
        sjekk = (Button)findViewById(R.id.sjekk);
        ferdig = (Button)findViewById(R.id.ferdig);
        ferdig.setVisibility(View.INVISIBLE);
        scoreText.setText(String.format("Riktige: %d",q.getRightAnswered()));
        setQandA();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_fifty_questions, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }
}
