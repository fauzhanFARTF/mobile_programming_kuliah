package com.example.pertemuan10_activity_kirim_nilai;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;



public class MainActivity extends Activity {
      //Initializing variables
    	EditText inputName;
    	EditText inputEmail;
        @Override
        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            setContentView(R.layout.activity_main);
            
            inputName = (EditText)findViewById(R.id.name);
            inputEmail = (EditText)findViewById(R.id.email);
            Button btnNextScreen = (Button)findViewById(R.id.btnNextScreen);
            
            //Listening to button event
            btnNextScreen.setOnClickListener(new View.OnClickListener() {
    			
    			@Override
    			public void onClick(View arg0) {
    				// TODO Auto-generated method stub
    				//Starting a new Intent
    				Intent nextScreen = new Intent(getApplicationContext(),SecondActivity.class);
    				//Sending data to another Activity
    				nextScreen.putExtra("name", inputName.getText().toString());
    				nextScreen.putExtra("email", inputEmail.getText().toString());
    				
    				//Starting new activity
    				startActivity(nextScreen);
    			}
    		});
        }
    
}
