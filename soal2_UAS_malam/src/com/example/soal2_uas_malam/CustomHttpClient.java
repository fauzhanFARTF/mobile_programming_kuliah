package com.example.soal2_uas_malam;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URI;
import java.util.ArrayList;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
public class CustomHttpClient {
	public static final int HTTP_TIMEOUT=30*1000;
	private static HttpClient mHttpClient;
	private static HttpClient geHttpClient() {
		if (mHttpClient==null){
			mHttpClient=new DefaultHttpClient();
			final HttpParams params=mHttpClient.getParams();
			HttpConnectionParams.setConnectionTimeout(params,
			HTTP_TIMEOUT);
			HttpConnectionParams.setSoTimeout(params,
			HTTP_TIMEOUT);
			ConnManagerParams.setTimeout(params, HTTP_TIMEOUT);
		}
		return mHttpClient;
	}
	public static String executeHttpPost(String url,ArrayList<NameValuePair>posparameter)throws Exception {
		BufferedReader in=null;
		try{
			HttpClient client=geHttpClient();
			HttpPost request=new HttpPost(url);
			UrlEncodedFormEntity formEntity=new
			UrlEncodedFormEntity(posparameter);
			request.setEntity(formEntity);
			HttpResponse respon=client.execute(request);
			in=new BufferedReader(new
			InputStreamReader(respon.getEntity().getContent()));
			StringBuffer sb=new StringBuffer("");
			String line="";
			String NL=System.getProperty("line.separator");
			while ((line=in.readLine())!=null){
				sb.append(line+NL);
			}
			in.close();
			String result=sb.toString();
			return result;
		}finally{
			if(in != null){
			try{
				in.close();
				}catch(IOException e){
				e.printStackTrace();
				}
			}
		}
	}
	public static String executeHttpget(String url)throws Exception{
		BufferedReader in=null;
		try{
			HttpClient client=geHttpClient();
			HttpGet request=new HttpGet();
			request.setURI(new URI(url));
			HttpResponse respon=client.execute(request);
			in=new BufferedReader(new
			InputStreamReader(respon.getEntity().getContent()));
			StringBuffer sb=new StringBuffer("");
			String line="";
			String NL=System.getProperty("line.separator");
			while ((line=in.readLine())!=null){
				sb.append(line+NL);
			}
			in.close();
			String result=sb.toString();
			return result;
		}finally{
			if(in !=null){
				try{
				in.close();
				}catch(IOException e){
					e.printStackTrace();
				}
			}
		}
	}	
}