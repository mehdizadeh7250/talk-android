### ==========================
### ProGuard محافظه‌کارانه – همه کلاس‌ها نگه داشته شود
### ==========================
##
### نگه داشتن همه کلاس‌ها، متدها، فیلدها
##-keep class * { *; }
##
### نگه داشتن همه interfaceها
##-keep interface * { *; }
##
### نگه داشتن همه enums و مقادیرش
##-keepclassmembers enum * { *; }
##
### نگه داشتن همه Annotationها
##-keep @interface * { *; }
##
### نگه داشتن تمام Parcelable ها و CREATOR
##-keepclassmembers class * implements android.os.Parcelable {
##    public static final android.os.Parcelable$Creator *;
##}
##
### نگه داشتن همه کلاس‌هایی که native method دارند
##-keepclasseswithmembernames class * {
##    native <methods>;
##}
##
### نگه داشتن Kotlin metadata
##-keep class kotlin.Metadata { *; }
##
### نگه داشتن منابع لازم برای reflection
##-keepclassmembers class * {
##    @androidx.room.* <fields>;
##    @retrofit2.http.* <methods>;
##    @com.bluelinelabs.logansquare.annotation.JsonField <fields>;
##    @com.bluelinelabs.logansquare.annotation.JsonObject <fields>;
##}
##
### جلوگیری از هشدارها
##-dontwarn **
##
### ==========================
### Optional: حذف فایل‌ها و منابع اضافی
### ==========================
##
### حذف اطلاعات سورس و line number برای کاهش حجم
##-renamesourcefileattribute SourceFile
##-keepattributes LineNumberTable,SourceFile
##
### نگه داشتن annotationهای runtime
##-keepattributes *Annotation*
##
### shrink و minify فایل‌های اضافی
##-dontobfuscate
##-dontoptimize
## ==========================
## ProGuard محافظه‌کارانه – همه کلاس‌ها نگه داشته شود
## ==========================
#
## نگه داشتن همه کلاس‌ها، متدها، فیلدها
#-keep class * { *; }
#
## نگه داشتن همه interfaceها
#-keep interface * { *; }
#
## نگه داشتن همه enums و مقادیرش
#-keepclassmembers enum * { *; }
#
## نگه داشتن همه Annotationها
#-keep @interface * { *; }
#
## نگه داشتن تمام Parcelable ها و CREATOR
#-keepclassmembers class * implements android.os.Parcelable {
#    public static final android.os.Parcelable$Creator *;
#}
#
## نگه داشتن همه کلاس‌هایی که native method دارند
#-keepclasseswithmembernames class * {
#    native <methods>;
#}
#
## نگه داشتن Kotlin metadata
#-keep class kotlin.Metadata { *; }
#
## نگه داشتن منابع لازم برای reflection
#-keepclassmembers class * {
#    @androidx.room.* <fields>;
#    @retrofit2.http.* <methods>;
#    @com.bluelinelabs.logansquare.annotation.JsonField <fields>;
#    @com.bluelinelabs.logansquare.annotation.JsonObject <fields>;
#}
#
## جلوگیری از هشدارها
#-dontwarn **
#
## ==========================
## Optional: حذف فایل‌ها و منابع اضافی
## ==========================
#
## حذف اطلاعات سورس و line number برای کاهش حجم
#-renamesourcefileattribute SourceFile
#-keepattributes LineNumberTable,SourceFile
#
## نگه داشتن annotationهای runtime
#-keepattributes *Annotation*
#
## shrink و minify فایل‌های اضافی
#-dontobfuscate
#-dontoptimize





## ================================
## Retrofit / OkHttp
## ================================
-keep class retrofit2.** { *; }
-keep class okhttp3.** { *; }
-dontwarn okhttp3.**

-keepattributes Signature
-keepattributes Exceptions

-keep class com.google.gson.** { *; }
-keep class * {
    @com.google.gson.annotations.SerializedName <fields>;
}


-keep class com.fasterxml.jackson.** { *; }
-dontwarn com.fasterxml.jackson.**


-keep class androidx.room.** { *; }

-keepclassmembers class * {
   @androidx.room.* <fields>;
}
-keepattributes *Annotation*



-keep class dagger.** { *; }
-keep interface dagger.** { *; }
-dontwarn dagger.**

-keep class autodagger.** { *; }
-keep class com.github.lukaspili.autodagger2.** { *; }


-keep class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

-keepclassmembers class ** {
    public void onEvent*(**);
}
-dontwarn net.sqlcipher.**
-keep class net.sqlcipher.** { *; }


-dontwarn org.webrtc.**
-keep class org.webrtc.** { *; }

-dontwarn androidx.camera.**
-keep class androidx.camera.** { *; }

-dontwarn androidx.media3.**
-keep class androidx.media3.** { *; }
-keep class org.parceler.Parceler$$Parcels { *; }
-keep class **$$Parcelable { *; }


-dontwarn org.osmdroid.**
-keep class org.osmdroid.** { *; }


-keep class kotlin.Metadata { *; }


-keep class * { *; }
-keep interface * { *; }

-dontwarn javax.annotation.**
-dontwarn org.conscrypt.**

-keepattributes *Annotation*
-keepattributes InnerClasses
-keepattributes EnclosingMethod

# برای جلوگیری از باگ در reflection خاص Nextcloud
-keep class com.nextcloud.** { *; }


# LoganSquare core
-keep class com.bluelinelabs.logansquare.** { *; }
-dontwarn com.bluelinelabs.logansquare.**

# Keep generated type adapters
-keep class **$$JsonObjectMapper { *; }

# Keep annotated model classes
-keep @com.bluelinelabs.logansquare.annotation.JsonObject class * { *; }
-keepclassmembers class * {
    @com.bluelinelabs.logansquare.annotation.JsonField <fields>;
}
###################################
# LoganSquare – Safe Universal Rules
###################################

# Keep LoganSquare core

# Very important: keep all constructors
-keepclassmembers class * {
    public <init>(...);
}

-dontwarn java.awt.**
-dontwarn java.awt.font.**
-dontwarn java.awt.geom.**
-dontwarn com.github.filosganga.**
-dontwarn org.locationtech.jts.**
-dontwarn com.google.mediapipe.**
-dontwarn org.joda.convert.**
-dontwarn org.slf4j.impl.**
-dontwarn com.google.firebase.**
-dontwarn org.apache.commons.lang3.**

