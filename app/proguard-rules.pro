#
# Nextcloud Talk - Android Client
#
# SPDX-FileCopyrightText: 2017-2024 Nextcloud GmbH and Nextcloud contributors
# SPDX-License-Identifier: GPL-3.0-or-later
#
# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile
###############################################
# Kotlin / Coroutines
###############################################
-dontwarn kotlin.**
-keep class kotlin.** { *; }
-keep class kotlinx.** { *; }
-dontwarn kotlinx.coroutines.**
-keep class kotlinx.coroutines.internal.** { *; }

###############################################
# AndroidX
###############################################
-keep class androidx.** { *; }
-dontwarn androidx.**

###############################################
# Jetpack Compose
###############################################
-keep class androidx.compose.** { *; }
-dontwarn androidx.compose.**
-keep class androidx.activity.compose.** { *; }

###############################################
# Dagger / Hilt / AutoDagger2
###############################################
-keep class dagger.** { *; }
-dontwarn dagger.**
-keep class com.google.dagger.** { *; }
-keep class autodagger.** { *; }
-dontwarn autodagger.**

###############################################
# Room (KSP + Reflection)
###############################################
-keep class androidx.room.** { *; }
-dontwarn androidx.room.**
-keep class * extends androidx.room.RoomDatabase
-keepclassmembers class * {
    @androidx.room.* <methods>;
}

###############################################
# Retrofit + OkHttp + Gson + LoganSquare
###############################################
-keepattributes Signature
-dontwarn okhttp3.**
-keep class okhttp3.** { *; }

-keep class retrofit2.** { *; }
-dontwarn retrofit2.**

-keep class com.google.gson.** { *; }
-dontwarn com.google.gson.**

-keep class com.bluelinelabs.logansquare.** { *; }
-dontwarn com.bluelinelabs.logansquare.**

###############################################
# RxJava/RxAndroid
###############################################
-keep class io.reactivex.** { *; }
-dontwarn io.reactivex.**

###############################################
# EventBus
###############################################
-keep class org.greenrobot.eventbus.** { *; }
-keepclassmembers class ** {
    @org.greenrobot.eventbus.Subscribe <methods>;
}
-dontwarn org.greenrobot.eventbus.**

###############################################
# WebRTC (VERY IMPORTANT)
###############################################
-keep class org.webrtc.** { *; }
-keepclassmembers class org.webrtc.** { *; }
-dontwarn org.webrtc.**

###############################################
# Media3 / ExoPlayer
###############################################
-keep class androidx.media3.** { *; }
-dontwarn androidx.media3.**

###############################################
# CameraX
###############################################
-keep class androidx.camera.** { *; }
-dontwarn androidx.camera.**

###############################################
# TensorFlow Lite
###############################################
-keep class org.tensorflow.** { *; }
-dontwarn org.tensorflow.**

###############################################
# Mediapipe Vision
###############################################
-keep class com.google.mediapipe.** { *; }
-dontwarn com.google.mediapipe.**

###############################################
# OpenCV
###############################################
-keep class org.opencv.** { *; }
-dontwarn org.opencv.**

###############################################
# SQLCipher
###############################################
-keep class net.sqlcipher.** { *; }
-dontwarn net.sqlcipher.**

###############################################
# Conscrypt
###############################################
-keep class org.conscrypt.** { *; }
-dontwarn org.conscrypt.**

###############################################
# Coil Image Loader
###############################################
-keep class coil.** { *; }
-dontwarn coil.**

###############################################
# FIDO / FIDO2 HW Security
###############################################
-keep class com.github.nextcloud_deps.hwsecurity.** { *; }
-dontwarn com.github.nextcloud_deps.hwsecurity.**

###############################################
# OSMdroid
###############################################
-dontwarn org.osmdroid.**
-keep class org.osmdroid.** { *; }

###############################################
# PhotoView
###############################################
-keep class com.github.chrisbanes.photoview.** { *; }
-dontwarn com.github.chrisbanes.photoview.**

