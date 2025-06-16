plugins {
    id("com.android.application")
    id("kotlin-android")
    // O plugin do Flutter deve vir depois dos outros plugins
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.seuprojeto.vitalsync" // <- Certifique-se de que seja igual ao package do AndroidManifest
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        // ID único do aplicativo (deve bater com o do AndroidManifest.xml)
        applicationId = "com.seuprojeto.vitalsync"

        // Versões herdadas do Flutter — estão corretas
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // Pode configurar seu signingConfig aqui futuramente
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}


