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
# ==========================
# ProGuard محافظه‌کارانه – همه کلاس‌ها نگه داشته شود
# ==========================

# نگه داشتن همه کلاس‌ها، متدها، فیلدها
-keep class * { *; }

# نگه داشتن همه interfaceها
-keep interface * { *; }

# نگه داشتن همه enums و مقادیرش
-keepclassmembers enum * { *; }

# نگه داشتن همه Annotationها
-keep @interface * { *; }

# نگه داشتن تمام Parcelable ها و CREATOR
-keepclassmembers class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

# نگه داشتن همه کلاس‌هایی که native method دارند
-keepclasseswithmembernames class * {
    native <methods>;
}

# نگه داشتن Kotlin metadata
-keep class kotlin.Metadata { *; }

# نگه داشتن منابع لازم برای reflection
-keepclassmembers class * {
    @androidx.room.* <fields>;
    @retrofit2.http.* <methods>;
    @com.bluelinelabs.logansquare.annotation.JsonField <fields>;
    @com.bluelinelabs.logansquare.annotation.JsonObject <fields>;
}

# جلوگیری از هشدارها
-dontwarn **

# ==========================
# Optional: حذف فایل‌ها و منابع اضافی
# ==========================

# حذف اطلاعات سورس و line number برای کاهش حجم
-renamesourcefileattribute SourceFile
-keepattributes LineNumberTable,SourceFile

# نگه داشتن annotationهای runtime
-keepattributes *Annotation*

# shrink و minify فایل‌های اضافی
-dontobfuscate
-dontoptimize
