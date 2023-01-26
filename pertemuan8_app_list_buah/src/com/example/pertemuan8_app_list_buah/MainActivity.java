package com.example.pertemuan8_app_list_buah;

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Toast;

public class MainActivity extends Activity {
	ListView listbuah;
	String[] buahbuahan = {
			"Belimbing",
			"Jambu",
			"Mangga",
			"Rambutan",
			"Sirsak",
	};

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ArrayAdapter<String> adapter = new ArrayAdapter<String>(this, android.R.layout.simple_expandable_list_item_1, buahbuahan);
        //--ListView---
        listbuah = (ListView) findViewById (R.id.ListView1);
        listbuah.setAdapter(adapter);
        listbuah.setOnItemClickListener(new OnItemClickListener() {

			@Override
			public void onItemClick(AdapterView<?> arg0, View arg1, int arg2,
					long arg3) {
				// TODO Auto-generated method stub
				int index = arg2;
				Toast.makeText(getBaseContext(), "List yang dipilih : " + buahbuahan[index], Toast.LENGTH_SHORT).show();
			}
        	
        });
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

}
