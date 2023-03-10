package com.example.pertemuan10_activity_kirim_nilai;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.content.Intent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;


public class SecondActivity extends Activity {
	/**Called when the activity is first created. */
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.second_activity);
		
		TextView txtName = (TextView) findViewById(R.id.txtName);
		TextView txtEmail = (TextView) findViewById(R.id.txtEmail);
		Button btnClose = (Button) findViewById(R.id.btnClose);
		
		Intent i = getIntent();
		//Receiving the data
		String name = i.getStringExtra("name");
		String email = i.getStringExtra("email");
		
		//Displaying Received Data
		txtName.setText(name);
		txtEmail.setText(email);
		
		//Binding Click event to Button
		btnClose.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View arg0) {
				// TODO Auto-generated method stub
				//Closing SecondScreen Activity
				finish();
			}
		});
	}
}
