package com.iiitdmj.lnf
import android.os.Bundle
import android.os.Handler
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine


class MainActivity: FlutterActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        // Set the content view to your custom splash screen layout
        setContentView(R.layout.splash_screen)

        // Delay for 2 seconds and then launch the Flutter app
        Handler().postDelayed({
            // Continue with Flutter initialization
            super.onCreate(null)
        }, 2000)
}

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        // Configure your Flutter engine here
    }
}
