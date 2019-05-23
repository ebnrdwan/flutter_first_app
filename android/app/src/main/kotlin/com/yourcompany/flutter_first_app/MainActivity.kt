package com.yourcompany.flutter_first_app

import android.content.Intent
import android.os.Bundle

import io.flutter.app.FlutterActivity
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
    lateinit var sharedText:String
  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    GeneratedPluginRegistrant.registerWith(this);
      if (Intent.ACTION_SEND.equals(intent.action) && intent.type != null) {
          if ("text/plain".equals(intent.type)) {
              handleSendText(intent); // Handle text being sent
          }
      }

      MethodChannel(flutterView,"").setMethodCallHandler { methodCall, methodChannel ->
          if (methodCall.method.contentEquals("getSharedText")) {
              methodChannel.success(sharedText);
              sharedText = "name";
          }
      }
  }

    fun handleSendText(intent: Intent) {
        sharedText = intent.getStringExtra(Intent.EXTRA_TEXT)
    }
}
