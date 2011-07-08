.class public Landroid/os/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileUtils$FileStatus;
    }
.end annotation


# static fields
.field private static final SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_IRWXG:I = 0x38

.field public static final S_IRWXO:I = 0x7

.field public static final S_IRWXU:I = 0x1c0

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-string v0, "[\\w%+,./=_-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/os/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static copyDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 10
    .parameter "src"
    .parameter "tar"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 143
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 144
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 147
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, children:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v7, v1

    if-ge v3, v7, :cond_0

    .line 149
    new-instance v7, Ljava/io/File;

    aget-object v8, v1, v3

    invoke-direct {v7, p0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    aget-object v9, v1, v3

    invoke-direct {v8, p1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7, v8}, Landroid/os/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 153
    .end local v1           #children:[Ljava/lang/String;
    .end local v3           #i:I
    :cond_3
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 154
    .local v4, in:Ljava/io/InputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 156
    .local v6, out:Ljava/io/OutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 159
    .local v0, buf:[B
    :goto_2
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, len:I
    if-lez v5, :cond_4

    .line 160
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 165
    .end local v0           #buf:[B
    .end local v4           #in:Ljava/io/InputStream;
    .end local v5           #len:I
    .end local v6           #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 166
    .local v2, e:Ljava/lang/Exception;
    goto :goto_0

    .line 163
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #buf:[B
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v5       #len:I
    .restart local v6       #out:Ljava/io/OutputStream;
    :cond_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 164
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .parameter "srcFile"
    .parameter "destFile"

    .prologue
    .line 98
    const/4 v2, 0x0

    .line 100
    .local v2, result:Z
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .local v1, in:Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1, p1}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 104
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 109
    .end local v1           #in:Ljava/io/InputStream;
    :goto_0
    return v2

    .line 104
    .restart local v1       #in:Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 106
    .end local v1           #in:Ljava/io/InputStream;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 107
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 6
    .parameter "inputStream"
    .parameter "destFile"

    .prologue
    const/4 v5, 0x0

    .line 118
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 121
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .local v3, out:Ljava/io/OutputStream;
    const/16 v4, 0x1000

    :try_start_1
    new-array v0, v4, [B

    .line 125
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    if-ltz v1, :cond_1

    .line 126
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    :catchall_0
    move-exception v4

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 132
    .end local v3           #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, e:Ljava/io/IOException;
    move v4, v5

    .line 133
    .end local v2           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 129
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v3       #out:Ljava/io/OutputStream;
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 131
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .locals 5
    .parameter "tar"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 189
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, children:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 179
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/os/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 181
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 184
    .end local v0           #children:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static native getFatVolumeId(Ljava/lang/String;)I
.end method

.method public static native getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z
.end method

.method public static native getPermissions(Ljava/lang/String;[I)I
.end method

.method public static isFilenameSafe(Ljava/io/File;)Z
    .locals 2
    .parameter "file"

    .prologue
    .line 199
    sget-object v0, Landroid/os/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "file"
    .parameter "max"
    .parameter "ellipsis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 213
    .local v0, input:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 214
    .local v1, size:J
    if-gtz p1, :cond_0

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_6

    .end local p0
    if-nez p1, :cond_6

    .line 215
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_2

    if-eqz p1, :cond_1

    int-to-long v3, p1

    cmp-long p0, v1, v3

    if-gez p0, :cond_2

    :cond_1
    long-to-int p1, v1

    .line 216
    :cond_2
    add-int/lit8 p0, p1, 0x1

    new-array p0, p0, [B

    .line 217
    .local p0, data:[B
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 218
    .local v1, length:I
    if-gtz v1, :cond_3

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    .end local v1           #length:I
    .end local p0           #data:[B
    .end local p2
    :goto_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 250
    :goto_1
    return-object p0

    .line 219
    .restart local v1       #length:I
    .restart local p0       #data:[B
    .restart local p2
    :cond_3
    if-gt v1, p1, :cond_4

    :try_start_1
    new-instance p2, Ljava/lang/String;

    .end local p2
    const/4 v2, 0x0

    invoke-direct {p2, p0, v2, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    move-object p0, p2

    .line 219
    goto :goto_1

    .line 220
    .restart local p2
    :cond_4
    if-nez p2, :cond_5

    :try_start_2
    new-instance p2, Ljava/lang/String;

    .end local p2
    const/4 v1, 0x0

    invoke-direct {p2, p0, v1, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    .end local v1           #length:I
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    move-object p0, p2

    .line 220
    goto :goto_1

    .line 221
    .restart local v1       #length:I
    .restart local p2
    :cond_5
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #length:I
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #data:[B
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 222
    .local v1, size:J
    :cond_6
    if-gez p1, :cond_d

    .line 224
    const/4 v2, 0x0

    .line 225
    .end local v1           #size:J
    .local v2, rolled:Z
    const/4 v1, 0x0

    .local v1, last:[B
    const/4 p0, 0x0

    .line 227
    .restart local p0       #data:[B
    :goto_2
    if-eqz v1, :cond_11

    const/4 v2, 0x1

    move v3, v2

    .line 228
    .end local v2           #rolled:Z
    .local v3, rolled:Z
    :goto_3
    move-object v2, v1

    .local v2, tmp:[B
    move-object v1, p0

    move-object p0, v2

    .line 229
    if-nez p0, :cond_7

    neg-int p0, p1

    new-array p0, p0, [B

    .line 230
    :cond_7
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .line 231
    .local v2, len:I
    array-length v4, p0

    if-eq v2, v4, :cond_10

    .line 233
    if-nez v1, :cond_8

    if-gtz v2, :cond_8

    const-string p0, ""

    goto :goto_0

    .line 234
    :cond_8
    if-nez v1, :cond_9

    new-instance p2, Ljava/lang/String;

    .end local p2
    const/4 v1, 0x0

    invoke-direct {p2, p0, v1, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    .end local v1           #last:[B
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    move-object p0, p2

    .line 234
    goto :goto_1

    .line 235
    .restart local v1       #last:[B
    .restart local p2
    :cond_9
    if-lez v2, :cond_a

    .line 236
    const/4 v3, 0x1

    .line 237
    const/4 v4, 0x0

    :try_start_4
    array-length v5, v1

    sub-int/2addr v5, v2

    invoke-static {v1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    const/4 v4, 0x0

    array-length v5, v1

    sub-int/2addr v5, v2

    invoke-static {p0, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    move p0, v3

    .line 240
    .end local v3           #rolled:Z
    .local p0, rolled:Z
    if-eqz p2, :cond_b

    if-nez p0, :cond_c

    :cond_b
    new-instance p0, Ljava/lang/String;

    .end local p0           #rolled:Z
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 253
    .end local v1           #last:[B
    .end local v2           #len:I
    .end local p2
    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw p0

    .line 241
    .restart local v1       #last:[B
    .restart local v2       #len:I
    .restart local p0       #rolled:Z
    .restart local p2
    :cond_c
    :try_start_5
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0           #rolled:Z
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 243
    .end local v2           #len:I
    .local v1, size:J
    .restart local p2
    :cond_d
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 245
    .local p0, contents:Ljava/io/ByteArrayOutputStream;
    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 247
    .end local v1           #size:J
    .local p2, data:[B
    :cond_e
    invoke-virtual {v0, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 248
    .local v1, len:I
    if-lez v1, :cond_f

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 249
    :cond_f
    array-length v2, p2

    if-eq v1, v2, :cond_e

    .line 250
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object p0

    goto/16 :goto_0

    .local v1, last:[B
    .restart local v2       #len:I
    .restart local v3       #rolled:Z
    .local p0, data:[B
    .local p2, ellipsis:Ljava/lang/String;
    :cond_10
    move v2, v3

    .end local v3           #rolled:Z
    .local v2, rolled:Z
    goto :goto_2

    :cond_11
    move v3, v2

    .end local v2           #rolled:Z
    .restart local v3       #rolled:Z
    goto :goto_3
.end method

.method public static native setPermissions(Ljava/lang/String;III)I
.end method