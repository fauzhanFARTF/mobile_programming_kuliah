package com.example.soal4_uas_malam;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.content.Intent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class SecondActivity extends Activity {

	/**Called when the activity is first created. */
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_second);
		
		TextView txtPanjang = (TextView) findViewById(R.id.txtPanjang);
		TextView txtLebar = (TextView) findViewById(R.id.txtLebar);
		TextView txtTinggi = (TextView) findViewById(R.id.txtTinggi);
		TextView txtVolume = (TextView) findViewById(R.id.txtVolume);
		Button btnClose = (Button) findViewById(R.id.btnClose);
		
		Intent i = getIntent();
		//Receiving the data
		Integer jpanjang = i.getIntExtra("ipanjang", 0);
		Integer jlebar = i.getIntExtra("ilebar",0);
		Integer jtinggi = i.getIntExtra("itinggi",0);
		Integer jvolume = i.getIntExtra("ivolume", 0);
		
		//Displaying Received Data
		txtPanjang.setText(jpanjang);
		txtLebar.setText(jlebar);
		txtTinggi.setText(jtinggi);
		txtVolume.setText(jvolume);
		
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
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();
        if (id == R.id.action_settings) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
}
