package com.example.flutter_starter_template

import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import android.util.Log

class MainActivity: FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        Log.d("MainActivity", "flavor: ${context.getString(R.string.dartFlavor)}")
    }
}
