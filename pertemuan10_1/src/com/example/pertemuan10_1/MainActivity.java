package com.example.pertemuan10_1;

import android.os.Bundle;
import java.util.ArrayList;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends Activity {

	/** Called when the activity is first created. */
	EditText nim,nama,jur;
	Button sim;
	@Override
		 protected void onCreate(Bundle savedInstanceState) {
		 super.onCreate(savedInstanceState);
		 setContentView(R.layout.activity_main);
		 nim=(EditText)findViewById(R.id.Enim);
		 nama=(EditText)findViewById(R.id.Enama);
		 jur=(EditText)findViewById(R.id.Ejurusan);
		 sim=(Button)findViewById(R.id.simpan);
		 sim.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				ArrayList<NameValuePair> postparameter=new
				ArrayList<NameValuePair>();
				postparameter.add(new
				BasicNameValuePair("nim",nim.getText().toString()));
				postparameter.add(new
				BasicNameValuePair("nama",nama.getText().toString()));
				postparameter.add(new
				BasicNameValuePair("jurusan",jur.getText().toString()));
				String respon=null;
				
				try{
					respon=CustomHttpClient.executeHttpPost("http://10.0.2.2/koneksi.php",postparameter);
					String res=respon.toString();
					res=res.trim();
					res=res.replaceAll("\\s", "");
					if(res.equals("1"))
					Toast.makeText(getApplicationContext(), "Data Sudah Tersimpan",
					Toast.LENGTH_LONG).show();
					else
					Toast.makeText(getApplicationContext(), "Data Sudah Tersimpan Ke Server", Toast.LENGTH_LONG).show();
						}catch(Exception e){
						Toast.makeText(getApplicationContext(),
						"Error :"+ e.toString(), Toast.LENGTH_LONG).show();
								}
							}
						}
					);
				 }
}