###############################################
# Parceler
###############################################
-keep class org.parceler.** { *; }
-dontwarn org.parceler.**

###############################################
# GifDrawable
###############################################
-keep class pl.droidsonroids.gif.** { *; }
-dontwarn pl.droidsonroids.gif.**

###############################################
# Markwon
###############################################
-keep class io.noties.markwon.** { *; }
-dontwarn io.noties.markwon.**

###############################################
# Javax / JSR / Misc
###############################################
-dontwarn javax.annotation.**
-dontwarn org.checkerframework.**
-dontwarn org.jetbrains.annotations.**

###############################################
# Keep Models (Gson / LoganSquare / Retrofit)
###############################################
-keepclassmembers class * {
    @com.bluelinelabs.logansquare.annotation.JsonField <fields>;
}

###############################################
# Prevent Removing Parcelable CREATOR
###############################################
-keepclassmembers class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}

###############################################
# Prevent Removing enums used via reflection
###############################################
-keepclassmembers enum * { *; }

###############################################
# Do not strip native methods
###############################################
-keepclasseswithmembernames class * {
    native <methods>;
}
##############################################
# Nextcloud Talk – Complete ProGuard Rules
# Fixed for R8 / Missing Classes / Reflection
##############################################

######### Prevent removal of Kotlin metadata #########
-keep class kotlin.Metadata { *; }

######### Fix geogson missing classes #########
-keep class com.google.common.base.Objects$ToStringHelper { *; }
-keep class com.google.common.base.Objects { *; }
-keep class com.github.filosganga.geogson.** { *; }
-dontwarn com.github.filosganga.geogson.**

######### Fix SLF4J missing StaticLoggerBinder #########
-keep class org.slf4j.** { *; }
-dontwarn org.slf4j.**

######### Prevent removal of Guava classes #########
-keep class com.google.common.** { *; }
-dontwarn com.google.common.**

######### Prevent removal of Smack / XMPP (reflection heavy) #########
-keep class org.jivesoftware.smack.** { *; }
-keep class org.jxmpp.** { *; }
-dontwarn org.jivesoftware.smackx.**
-dontwarn org.jivesoftware.smack.**

######### WorkManager uses reflection #########
-keep class androidx.work.** { *; }
-dontwarn androidx.work.**

######### Avoid removing WebRTC classes #########
-keep class org.webrtc.** { *; }
-dontwarn org.webrtc.**

######### OkHttp / Retrofit reflection #########
-keep class okhttp3.** { *; }
-dontwarn okhttp3.**

-keep class retrofit2.** { *; }
-dontwarn retrofit2.**

######### Gson reflection #########
-keep class com.google.gson.** { *; }

######### Jackson (if used by WebSocket / Stanza Parser) #########
-keep class com.fasterxml.** { *; }
-dontwarn com.fasterxml.**

######### Keep model classes serialized/deserialized #########
-keepclassmembers class * {
    @com.google.gson.annotations.SerializedName <fields>;
}

######### Keep all Parcelable implementations #########
-keep class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

######### AndroidX UI + Theme utils #########
-dontwarn android.support.v4.**
-dontwarn androidx.appcompat.**

######### Prevent removal of service loaders #########
-keep class META-INF.services.**

######### Don't warn about missing optional Java classes #########
-dontwarn java.awt.**
-dontwarn javax.**

######### Optional: speed up R8 by disabling obfuscation for logs #########
-keep class * {
    public void set*(***);
    public *** get*();
}

######### Enforce no stripping of enums used by switch #########
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

######### Disable warnings of generated code #########
-dontwarn dagger.**
-dontwarn javax.inject.**
# Keep Joda-Time classes
-keep class org.joda.time.** { *; }
-dontwarn org.joda.time.**

# Joda Convert annotations required for parsing
-keep class org.joda.convert.** { *; }
-dontwarn org.joda.convert.**
