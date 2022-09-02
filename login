
XML
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    tools:context=".loginform"
    android:orientation="vertical">

    <EditText
        android:id="@+id/ename"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:ems="10"
        android:layout_marginTop="150dp"
        android:layout_marginLeft="100dp"
        android:inputType="textPersonName"
        android:hint="Name" />

    <EditText
        android:id="@+id/epass"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:ems="10"
        android:layout_marginTop="10dp"
        android:layout_marginLeft="100dp"
        android:inputType="textPersonName"
        android:hint="Password" />

    <Button
        android:id="@+id/login"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginTop="10dp"
        android:layout_marginLeft="150dp"
        android:text="login" />
</LinearLayout>
















JAVA

package com.example.calc;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import java.util.Objects;

public class loginform extends AppCompatActivity {
    EditText ename,epass;
    Button login;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_loginform);
        ename=(EditText)findViewById(R.id.ename);
        epass=(EditText)findViewById(R.id.epass);
        login=(Button)findViewById(R.id.login);
        login.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(Objects.equals(ename.getText().toString(), "admin")&&Objects.equals(epass.getText().toString(),"admin"))
                {
                    Toast.makeText(getApplicationContext(),"Authentication Successful",Toast.LENGTH_LONG).show();
                }else
                {
                    Toast.makeText(getApplicationContext(),"Authentication Failed",Toast.LENGTH_LONG).show();
                }
            }
        });

    }
}
