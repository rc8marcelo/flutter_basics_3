package com.example.session_02

import android.content.Intent
import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
    companion object {
        const val CHANNEL = "platformchannels.example.com"
    }
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {

        GeneratedPluginRegistrant.registerWith(flutterEngine);
        val binaryMessenger = flutterEngine?.dartExecutor?.binaryMessenger
        val platformChannel = MethodChannel(binaryMessenger, CHANNEL)
        platformChannel.setMethodCallHandler { call, result ->
            if(call.method == "openView") {
                val name = call.argument<String>("name")
                val intent = Intent(this, SecondScreen::class.java)
                startActivity(intent)
                result.success()
            } else {
                result.notImplemented()
            }
        }
    }
}
