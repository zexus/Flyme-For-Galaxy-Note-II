.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManagerNative$1;
    }
.end annotation


# static fields
.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field static volatile sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 3070
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 143
    const-string/jumbo v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 71
    if-nez p0, :cond_0

    .line 72
    return-object v1

    .line 75
    :cond_0
    const-string/jumbo v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 76
    .local v0, "in":Landroid/app/IActivityManager;
    if-eqz v0, :cond_1

    .line 77
    return-object v0

    .line 80
    :cond_1
    new-instance v1, Landroid/app/ActivityManagerProxy;

    invoke-direct {v1, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 102
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V

    .line 101
    return-void
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V
    .locals 15
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "appOp"    # I
    .param p3, "userId"    # I

    .prologue
    .line 112
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 113
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 114
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v2, p0

    move/from16 v9, p2

    move/from16 v13, p3

    .line 112
    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v14

    .local v14, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_0

    .line 95
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 97
    :cond_0
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteAlarmFinish(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 3
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 137
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    :cond_0
    invoke-interface {v2, v1, p1, p2}, Landroid/app/IActivityManager;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 3
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 130
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    :cond_0
    invoke-interface {v2, v1, p1, p2}, Landroid/app/IActivityManager;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "sourcePkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 122
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    :cond_0
    invoke-interface {v2, v1, p1, p2, p3}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private readIntArray(Landroid/os/Parcel;)[I
    .locals 2
    .param p1, "data"    # Landroid/os/Parcel;

    .prologue
    .line 3057
    const/4 v0, 0x0

    .line 3058
    .local v0, "smallest":[I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3059
    .local v1, "smallestSize":I
    if-lez v1, :cond_0

    .line 3060
    new-array v0, v1, [I

    .line 3061
    .local v0, "smallest":[I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 3063
    .end local v0    # "smallest":[I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 3067
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 374
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 149
    move/from16 v0, p1

    packed-switch v0, :pswitch_data_0

    .line 3053
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 152
    :pswitch_1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 154
    .local v213, "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 155
    .local v7, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 156
    .local v8, "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 157
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 158
    .local v10, "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 159
    .local v11, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 160
    .local v12, "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 161
    .local v13, "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 162
    .local v14, "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 163
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 164
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 165
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .local v16, "options":Landroid/os/Bundle;
    :goto_1
    move-object/from16 v6, p0

    .line 166
    invoke-virtual/range {v6 .. v16}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    move/16 v332, v0

    .line 168
    .local v332, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    move-object/from16 v0, p3

    move/from16 v1, v332

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    const/4 v6, 0x1

    return v6

    .line 163
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v332    # "result":I
    :cond_0
    const/4 v15, 0x0

    .local v15, "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_0

    .line 165
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 175
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 177
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 178
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 179
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 180
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 181
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 182
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 183
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 184
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 185
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 186
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 187
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 188
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 189
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "userId":I
    move-object/from16 v6, p0

    .line 190
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v332, v0

    .line 192
    .restart local v332    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    move-object/from16 v0, p3

    move/from16 v1, v332

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    const/4 v6, 0x1

    return v6

    .line 186
    .end local v17    # "userId":I
    .end local v332    # "result":I
    :cond_2
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_2

    .line 188
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_3
    const/16 v16, 0x0

    .local v16, "options":Landroid/os/Bundle;
    goto :goto_3

    .line 199
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 201
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 202
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 203
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 204
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 205
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 206
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 207
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 208
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 209
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    .line 210
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 211
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    .line 212
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 213
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    const/16 v29, 0x1

    .line 214
    .local v29, "ignoreTargetSecurity":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v27, v15

    move-object/from16 v28, v16

    move/from16 v30, v17

    .line 215
    invoke-virtual/range {v18 .. v30}, Landroid/app/ActivityManagerNative;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v0

    move/16 v332, v0

    .line 218
    .restart local v332    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    move-object/from16 v0, p3

    move/from16 v1, v332

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v6, 0x1

    return v6

    .line 210
    .end local v17    # "userId":I
    .end local v29    # "ignoreTargetSecurity":Z
    .end local v332    # "result":I
    :cond_4
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_4

    .line 212
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_5
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_5

    .line 213
    .end local v16    # "options":Landroid/os/Bundle;
    :cond_6
    const/16 v29, 0x0

    .restart local v29    # "ignoreTargetSecurity":Z
    goto :goto_6

    .line 225
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v29    # "ignoreTargetSecurity":Z
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 227
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 228
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 229
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 230
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 231
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 232
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 233
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 234
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 235
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    .line 236
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 237
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    .line 238
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 239
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v6, p0

    .line 240
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;

    move-result-object v0

    move-object/16 v333, v0

    .line 242
    .local v333, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    const/4 v6, 0x0

    move-object/from16 v0, v333

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 244
    const/4 v6, 0x1

    return v6

    .line 236
    .end local v17    # "userId":I
    .end local v333    # "result":Landroid/app/IActivityManager$WaitResult;
    :cond_7
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_7

    .line 238
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_8
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_8

    .line 249
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 251
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 252
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 253
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 254
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 255
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 256
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 257
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 258
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 259
    .restart local v14    # "startFlags":I
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 260
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    .line 261
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 262
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v30, p0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    move/from16 v37, v13

    move/from16 v38, v14

    move-object/from16 v40, v16

    move/from16 v41, v17

    .line 263
    invoke-virtual/range {v30 .. v41}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v332, v0

    .line 265
    .restart local v332    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    move-object/from16 v0, p3

    move/from16 v1, v332

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v6, 0x1

    return v6

    .line 261
    .end local v17    # "userId":I
    .end local v332    # "result":I
    :cond_9
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_9

    .line 272
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v39    # "config":Landroid/content/res/Configuration;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 274
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 275
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/IntentSender;

    .line 276
    .local v20, "intent":Landroid/content/IntentSender;
    const/16 v21, 0x0

    .line 277
    .local v21, "fillInIntent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 278
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "fillInIntent":Landroid/content/Intent;
    check-cast v21, Landroid/content/Intent;

    .line 280
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 281
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 282
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 283
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 284
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 285
    .local v26, "flagsMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 286
    .local v27, "flagsValues":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    .line 287
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .local v16, "options":Landroid/os/Bundle;
    :goto_a
    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move-object/from16 v28, v16

    .line 288
    invoke-virtual/range {v18 .. v28}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    move/16 v332, v0

    .line 291
    .restart local v332    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    move-object/from16 v0, p3

    move/from16 v1, v332

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v6, 0x1

    return v6

    .line 287
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v332    # "result":I
    :cond_b
    const/16 v16, 0x0

    goto :goto_a

    .line 298
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v20    # "intent":Landroid/content/IntentSender;
    .end local v26    # "flagsMask":I
    .end local v27    # "flagsValues":I
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 300
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 301
    .local v42, "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 302
    .local v43, "callingUid":I
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 303
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 305
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 304
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 307
    .local v46, "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 306
    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v47

    .line 308
    .local v47, "interactor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 309
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    .line 310
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 311
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    .line 312
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 313
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v40, p0

    move-object/from16 v41, v8

    move-object/from16 v44, v9

    move-object/from16 v45, v10

    move/from16 v48, v14

    move-object/from16 v49, v15

    move-object/from16 v50, v16

    move/from16 v51, v17

    .line 314
    invoke-virtual/range {v40 .. v51}, Landroid/app/ActivityManagerNative;->startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v332, v0

    .line 316
    .restart local v332    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    move-object/from16 v0, p3

    move/from16 v1, v332

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    const/4 v6, 0x1

    return v6

    .line 310
    .end local v17    # "userId":I
    .end local v332    # "result":I
    :cond_c
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_b

    .line 312
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_d
    const/16 v16, 0x0

    .local v16, "options":Landroid/os/Bundle;
    goto :goto_c

    .line 323
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v42    # "callingPid":I
    .end local v43    # "callingUid":I
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    .end local v47    # "interactor":Lcom/android/internal/app/IVoiceInteractor;
    :pswitch_8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 325
    .local v93, "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v16

    .line 326
    .local v16, "options":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    const/4 v6, 0x1

    return v6

    .line 333
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 335
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    .line 336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    const/4 v6, 0x1

    return v6

    .line 342
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->supportsLocalVoiceInteraction()Z

    move-result v0

    move/16 v334, v0

    .line 344
    .local v334, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    move/from16 v0, v334

    if-eqz v0, :cond_e

    const/4 v6, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    const/4 v6, 0x1

    return v6

    .line 345
    :cond_e
    const/4 v6, 0x0

    goto :goto_d

    .line 351
    .end local v334    # "result":Z
    :pswitch_b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 353
    .local v220, "callingActivity":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 354
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    .line 355
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 356
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v220

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    move/16 v334, v0

    .line 357
    .restart local v334    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    move/from16 v0, v334

    if-eqz v0, :cond_10

    const/4 v6, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    const/4 v6, 0x1

    return v6

    .line 355
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v334    # "result":Z
    :cond_f
    const/16 v16, 0x0

    goto :goto_e

    .line 358
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v334    # "result":Z
    :cond_10
    const/4 v6, 0x0

    goto :goto_f

    .line 364
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v220    # "callingActivity":Landroid/os/IBinder;
    .end local v334    # "result":Z
    :pswitch_c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 367
    .local v69, "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_11

    const/16 v16, 0x0

    .line 368
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v69

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v0

    move/16 v332, v0

    .line 369
    .restart local v332    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    move-object/from16 v0, p3

    move/from16 v1, v332

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    const/4 v6, 0x1

    return v6

    .line 367
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v332    # "result":I
    :cond_11
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    goto :goto_10

    .line 375
    .end local v69    # "taskId":I
    :pswitch_d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 377
    .restart local v93    # "token":Landroid/os/IBinder;
    const/4 v0, 0x0

    move-object/16 v336, v0

    .line 378
    .local v336, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 379
    .local v53, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    .line 380
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v336, v0

    .end local v336    # "resultData":Landroid/content/Intent;
    move-object/from16 v0, v336

    check-cast v0, Landroid/content/Intent;

    move-object/16 v336, v0

    .line 382
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v237

    .line 383
    .local v237, "finishTask":I
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move/from16 v2, v53

    move-object/from16 v3, v336

    move/from16 v4, v237

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v0

    move/16 v328, v0

    .line 384
    .local v328, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    move/from16 v0, v328

    if-eqz v0, :cond_13

    const/4 v6, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    const/4 v6, 0x1

    return v6

    .line 385
    :cond_13
    const/4 v6, 0x0

    goto :goto_11

    .line 390
    .end local v53    # "resultCode":I
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v237    # "finishTask":I
    .end local v328    # "res":Z
    :pswitch_e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 392
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 393
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 394
    .restart local v13    # "requestCode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1, v12, v13}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    const/4 v6, 0x1

    return v6

    .line 400
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 402
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v328, v0

    .line 403
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    move/from16 v0, v328

    if-eqz v0, :cond_14

    const/4 v6, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    const/4 v6, 0x1

    return v6

    .line 404
    :cond_14
    const/4 v6, 0x0

    goto :goto_12

    .line 409
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v328    # "res":Z
    :pswitch_10
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 410
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 412
    .restart local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    const/4 v6, 0x1

    return v6

    .line 418
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :pswitch_11
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 420
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v328, v0

    .line 421
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    move/from16 v0, v328

    if-eqz v0, :cond_15

    const/4 v6, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    const/4 v6, 0x1

    return v6

    .line 422
    :cond_15
    const/4 v6, 0x0

    goto :goto_13

    .line 427
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v328    # "res":Z
    :pswitch_12
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 429
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    .line 430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    const/4 v6, 0x1

    return v6

    .line 435
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :pswitch_13
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 437
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v328, v0

    .line 438
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    move/from16 v0, v328

    if-eqz v0, :cond_16

    const/4 v6, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    const/4 v6, 0x1

    return v6

    .line 439
    :cond_16
    const/4 v6, 0x0

    goto :goto_14

    .line 445
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v328    # "res":Z
    :pswitch_14
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 448
    .restart local v213    # "b":Landroid/os/IBinder;
    if-eqz v213, :cond_17

    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 449
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 450
    .local v32, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 452
    if-eqz v213, :cond_18

    invoke-static/range {v213 .. v213}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v33

    .line 453
    :goto_16
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/IntentFilter;

    .line 454
    .local v34, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 455
    .local v35, "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v30, p0

    move-object/from16 v31, v7

    move/from16 v36, v17

    .line 456
    invoke-virtual/range {v30 .. v36}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    .line 457
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    if-eqz v9, :cond_19

    .line 459
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 464
    :goto_17
    const/4 v6, 0x1

    return v6

    .line 448
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v34    # "filter":Landroid/content/IntentFilter;
    .end local v35    # "perm":Ljava/lang/String;
    :cond_17
    const/4 v7, 0x0

    .local v7, "app":Landroid/app/IApplicationThread;
    goto :goto_15

    .line 452
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v32    # "packageName":Ljava/lang/String;
    :cond_18
    const/16 v33, 0x0

    .local v33, "rec":Landroid/content/IIntentReceiver;
    goto :goto_16

    .line 462
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v17    # "userId":I
    .restart local v34    # "filter":Landroid/content/IntentFilter;
    .restart local v35    # "perm":Ljava/lang/String;
    :cond_19
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 469
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v34    # "filter":Landroid/content/IntentFilter;
    .end local v35    # "perm":Ljava/lang/String;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_15
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 471
    .restart local v213    # "b":Landroid/os/IBinder;
    if-nez v213, :cond_1a

    .line 472
    const/4 v6, 0x1

    return v6

    .line 474
    :cond_1a
    invoke-static/range {v213 .. v213}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v33

    .line 475
    .local v33, "rec":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    const/4 v6, 0x1

    return v6

    .line 482
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_16
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 485
    .restart local v213    # "b":Landroid/os/IBinder;
    if-eqz v213, :cond_1b

    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 486
    :goto_18
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 487
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 488
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 490
    if-eqz v213, :cond_1c

    invoke-static/range {v213 .. v213}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v52

    .line 491
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 492
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .line 493
    .local v54, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v55

    .line 494
    .local v55, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v56

    .line 495
    .local v56, "perms":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v57

    .line 496
    .local v57, "appOp":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v16

    .line 497
    .restart local v16    # "options":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    const/16 v59, 0x1

    .line 498
    .local v59, "serialized":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e

    const/16 v60, 0x1

    .line 499
    .local v60, "sticky":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v48, p0

    move-object/from16 v49, v7

    move-object/from16 v50, v9

    move-object/from16 v51, v10

    move-object/from16 v58, v16

    move/from16 v61, v17

    .line 500
    invoke-virtual/range {v48 .. v61}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v0

    move/16 v322, v0

    .line 503
    .local v322, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    const/4 v6, 0x1

    return v6

    .line 485
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v56    # "perms":[Ljava/lang/String;
    .end local v57    # "appOp":I
    .end local v59    # "serialized":Z
    .end local v60    # "sticky":Z
    .end local v322    # "res":I
    :cond_1b
    const/4 v7, 0x0

    .restart local v7    # "app":Landroid/app/IApplicationThread;
    goto :goto_18

    .line 490
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "resolvedType":Ljava/lang/String;
    :cond_1c
    const/16 v52, 0x0

    .local v52, "resultTo":Landroid/content/IIntentReceiver;
    goto :goto_19

    .line 497
    .end local v52    # "resultTo":Landroid/content/IIntentReceiver;
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v53    # "resultCode":I
    .restart local v54    # "resultData":Ljava/lang/String;
    .restart local v55    # "resultExtras":Landroid/os/Bundle;
    .restart local v56    # "perms":[Ljava/lang/String;
    .restart local v57    # "appOp":I
    :cond_1d
    const/16 v59, 0x0

    .restart local v59    # "serialized":Z
    goto :goto_1a

    .line 498
    :cond_1e
    const/16 v60, 0x0

    .restart local v60    # "sticky":Z
    goto :goto_1b

    .line 510
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v56    # "perms":[Ljava/lang/String;
    .end local v57    # "appOp":I
    .end local v59    # "serialized":Z
    .end local v60    # "sticky":Z
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_17
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 512
    .restart local v213    # "b":Landroid/os/IBinder;
    if-eqz v213, :cond_1f

    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 513
    :goto_1c
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 514
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 515
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v9, v1}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 516
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    const/4 v6, 0x1

    return v6

    .line 512
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    :cond_1f
    const/4 v7, 0x0

    .restart local v7    # "app":Landroid/app/IApplicationThread;
    goto :goto_1c

    .line 521
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_18
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v62

    .line 523
    .local v62, "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 524
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .line 525
    .restart local v54    # "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v55

    .line 526
    .restart local v55    # "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    const/16 v66, 0x1

    .line 527
    .local v66, "resultAbort":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 528
    .local v67, "intentFlags":I
    if-eqz v62, :cond_20

    move-object/from16 v61, p0

    move/from16 v63, v53

    move-object/from16 v64, v54

    move-object/from16 v65, v55

    .line 529
    invoke-virtual/range {v61 .. v67}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    .line 531
    :cond_20
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    const/4 v6, 0x1

    return v6

    .line 526
    .end local v66    # "resultAbort":Z
    .end local v67    # "intentFlags":I
    :cond_21
    const/16 v66, 0x0

    .restart local v66    # "resultAbort":Z
    goto :goto_1d

    .line 536
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v62    # "who":Landroid/os/IBinder;
    .end local v66    # "resultAbort":Z
    :pswitch_19
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 537
    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 539
    .local v7, "app":Landroid/app/IApplicationThread;
    if-eqz v7, :cond_22

    .line 540
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 542
    :cond_22
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    const/4 v6, 0x1

    return v6

    .line 547
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :pswitch_1a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 549
    .restart local v93    # "token":Landroid/os/IBinder;
    const/16 v39, 0x0

    .line 550
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_23

    .line 551
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    .end local v39    # "config":Landroid/content/res/Configuration;
    check-cast v39, Landroid/content/res/Configuration;

    .line 553
    :cond_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    const/4 v0, 0x1

    move/16 v350, v0

    .line 554
    .local v350, "stopProfiling":Z
    :goto_1e
    if-eqz v93, :cond_24

    .line 555
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move-object/from16 v2, v39

    move/from16 v3, v350

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 557
    :cond_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    const/4 v6, 0x1

    return v6

    .line 553
    .end local v350    # "stopProfiling":Z
    :cond_25
    const/4 v0, 0x0

    move/16 v350, v0

    .restart local v350    # "stopProfiling":Z
    goto :goto_1e

    .line 562
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v350    # "stopProfiling":Z
    :pswitch_1b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 564
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityResumed(Landroid/os/IBinder;)V

    .line 565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    const/4 v6, 0x1

    return v6

    .line 570
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_1c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 572
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    .line 573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    const/4 v6, 0x1

    return v6

    .line 578
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_1d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 580
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object/16 v284, v0

    .line 581
    .local v284, "map":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    move-object/16 v307, v0

    .line 582
    .local v307, "persistentState":Landroid/os/PersistableBundle;
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v228

    check-cast v228, Ljava/lang/CharSequence;

    .line 583
    .local v228, "description":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move-object/from16 v2, v284

    move-object/from16 v3, v307

    move-object/from16 v4, v228

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    const/4 v6, 0x1

    return v6

    .line 589
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v228    # "description":Ljava/lang/CharSequence;
    .end local v284    # "map":Landroid/os/Bundle;
    .end local v307    # "persistentState":Landroid/os/PersistableBundle;
    :pswitch_1e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 591
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    .line 592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    const/4 v6, 0x1

    return v6

    .line 597
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_1f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 599
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    const/4 v6, 0x1

    return v6

    .line 605
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_20
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 607
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityRelaunched(Landroid/os/IBinder;)V

    .line 608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    const/4 v6, 0x1

    return v6

    .line 613
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_21
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 615
    .restart local v93    # "token":Landroid/os/IBinder;
    if-eqz v93, :cond_26

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v327, v0

    .line 616
    :goto_1f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    move-object/from16 v0, p3

    move-object/from16 v1, v327

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 618
    const/4 v6, 0x1

    return v6

    .line 615
    :cond_26
    const/4 v0, 0x0

    move-object/16 v327, v0

    .local v327, "res":Ljava/lang/String;
    goto :goto_1f

    .line 622
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v327    # "res":Ljava/lang/String;
    :pswitch_22
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 624
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v222

    .line 625
    .local v222, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    move-object/from16 v0, v222

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 627
    const/4 v6, 0x1

    return v6

    .line 631
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v222    # "cn":Landroid/content/ComponentName;
    :pswitch_23
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 633
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/app/ActivityManagerNative;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object/16 v280, v0

    .line 634
    .local v280, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    move-object/from16 v0, v280

    if-eqz v0, :cond_27

    invoke-interface/range {v280 .. v280}, Ljava/util/List;->size()I

    move-result v188

    .line 636
    .local v188, "N":I
    :goto_20
    move-object/from16 v0, p3

    move/from16 v1, v188

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    const/16 v250, 0x0

    .local v250, "i":I
    :goto_21
    move/from16 v0, v250

    move/from16 v1, v188

    if-ge v0, v1, :cond_28

    .line 639
    move-object/from16 v0, v280

    move/from16 v1, v250

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v357, v0

    move-object/from16 v0, v357

    check-cast v0, Landroid/app/IAppTask;

    move-object/16 v357, v0

    .line 640
    .local v357, "task":Landroid/app/IAppTask;
    invoke-interface/range {v357 .. v357}, Landroid/app/IAppTask;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 638
    add-int/lit8 v250, v250, 0x1

    goto :goto_21

    .line 635
    .end local v188    # "N":I
    .end local v250    # "i":I
    .end local v357    # "task":Landroid/app/IAppTask;
    :cond_27
    const/16 v188, -0x1

    goto :goto_20

    .line 642
    .restart local v188    # "N":I
    .restart local v250    # "i":I
    :cond_28
    const/4 v6, 0x1

    return v6

    .line 646
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v188    # "N":I
    .end local v250    # "i":I
    .end local v280    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    :pswitch_24
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v173

    .line 648
    .local v173, "activityToken":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 650
    .restart local v9    # "intent":Landroid/content/Intent;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v227

    check-cast v227, Landroid/app/ActivityManager$TaskDescription;

    .line 651
    .local v227, "descr":Landroid/app/ActivityManager$TaskDescription;
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v360, v0

    move-object/from16 v0, v360

    check-cast v0, Landroid/graphics/Bitmap;

    move-object/16 v360, v0

    .line 652
    .local v360, "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v173

    move-object/from16 v2, v227

    move-object/from16 v3, v360

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/app/ActivityManagerNative;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v0

    move/16 v322, v0

    .line 653
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    const/4 v6, 0x1

    return v6

    .line 659
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v173    # "activityToken":Landroid/os/IBinder;
    .end local v227    # "descr":Landroid/app/ActivityManager$TaskDescription;
    .end local v322    # "res":I
    .end local v360    # "thumbnail":Landroid/graphics/Bitmap;
    :pswitch_25
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v0

    move-object/16 v343, v0

    .line 661
    .local v343, "size":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    const/4 v6, 0x0

    move-object/from16 v0, v343

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 663
    const/4 v6, 0x1

    return v6

    .line 667
    .end local v343    # "size":Landroid/graphics/Point;
    :pswitch_26
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v286, v0

    .line 669
    .local v286, "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v103

    .line 670
    .local v103, "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v286

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTasks(II)Ljava/util/List;

    move-result-object v0

    move-object/16 v278, v0

    .line 671
    .local v278, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    move-object/from16 v0, v278

    if-eqz v0, :cond_29

    invoke-interface/range {v278 .. v278}, Ljava/util/List;->size()I

    move-result v188

    .line 673
    .restart local v188    # "N":I
    :goto_22
    move-object/from16 v0, p3

    move/from16 v1, v188

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    const/16 v250, 0x0

    .restart local v250    # "i":I
    :goto_23
    move/from16 v0, v250

    move/from16 v1, v188

    if-ge v0, v1, :cond_2a

    .line 676
    move-object/from16 v0, v278

    move/from16 v1, v250

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v259, v0

    move-object/from16 v0, v259

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/16 v259, v0

    .line 677
    .local v259, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v259

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 675
    add-int/lit8 v250, v250, 0x1

    goto :goto_23

    .line 672
    .end local v188    # "N":I
    .end local v250    # "i":I
    .end local v259    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_29
    const/16 v188, -0x1

    goto :goto_22

    .line 679
    .restart local v188    # "N":I
    .restart local v250    # "i":I
    :cond_2a
    const/4 v6, 0x1

    return v6

    .line 683
    .end local v103    # "fl":I
    .end local v188    # "N":I
    .end local v250    # "i":I
    .end local v278    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v286    # "maxNum":I
    :pswitch_27
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 685
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isPackageInForeground(Ljava/lang/String;)Z

    move-result v0

    move/16 v334, v0

    .line 686
    .restart local v334    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    move/from16 v0, v334

    if-eqz v0, :cond_2b

    const/4 v6, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    const/4 v6, 0x1

    return v6

    .line 687
    :cond_2b
    const/4 v6, 0x0

    goto :goto_24

    .line 692
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v334    # "result":Z
    :pswitch_28
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v286, v0

    .line 694
    .restart local v286    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v103

    .line 695
    .restart local v103    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 696
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v286

    move/from16 v2, v103

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    move-object/16 v274, v0

    .line 698
    .local v274, "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    const/4 v6, 0x1

    move-object/from16 v0, v274

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 700
    const/4 v6, 0x1

    return v6

    .line 704
    .end local v17    # "userId":I
    .end local v103    # "fl":I
    .end local v274    # "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v286    # "maxNum":I
    :pswitch_29
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v94

    .line 706
    .local v94, "id":I
    move-object/from16 v0, p0

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v0

    move-object/16 v358, v0

    .line 707
    .local v358, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    move-object/from16 v0, v358

    if-eqz v0, :cond_2c

    .line 709
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    const/4 v6, 0x1

    move-object/from16 v0, v358

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$TaskThumbnail;->writeToParcel(Landroid/os/Parcel;I)V

    .line 714
    :goto_25
    const/4 v6, 0x1

    return v6

    .line 712
    :cond_2c
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 718
    .end local v94    # "id":I
    .end local v358    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    :pswitch_2a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v286, v0

    .line 720
    .restart local v286    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v103

    .line 721
    .restart local v103    # "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v286

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v0

    move-object/16 v277, v0

    .line 722
    .local v277, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    move-object/from16 v0, v277

    if-eqz v0, :cond_2d

    invoke-interface/range {v277 .. v277}, Ljava/util/List;->size()I

    move-result v188

    .line 724
    .restart local v188    # "N":I
    :goto_26
    move-object/from16 v0, p3

    move/from16 v1, v188

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    const/16 v250, 0x0

    .restart local v250    # "i":I
    :goto_27
    move/from16 v0, v250

    move/from16 v1, v188

    if-ge v0, v1, :cond_2e

    .line 727
    move-object/from16 v0, v277

    move/from16 v1, v250

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v258, v0

    move-object/from16 v0, v258

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/16 v258, v0

    .line 728
    .local v258, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v258

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 726
    add-int/lit8 v250, v250, 0x1

    goto :goto_27

    .line 723
    .end local v188    # "N":I
    .end local v250    # "i":I
    .end local v258    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2d
    const/16 v188, -0x1

    goto :goto_26

    .line 730
    .restart local v188    # "N":I
    .restart local v250    # "i":I
    :cond_2e
    const/4 v6, 0x1

    return v6

    .line 734
    .end local v103    # "fl":I
    .end local v188    # "N":I
    .end local v250    # "i":I
    .end local v277    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v286    # "maxNum":I
    :pswitch_2b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v0

    move-object/16 v275, v0

    .line 736
    .local v275, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    move-object/from16 v0, p3

    move-object/from16 v1, v275

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 738
    const/4 v6, 0x1

    return v6

    .line 742
    .end local v275    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :pswitch_2c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    move-object/16 v276, v0

    .line 744
    .local v276, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    move-object/from16 v0, p3

    move-object/from16 v1, v276

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 746
    const/4 v6, 0x1

    return v6

    .line 750
    .end local v276    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :pswitch_2d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v0

    move-object/16 v281, v0

    .line 752
    .local v281, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    move-object/from16 v0, p3

    move-object/from16 v1, v281

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 754
    const/4 v6, 0x1

    return v6

    .line 758
    .end local v281    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :pswitch_2e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v356, v0

    .line 760
    .local v356, "task":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v103

    .line 761
    .restart local v103    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2f

    .line 762
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 763
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_28
    move-object/from16 v0, p0

    move/from16 v1, v356

    move/from16 v2, v103

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 764
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    const/4 v6, 0x1

    return v6

    .line 762
    .end local v16    # "options":Landroid/os/Bundle;
    :cond_2f
    const/16 v16, 0x0

    goto :goto_28

    .line 769
    .end local v103    # "fl":I
    .end local v356    # "task":I
    :pswitch_2f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 771
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_30

    const/4 v0, 0x1

    move/16 v291, v0

    .line 772
    .local v291, "nonRoot":Z
    :goto_29
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move/from16 v2, v291

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v0

    move/16 v328, v0

    .line 773
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    move/from16 v0, v328

    if-eqz v0, :cond_31

    const/4 v6, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    const/4 v6, 0x1

    return v6

    .line 771
    .end local v291    # "nonRoot":Z
    .end local v328    # "res":Z
    :cond_30
    const/4 v0, 0x0

    move/16 v291, v0

    goto :goto_29

    .line 774
    .restart local v291    # "nonRoot":Z
    .restart local v328    # "res":Z
    :cond_31
    const/4 v6, 0x0

    goto :goto_2a

    .line 779
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v291    # "nonRoot":Z
    .end local v328    # "res":Z
    :pswitch_30
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v356, v0

    .line 781
    .restart local v356    # "task":I
    move-object/from16 v0, p0

    move/from16 v1, v356

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 782
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    const/4 v6, 0x1

    return v6

    .line 787
    .end local v356    # "task":I
    :pswitch_31
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 789
    .restart local v69    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 790
    .local v76, "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_32

    const/16 v71, 0x1

    .line 791
    .local v71, "toTop":Z
    :goto_2b
    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v76

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToStack(IIZ)V

    .line 792
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    const/4 v6, 0x1

    return v6

    .line 790
    .end local v71    # "toTop":Z
    :cond_32
    const/16 v71, 0x0

    goto :goto_2b

    .line 797
    .end local v69    # "taskId":I
    .end local v76    # "stackId":I
    :pswitch_32
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 798
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 799
    .restart local v69    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 800
    .local v70, "createMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_34

    const/16 v71, 0x1

    .line 801
    .local v71, "toTop":Z
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_35

    const/16 v72, 0x1

    .line 802
    .local v72, "animate":Z
    :goto_2d
    const/16 v73, 0x0

    .line 803
    .local v73, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36

    const/16 v241, 0x1

    .line 804
    .local v241, "hasBounds":Z
    :goto_2e
    if-eqz v241, :cond_33

    .line 805
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v73

    .end local v73    # "bounds":Landroid/graphics/Rect;
    check-cast v73, Landroid/graphics/Rect;

    .line 807
    :cond_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_37

    const/16 v74, 0x1

    .local v74, "moveHomeStackFront":Z
    :goto_2f
    move-object/from16 v68, p0

    .line 808
    invoke-virtual/range {v68 .. v74}, Landroid/app/ActivityManagerNative;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;Z)Z

    move-result v0

    move/16 v328, v0

    .line 810
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    move/from16 v0, v328

    if-eqz v0, :cond_38

    const/4 v6, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    const/4 v6, 0x1

    return v6

    .line 800
    .end local v71    # "toTop":Z
    .end local v72    # "animate":Z
    .end local v74    # "moveHomeStackFront":Z
    .end local v241    # "hasBounds":Z
    .end local v328    # "res":Z
    :cond_34
    const/16 v71, 0x0

    .restart local v71    # "toTop":Z
    goto :goto_2c

    .line 801
    :cond_35
    const/16 v72, 0x0

    .restart local v72    # "animate":Z
    goto :goto_2d

    .line 803
    .restart local v73    # "bounds":Landroid/graphics/Rect;
    :cond_36
    const/16 v241, 0x0

    goto :goto_2e

    .line 807
    .end local v73    # "bounds":Landroid/graphics/Rect;
    .restart local v241    # "hasBounds":Z
    :cond_37
    const/16 v74, 0x0

    goto :goto_2f

    .line 811
    .restart local v74    # "moveHomeStackFront":Z
    .restart local v328    # "res":Z
    :cond_38
    const/4 v6, 0x0

    goto :goto_30

    .line 816
    .end local v69    # "taskId":I
    .end local v70    # "createMode":I
    .end local v71    # "toTop":Z
    .end local v72    # "animate":Z
    .end local v74    # "moveHomeStackFront":Z
    .end local v241    # "hasBounds":Z
    .end local v328    # "res":Z
    :pswitch_33
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 818
    .restart local v76    # "stackId":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/graphics/Rect;

    .line 819
    .local v77, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v76

    move-object/from16 v2, v77

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveTopActivityToPinnedStack(ILandroid/graphics/Rect;)Z

    move-result v0

    move/16 v328, v0

    .line 820
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    move/from16 v0, v328

    if-eqz v0, :cond_39

    const/4 v6, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    const/4 v6, 0x1

    return v6

    .line 821
    :cond_39
    const/4 v6, 0x0

    goto :goto_31

    .line 826
    .end local v76    # "stackId":I
    .end local v77    # "r":Landroid/graphics/Rect;
    .end local v328    # "res":Z
    :pswitch_34
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 828
    .restart local v76    # "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v242, 0x1

    .line 829
    .local v242, "hasRect":Z
    :goto_32
    const/16 v77, 0x0

    .line 830
    .local v77, "r":Landroid/graphics/Rect;
    if-eqz v242, :cond_3a

    .line 831
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    .end local v77    # "r":Landroid/graphics/Rect;
    check-cast v77, Landroid/graphics/Rect;

    .line 833
    :cond_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_3c

    const/16 v78, 0x1

    .line 834
    .local v78, "allowResizeInDockedMode":Z
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_3d

    const/16 v79, 0x1

    .line 835
    .local v79, "preserveWindows":Z
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_3e

    const/16 v72, 0x1

    .line 836
    .restart local v72    # "animate":Z
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .local v81, "animationDuration":I
    move-object/from16 v75, p0

    move/from16 v80, v72

    .line 837
    invoke-virtual/range {v75 .. v81}, Landroid/app/ActivityManagerNative;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 839
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    const/4 v6, 0x1

    return v6

    .line 828
    .end local v72    # "animate":Z
    .end local v78    # "allowResizeInDockedMode":Z
    .end local v79    # "preserveWindows":Z
    .end local v81    # "animationDuration":I
    .end local v242    # "hasRect":Z
    :cond_3b
    const/16 v242, 0x0

    goto :goto_32

    .line 833
    .restart local v242    # "hasRect":Z
    :cond_3c
    const/16 v78, 0x0

    .restart local v78    # "allowResizeInDockedMode":Z
    goto :goto_33

    .line 834
    :cond_3d
    const/16 v79, 0x0

    .restart local v79    # "preserveWindows":Z
    goto :goto_34

    .line 835
    :cond_3e
    const/16 v72, 0x0

    .restart local v72    # "animate":Z
    goto :goto_35

    .line 843
    .end local v72    # "animate":Z
    .end local v76    # "stackId":I
    .end local v78    # "allowResizeInDockedMode":Z
    .end local v79    # "preserveWindows":Z
    .end local v242    # "hasRect":Z
    :pswitch_35
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 844
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_41

    const/16 v241, 0x1

    .line 845
    .restart local v241    # "hasBounds":Z
    :goto_36
    const/16 v73, 0x0

    .line 846
    .restart local v73    # "bounds":Landroid/graphics/Rect;
    if-eqz v241, :cond_3f

    .line 847
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v73

    .end local v73    # "bounds":Landroid/graphics/Rect;
    check-cast v73, Landroid/graphics/Rect;

    .line 849
    :cond_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_42

    const/16 v247, 0x1

    .line 850
    .local v247, "hasTempPinnedTaskBounds":Z
    :goto_37
    const/4 v0, 0x0

    move-object/16 v359, v0

    .line 851
    .local v359, "tempPinnedTaskBounds":Landroid/graphics/Rect;
    if-eqz v247, :cond_40

    .line 852
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v359, v0

    .end local v359    # "tempPinnedTaskBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v359

    check-cast v0, Landroid/graphics/Rect;

    move-object/16 v359, v0

    .line 854
    :cond_40
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v359

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 855
    const/4 v6, 0x1

    return v6

    .line 844
    .end local v241    # "hasBounds":Z
    .end local v247    # "hasTempPinnedTaskBounds":Z
    :cond_41
    const/16 v241, 0x0

    goto :goto_36

    .line 849
    .restart local v241    # "hasBounds":Z
    :cond_42
    const/16 v247, 0x0

    goto :goto_37

    .line 858
    .end local v241    # "hasBounds":Z
    :pswitch_36
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->swapDockedAndFullscreenStack()V

    .line 860
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    const/4 v6, 0x1

    return v6

    .line 864
    :pswitch_37
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 865
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_48

    const/16 v241, 0x1

    .line 866
    .restart local v241    # "hasBounds":Z
    :goto_38
    const/16 v73, 0x0

    .line 867
    .restart local v73    # "bounds":Landroid/graphics/Rect;
    if-eqz v241, :cond_43

    .line 868
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v73

    .end local v73    # "bounds":Landroid/graphics/Rect;
    check-cast v73, Landroid/graphics/Rect;

    .line 870
    :cond_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_49

    const/16 v243, 0x1

    .line 871
    .local v243, "hasTempDockedTaskBounds":Z
    :goto_39
    const/16 v84, 0x0

    .line 872
    .local v84, "tempDockedTaskBounds":Landroid/graphics/Rect;
    if-eqz v243, :cond_44

    .line 873
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v84

    .end local v84    # "tempDockedTaskBounds":Landroid/graphics/Rect;
    check-cast v84, Landroid/graphics/Rect;

    .line 875
    :cond_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4a

    const/16 v244, 0x1

    .line 876
    .local v244, "hasTempDockedTaskInsetBounds":Z
    :goto_3a
    const/16 v85, 0x0

    .line 877
    .local v85, "tempDockedTaskInsetBounds":Landroid/graphics/Rect;
    if-eqz v244, :cond_45

    .line 878
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v85

    .end local v85    # "tempDockedTaskInsetBounds":Landroid/graphics/Rect;
    check-cast v85, Landroid/graphics/Rect;

    .line 880
    :cond_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4b

    const/16 v245, 0x1

    .line 881
    .local v245, "hasTempOtherTaskBounds":Z
    :goto_3b
    const/16 v86, 0x0

    .line 882
    .local v86, "tempOtherTaskBounds":Landroid/graphics/Rect;
    if-eqz v245, :cond_46

    .line 883
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    .end local v86    # "tempOtherTaskBounds":Landroid/graphics/Rect;
    check-cast v86, Landroid/graphics/Rect;

    .line 885
    :cond_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4c

    const/16 v246, 0x1

    .line 886
    .local v246, "hasTempOtherTaskInsetBounds":Z
    :goto_3c
    const/16 v87, 0x0

    .line 887
    .local v87, "tempOtherTaskInsetBounds":Landroid/graphics/Rect;
    if-eqz v246, :cond_47

    .line 888
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    .end local v87    # "tempOtherTaskInsetBounds":Landroid/graphics/Rect;
    check-cast v87, Landroid/graphics/Rect;

    :cond_47
    move-object/from16 v82, p0

    move-object/from16 v83, v73

    .line 890
    invoke-virtual/range {v82 .. v87}, Landroid/app/ActivityManagerNative;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 892
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    const/4 v6, 0x1

    return v6

    .line 865
    .end local v241    # "hasBounds":Z
    .end local v243    # "hasTempDockedTaskBounds":Z
    .end local v244    # "hasTempDockedTaskInsetBounds":Z
    .end local v245    # "hasTempOtherTaskBounds":Z
    .end local v246    # "hasTempOtherTaskInsetBounds":Z
    :cond_48
    const/16 v241, 0x0

    goto :goto_38

    .line 870
    .restart local v241    # "hasBounds":Z
    :cond_49
    const/16 v243, 0x0

    goto :goto_39

    .line 875
    .restart local v243    # "hasTempDockedTaskBounds":Z
    :cond_4a
    const/16 v244, 0x0

    goto :goto_3a

    .line 880
    .restart local v244    # "hasTempDockedTaskInsetBounds":Z
    :cond_4b
    const/16 v245, 0x0

    goto :goto_3b

    .line 885
    .restart local v245    # "hasTempOtherTaskBounds":Z
    :cond_4c
    const/16 v246, 0x0

    goto :goto_3c

    .line 897
    .end local v241    # "hasBounds":Z
    .end local v243    # "hasTempDockedTaskBounds":Z
    .end local v244    # "hasTempDockedTaskInsetBounds":Z
    .end local v245    # "hasTempOtherTaskBounds":Z
    :pswitch_38
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 898
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 899
    .restart local v69    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 900
    .restart local v76    # "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v313, v0

    .line 901
    .local v313, "position":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v76

    move/from16 v3, v313

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->positionTaskInStack(III)V

    .line 902
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    const/4 v6, 0x1

    return v6

    .line 907
    .end local v69    # "taskId":I
    .end local v76    # "stackId":I
    .end local v313    # "position":I
    :pswitch_39
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAllStackInfos()Ljava/util/List;

    move-result-object v0

    move-object/16 v279, v0

    .line 909
    .local v279, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    move-object/from16 v0, p3

    move-object/from16 v1, v279

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 911
    const/4 v6, 0x1

    return v6

    .line 915
    .end local v279    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :pswitch_3a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 917
    .restart local v76    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    move-object/16 v260, v0

    .line 918
    .local v260, "info":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    move-object/from16 v0, v260

    if-eqz v0, :cond_4d

    .line 920
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    const/4 v6, 0x0

    move-object/from16 v0, v260

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 925
    :goto_3d
    const/4 v6, 0x1

    return v6

    .line 923
    :cond_4d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3d

    .line 929
    .end local v76    # "stackId":I
    .end local v260    # "info":Landroid/app/ActivityManager$StackInfo;
    :pswitch_3b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 931
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInHomeStack(I)Z

    move-result v0

    move/16 v267, v0

    .line 932
    .local v267, "isInHomeStack":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    move/from16 v0, v267

    if-eqz v0, :cond_4e

    const/4 v6, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 934
    const/4 v6, 0x1

    return v6

    .line 933
    :cond_4e
    const/4 v6, 0x0

    goto :goto_3e

    .line 938
    .end local v69    # "taskId":I
    .end local v267    # "isInHomeStack":Z
    :pswitch_3c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 940
    .restart local v76    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFocusedStack(I)V

    .line 941
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    const/4 v6, 0x1

    return v6

    .line 946
    .end local v76    # "stackId":I
    :pswitch_3d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFocusedStackId()I

    move-result v239

    .line 948
    .local v239, "focusedStackId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    move-object/from16 v0, p3

    move/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 950
    const/4 v6, 0x1

    return v6

    .line 954
    .end local v239    # "focusedStackId":I
    :pswitch_3e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 956
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFocusedTask(I)V

    .line 957
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    const/4 v6, 0x1

    return v6

    .line 962
    .end local v69    # "taskId":I
    :pswitch_3f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 964
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-static/range {v93 .. v93}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 965
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    const/4 v6, 0x1

    return v6

    .line 970
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_40
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 971
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 972
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4f

    const/4 v0, 0x1

    move/16 v298, v0

    .line 973
    .local v298, "onlyRoot":Z
    :goto_3f
    if-eqz v93, :cond_50

    .line 974
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move/from16 v2, v298

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0

    move/16 v322, v0

    .line 975
    .restart local v322    # "res":I
    :goto_40
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 977
    const/4 v6, 0x1

    return v6

    .line 972
    .end local v298    # "onlyRoot":Z
    .end local v322    # "res":I
    :cond_4f
    const/4 v0, 0x0

    move/16 v298, v0

    .restart local v298    # "onlyRoot":Z
    goto :goto_3f

    .line 974
    :cond_50
    const/4 v0, -0x1

    move/16 v322, v0

    .restart local v322    # "res":I
    goto :goto_40

    .line 981
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v298    # "onlyRoot":Z
    .end local v322    # "res":I
    :pswitch_41
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 983
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 984
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v127

    .line 985
    .local v127, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 986
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_51

    const/4 v0, 0x1

    move/16 v348, v0

    .line 987
    .local v348, "stable":Z
    :goto_41
    move-object/from16 v0, p0

    move-object/from16 v1, v127

    move/from16 v2, v17

    move/from16 v3, v348

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v226

    .line 988
    .local v226, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    if-eqz v226, :cond_52

    .line 990
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 991
    const/4 v6, 0x0

    move-object/from16 v0, v226

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 995
    :goto_42
    const/4 v6, 0x1

    return v6

    .line 986
    .end local v226    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v348    # "stable":Z
    :cond_51
    const/4 v0, 0x0

    move/16 v348, v0

    goto :goto_41

    .line 993
    .restart local v226    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v348    # "stable":Z
    :cond_52
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_42

    .line 999
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v127    # "name":Ljava/lang/String;
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v226    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v348    # "stable":Z
    :pswitch_42
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1000
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v127

    .line 1001
    .restart local v127    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1002
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1003
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v127

    move/from16 v2, v17

    move-object/from16 v3, v93

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v226

    .line 1004
    .restart local v226    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    if-eqz v226, :cond_53

    .line 1006
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1007
    const/4 v6, 0x0

    move-object/from16 v0, v226

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1011
    :goto_43
    const/4 v6, 0x1

    return v6

    .line 1009
    :cond_53
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_43

    .line 1015
    .end local v17    # "userId":I
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v127    # "name":Ljava/lang/String;
    .end local v226    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :pswitch_43
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1016
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1017
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1019
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/16 v316, v0

    .line 1020
    .local v316, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v316

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 1021
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    const/4 v6, 0x1

    return v6

    .line 1026
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v316    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :pswitch_44
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1027
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1028
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v347, v0

    .line 1029
    .local v347, "stable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v364, v0

    .line 1030
    .local v364, "unstable":I
    move-object/from16 v0, p0

    move-object/from16 v1, v213

    move/from16 v2, v347

    move/from16 v3, v364

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v0

    move/16 v328, v0

    .line 1031
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    move/from16 v0, v328

    if-eqz v0, :cond_54

    const/4 v6, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1033
    const/4 v6, 0x1

    return v6

    .line 1032
    :cond_54
    const/4 v6, 0x0

    goto :goto_44

    .line 1037
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v328    # "res":Z
    .end local v347    # "stable":I
    .end local v364    # "unstable":I
    :pswitch_45
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1039
    .restart local v213    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v213

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 1040
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    const/4 v6, 0x1

    return v6

    .line 1045
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_46
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1046
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1047
    .restart local v213    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v213

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 1048
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    const/4 v6, 0x1

    return v6

    .line 1053
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_47
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1054
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1055
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_55

    const/4 v0, 0x1

    move/16 v348, v0

    .line 1056
    .restart local v348    # "stable":Z
    :goto_45
    move-object/from16 v0, p0

    move-object/from16 v1, v213

    move/from16 v2, v348

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 1057
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    const/4 v6, 0x1

    return v6

    .line 1055
    .end local v348    # "stable":Z
    :cond_55
    const/4 v0, 0x0

    move/16 v348, v0

    goto :goto_45

    .line 1062
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_48
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1063
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v127

    .line 1064
    .restart local v127    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1065
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v127

    move-object/from16 v2, v93

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1066
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    const/4 v6, 0x1

    return v6

    .line 1071
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v127    # "name":Ljava/lang/String;
    :pswitch_49
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v223

    check-cast v223, Landroid/content/ComponentName;

    .line 1073
    .local v223, "comp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v223

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v0

    move-object/16 v309, v0

    .line 1074
    .local v309, "pi":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    move-object/from16 v0, v309

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 1076
    const/4 v6, 0x1

    return v6

    .line 1080
    .end local v223    # "comp":Landroid/content/ComponentName;
    .end local v309    # "pi":Landroid/app/PendingIntent;
    :pswitch_4a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1082
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1083
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Landroid/content/Intent;

    .line 1084
    .local v90, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1085
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1086
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v88, p0

    move-object/from16 v89, v7

    move-object/from16 v91, v10

    move-object/from16 v92, v8

    move/from16 v93, v17

    .line 1087
    invoke-virtual/range {v88 .. v93}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v222

    .line 1088
    .restart local v222    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    move-object/from16 v0, v222

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 1090
    const/4 v6, 0x1

    return v6

    .line 1094
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v90    # "service":Landroid/content/Intent;
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v222    # "cn":Landroid/content/ComponentName;
    :pswitch_4b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1095
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1096
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1097
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Landroid/content/Intent;

    .line 1098
    .restart local v90    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1099
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1100
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v90

    move/from16 v2, v17

    invoke-virtual {v0, v7, v1, v10, v2}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    move/16 v322, v0

    .line 1101
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1102
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1103
    const/4 v6, 0x1

    return v6

    .line 1107
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v90    # "service":Landroid/content/Intent;
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v322    # "res":I
    :pswitch_4c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1108
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v92

    .line 1109
    .local v92, "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1110
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v349, v0

    .line 1111
    .local v349, "startId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v92

    move-object/from16 v2, v93

    move/from16 v3, v349

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v0

    move/16 v328, v0

    .line 1112
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    move/from16 v0, v328

    if-eqz v0, :cond_56

    const/4 v6, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1114
    const/4 v6, 0x1

    return v6

    .line 1113
    :cond_56
    const/4 v6, 0x0

    goto :goto_46

    .line 1118
    .end local v92    # "className":Landroid/content/ComponentName;
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v328    # "res":Z
    .end local v349    # "startId":I
    :pswitch_4d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1119
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v92

    .line 1120
    .restart local v92    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1121
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v94

    .line 1122
    .restart local v94    # "id":I
    const/16 v95, 0x0

    .line 1123
    .local v95, "notification":Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_57

    .line 1124
    sget-object v6, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v95

    .end local v95    # "notification":Landroid/app/Notification;
    check-cast v95, Landroid/app/Notification;

    .line 1126
    :cond_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v96

    .local v96, "sflags":I
    move-object/from16 v91, p0

    .line 1127
    invoke-virtual/range {v91 .. v96}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;I)V

    .line 1128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    const/4 v6, 0x1

    return v6

    .line 1133
    .end local v92    # "className":Landroid/content/ComponentName;
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v94    # "id":I
    .end local v96    # "sflags":I
    :pswitch_4e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1135
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1136
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1137
    .restart local v93    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Landroid/content/Intent;

    .line 1138
    .restart local v90    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1139
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v103

    .line 1141
    .restart local v103    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1142
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1143
    .restart local v17    # "userId":I
    invoke-static/range {v213 .. v213}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v102

    .local v102, "conn":Landroid/app/IServiceConnection;
    move-object/from16 v97, p0

    move-object/from16 v98, v7

    move-object/from16 v99, v93

    move-object/from16 v100, v90

    move-object/from16 v101, v10

    move-object/from16 v104, v8

    move/from16 v105, v17

    .line 1144
    invoke-virtual/range {v97 .. v105}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v0

    move/16 v322, v0

    .line 1146
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1148
    const/4 v6, 0x1

    return v6

    .line 1152
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v90    # "service":Landroid/content/Intent;
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v102    # "conn":Landroid/app/IServiceConnection;
    .end local v103    # "fl":I
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v322    # "res":I
    :pswitch_4f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1154
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v102

    .line 1155
    .restart local v102    # "conn":Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v0

    move/16 v328, v0

    .line 1156
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    move/from16 v0, v328

    if-eqz v0, :cond_58

    const/4 v6, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1158
    const/4 v6, 0x1

    return v6

    .line 1157
    :cond_58
    const/4 v6, 0x0

    goto :goto_47

    .line 1162
    .end local v102    # "conn":Landroid/app/IServiceConnection;
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v328    # "res":Z
    :pswitch_50
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1164
    .restart local v93    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1165
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v340, v0

    .line 1166
    .local v340, "service":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move-object/from16 v2, v340

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 1167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1168
    const/4 v6, 0x1

    return v6

    .line 1172
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v340    # "service":Landroid/os/IBinder;
    :pswitch_51
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1174
    .restart local v93    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1175
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_59

    const/16 v231, 0x1

    .line 1176
    .local v231, "doRebind":Z
    :goto_48
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move/from16 v2, v231

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 1177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1178
    const/4 v6, 0x1

    return v6

    .line 1175
    .end local v231    # "doRebind":Z
    :cond_59
    const/16 v231, 0x0

    goto :goto_48

    .line 1182
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_52
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1184
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v114

    .line 1185
    .local v114, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v349, v0

    .line 1186
    .restart local v349    # "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v322, v0

    .line 1187
    .restart local v322    # "res":I
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move/from16 v2, v114

    move/from16 v3, v349

    move/from16 v4, v322

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 1188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    const/4 v6, 0x1

    return v6

    .line 1193
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v114    # "type":I
    .end local v322    # "res":I
    .end local v349    # "startId":I
    :pswitch_53
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1194
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v92

    .line 1195
    .restart local v92    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v106

    .line 1196
    .local v106, "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v103

    .line 1197
    .restart local v103    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v108

    .line 1198
    .local v108, "arguments":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1199
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v109

    .line 1200
    .local v109, "w":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1201
    invoke-static/range {v213 .. v213}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v110

    .line 1202
    .local v110, "c":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1203
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v112

    .local v112, "abiOverride":Ljava/lang/String;
    move-object/from16 v104, p0

    move-object/from16 v105, v92

    move/from16 v107, v103

    move/from16 v111, v17

    .line 1204
    invoke-virtual/range {v104 .. v112}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v0

    move/16 v328, v0

    .line 1206
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1207
    move/from16 v0, v328

    if-eqz v0, :cond_5a

    const/4 v6, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1208
    const/4 v6, 0x1

    return v6

    .line 1207
    :cond_5a
    const/4 v6, 0x0

    goto :goto_49

    .line 1213
    .end local v17    # "userId":I
    .end local v92    # "className":Landroid/content/ComponentName;
    .end local v103    # "fl":I
    .end local v106    # "profileFile":Ljava/lang/String;
    .end local v108    # "arguments":Landroid/os/Bundle;
    .end local v109    # "w":Landroid/app/IInstrumentationWatcher;
    .end local v110    # "c":Landroid/app/IUiAutomationConnection;
    .end local v112    # "abiOverride":Ljava/lang/String;
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v328    # "res":Z
    :pswitch_54
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1215
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1216
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 1217
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object/16 v337, v0

    .line 1218
    .local v337, "results":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v53

    move-object/from16 v2, v337

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 1219
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1220
    const/4 v6, 0x1

    return v6

    .line 1224
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v53    # "resultCode":I
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v337    # "results":Landroid/os/Bundle;
    :pswitch_55
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1225
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v39

    .line 1226
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1227
    const/4 v6, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1228
    const/4 v6, 0x1

    return v6

    .line 1232
    .end local v39    # "config":Landroid/content/res/Configuration;
    :pswitch_56
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1233
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 1234
    .restart local v39    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 1235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1236
    const/4 v6, 0x1

    return v6

    .line 1240
    .end local v39    # "config":Landroid/content/res/Configuration;
    :pswitch_57
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1242
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v188

    .line 1243
    .restart local v188    # "N":I
    new-instance v0, Ljava/util/ArrayList;

    move-object/16 v301, v0

    invoke-direct/range {v301 .. v301}, Ljava/util/ArrayList;-><init>()V

    .line 1244
    .local v301, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v250, 0x0

    .restart local v250    # "i":I
    :goto_4a
    move/from16 v0, v250

    move/from16 v1, v188

    if-ge v0, v1, :cond_5b

    .line 1245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v301

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1244
    add-int/lit8 v250, v250, 0x1

    goto :goto_4a

    .line 1247
    :cond_5b
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v301

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->updateAssets(ILjava/util/List;)V

    .line 1248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1249
    const/4 v6, 0x1

    return v6

    .line 1253
    .end local v17    # "userId":I
    .end local v188    # "N":I
    .end local v250    # "i":I
    .end local v301    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_58
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1255
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v321, v0

    .line 1256
    .local v321, "requestedOrientation":I
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move/from16 v2, v321

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 1257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    const/4 v6, 0x1

    return v6

    .line 1262
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v321    # "requestedOrientation":I
    :pswitch_59
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1264
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v0

    move/16 v320, v0

    .line 1265
    .local v320, "req":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1266
    move-object/from16 v0, p3

    move/from16 v1, v320

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1267
    const/4 v6, 0x1

    return v6

    .line 1271
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v320    # "req":I
    :pswitch_5a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1273
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v222

    .line 1274
    .restart local v222    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    move-object/from16 v0, v222

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 1276
    const/4 v6, 0x1

    return v6

    .line 1280
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v222    # "cn":Landroid/content/ComponentName;
    :pswitch_5b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1282
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1283
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1284
    const/4 v6, 0x1

    return v6

    .line 1288
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_5c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v114

    .line 1290
    .restart local v114    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1291
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1292
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1293
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1296
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5c

    .line 1297
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v119

    check-cast v119, [Landroid/content/Intent;

    .line 1298
    .local v119, "requestIntents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v120

    .line 1303
    .end local v119    # "requestIntents":[Landroid/content/Intent;
    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v103

    .line 1304
    .restart local v103    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5d

    .line 1305
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 1306
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v113, p0

    move-object/from16 v115, v32

    move-object/from16 v116, v93

    move-object/from16 v117, v12

    move/from16 v118, v13

    move/from16 v121, v103

    move-object/from16 v122, v16

    move/from16 v123, v17

    .line 1307
    invoke-virtual/range {v113 .. v123}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v323, v0

    .line 1310
    .local v323, "res":Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1311
    move-object/from16 v0, v323

    if-eqz v0, :cond_5e

    invoke-interface/range {v323 .. v323}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_4d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1312
    const/4 v6, 0x1

    return v6

    .line 1300
    .end local v17    # "userId":I
    .end local v103    # "fl":I
    .end local v323    # "res":Landroid/content/IIntentSender;
    :cond_5c
    const/16 v119, 0x0

    .line 1301
    .local v119, "requestIntents":[Landroid/content/Intent;
    const/16 v120, 0x0

    .local v120, "requestResolvedTypes":[Ljava/lang/String;
    goto :goto_4b

    .line 1305
    .end local v119    # "requestIntents":[Landroid/content/Intent;
    .end local v120    # "requestResolvedTypes":[Ljava/lang/String;
    .restart local v103    # "fl":I
    :cond_5d
    const/16 v16, 0x0

    .local v16, "options":Landroid/os/Bundle;
    goto :goto_4c

    .line 1311
    .end local v16    # "options":Landroid/os/Bundle;
    .restart local v17    # "userId":I
    .restart local v323    # "res":Landroid/content/IIntentSender;
    :cond_5e
    const/4 v6, 0x0

    goto :goto_4d

    .line 1316
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v103    # "fl":I
    .end local v114    # "type":I
    .end local v323    # "res":Landroid/content/IIntentSender;
    :pswitch_5d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1317
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v318, v0

    .line 1319
    .local v318, "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v318

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 1320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1321
    const/4 v6, 0x1

    return v6

    .line 1325
    .end local v318    # "r":Landroid/content/IIntentSender;
    :pswitch_5e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1326
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v318, v0

    .line 1328
    .restart local v318    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v318

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v327, v0

    .line 1329
    .local v327, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1330
    move-object/from16 v0, p3

    move-object/from16 v1, v327

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1331
    const/4 v6, 0x1

    return v6

    .line 1335
    .end local v318    # "r":Landroid/content/IIntentSender;
    .end local v327    # "res":Ljava/lang/String;
    :pswitch_5f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1336
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v318, v0

    .line 1338
    .restart local v318    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v318

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0

    move/16 v322, v0

    .line 1339
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1340
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1341
    const/4 v6, 0x1

    return v6

    .line 1345
    .end local v318    # "r":Landroid/content/IIntentSender;
    .end local v322    # "res":I
    :pswitch_60
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 1347
    .restart local v42    # "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 1348
    .restart local v43    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1349
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5f

    const/16 v125, 0x1

    .line 1350
    .local v125, "allowAll":Z
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_60

    const/16 v126, 0x1

    .line 1351
    .local v126, "requireFull":Z
    :goto_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v127

    .line 1352
    .restart local v127    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v128

    .local v128, "callerPackage":Ljava/lang/String;
    move-object/from16 v121, p0

    move/from16 v122, v42

    move/from16 v123, v43

    move/from16 v124, v17

    .line 1353
    invoke-virtual/range {v121 .. v128}, Landroid/app/ActivityManagerNative;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    move/16 v322, v0

    .line 1355
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1357
    const/4 v6, 0x1

    return v6

    .line 1349
    .end local v125    # "allowAll":Z
    .end local v126    # "requireFull":Z
    .end local v127    # "name":Ljava/lang/String;
    .end local v128    # "callerPackage":Ljava/lang/String;
    .end local v322    # "res":I
    :cond_5f
    const/16 v125, 0x0

    .restart local v125    # "allowAll":Z
    goto :goto_4e

    .line 1350
    :cond_60
    const/16 v126, 0x0

    .restart local v126    # "requireFull":Z
    goto :goto_4f

    .line 1361
    .end local v17    # "userId":I
    .end local v42    # "callingPid":I
    .end local v43    # "callingUid":I
    .end local v125    # "allowAll":Z
    .end local v126    # "requireFull":Z
    :pswitch_61
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v285, v0

    .line 1363
    .local v285, "max":I
    move-object/from16 v0, p0

    move/from16 v1, v285

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 1364
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1365
    const/4 v6, 0x1

    return v6

    .line 1369
    .end local v285    # "max":I
    :pswitch_62
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1370
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v0

    move/16 v273, v0

    .line 1371
    .local v273, "limit":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    move-object/from16 v0, p3

    move/from16 v1, v273

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1373
    const/4 v6, 0x1

    return v6

    .line 1377
    .end local v273    # "limit":I
    :pswitch_63
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1379
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v131

    .line 1380
    .local v131, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_61

    const/4 v0, 0x1

    move/16 v266, v0

    .line 1381
    .local v266, "isForeground":Z
    :goto_50
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move/from16 v2, v131

    move/from16 v3, v266

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 1382
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1383
    const/4 v6, 0x1

    return v6

    .line 1380
    .end local v266    # "isForeground":Z
    :cond_61
    const/4 v0, 0x0

    move/16 v266, v0

    goto :goto_50

    .line 1387
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v131    # "pid":I
    :pswitch_64
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1389
    .restart local v35    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v131

    .line 1390
    .restart local v131    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v132

    .line 1391
    .local v132, "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v131

    move/from16 v3, v132

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    move/16 v322, v0

    .line 1392
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1393
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1394
    const/4 v6, 0x1

    return v6

    .line 1398
    .end local v35    # "perm":Ljava/lang/String;
    .end local v131    # "pid":I
    .end local v132    # "uid":I
    .end local v322    # "res":I
    :pswitch_65
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1400
    .restart local v35    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v131

    .line 1401
    .restart local v131    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v132

    .line 1402
    .restart local v132    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1403
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v131

    move/from16 v3, v132

    move-object/from16 v4, v93

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkPermissionWithToken(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v0

    move/16 v322, v0

    .line 1404
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1405
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1406
    const/4 v6, 0x1

    return v6

    .line 1410
    .end local v35    # "perm":Ljava/lang/String;
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v131    # "pid":I
    .end local v132    # "uid":I
    .end local v322    # "res":I
    :pswitch_66
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1411
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v130

    check-cast v130, Landroid/net/Uri;

    .line 1412
    .local v130, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v131

    .line 1413
    .restart local v131    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v132

    .line 1414
    .restart local v132    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v133

    .line 1415
    .local v133, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1416
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v135

    .local v135, "callerToken":Landroid/os/IBinder;
    move-object/from16 v129, p0

    move/from16 v134, v17

    .line 1417
    invoke-virtual/range {v129 .. v135}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v0

    move/16 v322, v0

    .line 1418
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1419
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1420
    const/4 v6, 0x1

    return v6

    .line 1424
    .end local v17    # "userId":I
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v131    # "pid":I
    .end local v132    # "uid":I
    .end local v133    # "mode":I
    .end local v135    # "callerToken":Landroid/os/IBinder;
    .end local v322    # "res":I
    :pswitch_67
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1427
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1426
    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v0

    move-object/16 v295, v0

    .line 1428
    .local v295, "observer":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1429
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v295

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v0

    move/16 v328, v0

    .line 1430
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1431
    move/from16 v0, v328

    if-eqz v0, :cond_62

    const/4 v6, 0x1

    :goto_51
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1432
    const/4 v6, 0x1

    return v6

    .line 1431
    :cond_62
    const/4 v6, 0x0

    goto :goto_51

    .line 1436
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v295    # "observer":Landroid/content/pm/IPackageDataObserver;
    .end local v328    # "res":Z
    :pswitch_68
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1438
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1439
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v138

    .line 1440
    .local v138, "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v130

    check-cast v130, Landroid/net/Uri;

    .line 1441
    .restart local v130    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v133

    .line 1442
    .restart local v133    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v136, p0

    move-object/from16 v137, v7

    move-object/from16 v139, v130

    move/from16 v140, v133

    move/from16 v141, v17

    .line 1443
    invoke-virtual/range {v136 .. v141}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 1444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1445
    const/4 v6, 0x1

    return v6

    .line 1449
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v133    # "mode":I
    .end local v138    # "targetPkg":Ljava/lang/String;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_69
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1451
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1452
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v130

    check-cast v130, Landroid/net/Uri;

    .line 1453
    .restart local v130    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v133

    .line 1454
    .restart local v133    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1455
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v130

    move/from16 v2, v133

    move/from16 v3, v17

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    .line 1456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1457
    const/4 v6, 0x1

    return v6

    .line 1461
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v133    # "mode":I
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_6a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1462
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v130

    check-cast v130, Landroid/net/Uri;

    .line 1463
    .restart local v130    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v133

    .line 1464
    .restart local v133    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1465
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v130

    move/from16 v2, v133

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->takePersistableUriPermission(Landroid/net/Uri;II)V

    .line 1466
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1467
    const/4 v6, 0x1

    return v6

    .line 1471
    .end local v17    # "userId":I
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v133    # "mode":I
    :pswitch_6b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1472
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v130

    check-cast v130, Landroid/net/Uri;

    .line 1473
    .restart local v130    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v133

    .line 1474
    .restart local v133    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1475
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v130

    move/from16 v2, v133

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->releasePersistableUriPermission(Landroid/net/Uri;II)V

    .line 1476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1477
    const/4 v6, 0x1

    return v6

    .line 1481
    .end local v17    # "userId":I
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v133    # "mode":I
    :pswitch_6c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1483
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_63

    const/4 v0, 0x1

    move/16 v256, v0

    .line 1484
    .local v256, "incoming":Z
    :goto_52
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v256

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    move-object/16 v306, v0

    .line 1486
    .local v306, "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1487
    const/4 v6, 0x1

    move-object/from16 v0, v306

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1488
    const/4 v6, 0x1

    return v6

    .line 1483
    .end local v256    # "incoming":Z
    .end local v306    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :cond_63
    const/4 v0, 0x0

    move/16 v256, v0

    goto :goto_52

    .line 1492
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_6d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1494
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1495
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    move-object/16 v306, v0

    .line 1497
    .restart local v306    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1498
    const/4 v6, 0x1

    move-object/from16 v0, v306

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1499
    const/4 v6, 0x1

    return v6

    .line 1503
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v306    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :pswitch_6e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1505
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1506
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->clearGrantedUriPermissions(Ljava/lang/String;I)V

    .line 1507
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1508
    const/4 v6, 0x1

    return v6

    .line 1512
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_6f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1514
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1515
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_64

    const/4 v0, 0x1

    move/16 v370, v0

    .line 1516
    .local v370, "waiting":Z
    :goto_53
    move-object/from16 v0, p0

    move/from16 v1, v370

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 1517
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1518
    const/4 v6, 0x1

    return v6

    .line 1515
    .end local v370    # "waiting":Z
    :cond_64
    const/4 v0, 0x0

    move/16 v370, v0

    goto :goto_53

    .line 1522
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_70
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1523
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    move-object/16 v288, v0

    invoke-direct/range {v288 .. v288}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1524
    .local v288, "mi":Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v288

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1526
    const/4 v6, 0x0

    move-object/from16 v0, v288

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1527
    const/4 v6, 0x1

    return v6

    .line 1531
    .end local v288    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    :pswitch_71
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1532
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 1533
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1534
    const/4 v6, 0x1

    return v6

    .line 1538
    :pswitch_72
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v130

    .line 1540
    .restart local v130    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v130

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object/16 v308, v0

    .line 1541
    .local v308, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1542
    move-object/from16 v0, v308

    if-eqz v0, :cond_65

    .line 1543
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1544
    const/4 v6, 0x1

    move-object/from16 v0, v308

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1548
    :goto_54
    const/4 v6, 0x1

    return v6

    .line 1546
    :cond_65
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_54

    .line 1552
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v308    # "pfd":Landroid/os/ParcelFileDescriptor;
    :pswitch_73
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_66

    const/4 v0, 0x1

    move/16 v341, v0

    .line 1554
    .local v341, "showing":Z
    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_67

    const/4 v0, 0x1

    move/16 v296, v0

    .line 1555
    .local v296, "occluded":Z
    :goto_56
    move-object/from16 v0, p0

    move/from16 v1, v341

    move/from16 v2, v296

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setLockScreenShown(ZZ)V

    .line 1556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1557
    const/4 v6, 0x1

    return v6

    .line 1553
    .end local v296    # "occluded":Z
    .end local v341    # "showing":Z
    :cond_66
    const/4 v0, 0x0

    move/16 v341, v0

    .restart local v341    # "showing":Z
    goto :goto_55

    .line 1554
    :cond_67
    const/4 v0, 0x0

    move/16 v296, v0

    goto :goto_56

    .line 1561
    .end local v341    # "showing":Z
    :pswitch_74
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v312, v0

    .line 1563
    .local v312, "pn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_68

    const/4 v0, 0x1

    move/16 v372, v0

    .line 1564
    .local v372, "wfd":Z
    :goto_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_69

    const/4 v0, 0x1

    move/16 v304, v0

    .line 1565
    .local v304, "per":Z
    :goto_58
    move-object/from16 v0, p0

    move-object/from16 v1, v312

    move/from16 v2, v372

    move/from16 v3, v304

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1566
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1567
    const/4 v6, 0x1

    return v6

    .line 1563
    .end local v304    # "per":Z
    .end local v372    # "wfd":Z
    :cond_68
    const/4 v0, 0x0

    move/16 v372, v0

    .restart local v372    # "wfd":Z
    goto :goto_57

    .line 1564
    :cond_69
    const/4 v0, 0x0

    move/16 v304, v0

    goto :goto_58

    .line 1571
    .end local v312    # "pn":Ljava/lang/String;
    .end local v372    # "wfd":Z
    :pswitch_75
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6a

    const/16 v233, 0x1

    .line 1573
    .local v233, "enabled":Z
    :goto_59
    move-object/from16 v0, p0

    move/from16 v1, v233

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 1574
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1575
    const/4 v6, 0x1

    return v6

    .line 1572
    .end local v233    # "enabled":Z
    :cond_6a
    const/16 v233, 0x0

    goto :goto_59

    .line 1579
    :pswitch_76
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1580
    invoke-static {v6}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v0

    move-object/16 v371, v0

    .line 1582
    .local v371, "watcher":Landroid/app/IActivityController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6b

    const/16 v252, 0x1

    .line 1583
    .local v252, "imAMonkey":Z
    :goto_5a
    move-object/from16 v0, p0

    move-object/from16 v1, v371

    move/from16 v2, v252

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 1584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1585
    const/4 v6, 0x1

    return v6

    .line 1582
    .end local v252    # "imAMonkey":Z
    :cond_6b
    const/16 v252, 0x0

    goto :goto_5a

    .line 1589
    .end local v371    # "watcher":Landroid/app/IActivityController;
    :pswitch_77
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6c

    const/16 v233, 0x1

    .line 1591
    .restart local v233    # "enabled":Z
    :goto_5b
    move-object/from16 v0, p0

    move/from16 v1, v233

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setLenientBackgroundCheck(Z)V

    .line 1592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1593
    const/4 v6, 0x1

    return v6

    .line 1590
    .end local v233    # "enabled":Z
    :cond_6c
    const/16 v233, 0x0

    goto :goto_5b

    .line 1597
    :pswitch_78
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1598
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getMemoryTrimLevel()I

    move-result v0

    move/16 v272, v0

    .line 1599
    .local v272, "level":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1600
    move-object/from16 v0, p3

    move/from16 v1, v272

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1601
    const/4 v6, 0x1

    return v6

    .line 1605
    .end local v272    # "level":I
    :pswitch_79
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1606
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1607
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1608
    const/4 v6, 0x1

    return v6

    .line 1612
    :pswitch_7a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1613
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v265, v0

    .line 1615
    .local v265, "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v346, v0

    .line 1616
    .local v346, "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v345, v0

    .line 1617
    .local v345, "sourcePkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v354, v0

    .line 1618
    .local v354, "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v265

    move/from16 v2, v346

    move-object/from16 v3, v345

    move-object/from16 v4, v354

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V

    .line 1619
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1620
    const/4 v6, 0x1

    return v6

    .line 1624
    .end local v265    # "is":Landroid/content/IIntentSender;
    .end local v345    # "sourcePkg":Ljava/lang/String;
    .end local v346    # "sourceUid":I
    .end local v354    # "tag":Ljava/lang/String;
    :pswitch_7b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1625
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v265, v0

    .line 1627
    .restart local v265    # "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v346, v0

    .line 1628
    .restart local v346    # "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v354, v0

    .line 1629
    .restart local v354    # "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v265

    move/from16 v2, v346

    move-object/from16 v3, v354

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 1630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1631
    const/4 v6, 0x1

    return v6

    .line 1635
    .end local v265    # "is":Landroid/content/IIntentSender;
    .end local v346    # "sourceUid":I
    .end local v354    # "tag":Ljava/lang/String;
    :pswitch_7c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1636
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v265, v0

    .line 1638
    .restart local v265    # "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v346, v0

    .line 1639
    .restart local v346    # "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v354, v0

    .line 1640
    .restart local v354    # "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v265

    move/from16 v2, v346

    move-object/from16 v3, v354

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 1641
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1642
    const/4 v6, 0x1

    return v6

    .line 1646
    .end local v265    # "is":Landroid/content/IIntentSender;
    .end local v346    # "sourceUid":I
    .end local v354    # "tag":Ljava/lang/String;
    :pswitch_7d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    move-object/16 v310, v0

    .line 1648
    .local v310, "pids":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v319, v0

    .line 1649
    .local v319, "reason":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6d

    const/4 v0, 0x1

    move/16 v339, v0

    .line 1650
    .local v339, "secure":Z
    :goto_5c
    move-object/from16 v0, p0

    move-object/from16 v1, v310

    move-object/from16 v2, v319

    move/from16 v3, v339

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v0

    move/16 v328, v0

    .line 1651
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1652
    move/from16 v0, v328

    if-eqz v0, :cond_6e

    const/4 v6, 0x1

    :goto_5d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1653
    const/4 v6, 0x1

    return v6

    .line 1649
    .end local v328    # "res":Z
    .end local v339    # "secure":Z
    :cond_6d
    const/4 v0, 0x0

    move/16 v339, v0

    goto :goto_5c

    .line 1652
    .restart local v328    # "res":Z
    .restart local v339    # "secure":Z
    :cond_6e
    const/4 v6, 0x0

    goto :goto_5d

    .line 1657
    .end local v310    # "pids":[I
    .end local v319    # "reason":Ljava/lang/String;
    .end local v328    # "res":Z
    .end local v339    # "secure":Z
    :pswitch_7e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v319, v0

    .line 1659
    .restart local v319    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v319

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v0

    move/16 v328, v0

    .line 1660
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1661
    move/from16 v0, v328

    if-eqz v0, :cond_6f

    const/4 v6, 0x1

    :goto_5e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1662
    const/4 v6, 0x1

    return v6

    .line 1661
    :cond_6f
    const/4 v6, 0x0

    goto :goto_5e

    .line 1666
    .end local v319    # "reason":Ljava/lang/String;
    .end local v328    # "res":Z
    :pswitch_7f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v209

    .line 1668
    .local v209, "app":Landroid/os/IBinder;
    new-instance v221, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v221

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1669
    .local v221, "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v209

    move-object/from16 v2, v221

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1670
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1671
    const/4 v6, 0x1

    return v6

    .line 1675
    .end local v209    # "app":Landroid/os/IBinder;
    .end local v221    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    :pswitch_80
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1676
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v209

    .line 1677
    .restart local v209    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v354, v0

    .line 1678
    .restart local v354    # "tag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_70

    const/4 v0, 0x1

    move/16 v353, v0

    .line 1679
    .local v353, "system":Z
    :goto_5f
    new-instance v221, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v221

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1680
    .restart local v221    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v209

    move-object/from16 v2, v354

    move/from16 v3, v353

    move-object/from16 v4, v221

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v0

    move/16 v328, v0

    .line 1681
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1682
    move/from16 v0, v328

    if-eqz v0, :cond_71

    const/4 v6, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1683
    const/4 v6, 0x1

    return v6

    .line 1678
    .end local v221    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v328    # "res":Z
    .end local v353    # "system":Z
    :cond_70
    const/4 v0, 0x0

    move/16 v353, v0

    .restart local v353    # "system":Z
    goto :goto_5f

    .line 1682
    .restart local v221    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .restart local v328    # "res":Z
    :cond_71
    const/4 v6, 0x0

    goto :goto_60

    .line 1687
    .end local v209    # "app":Landroid/os/IBinder;
    .end local v221    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v328    # "res":Z
    .end local v353    # "system":Z
    .end local v354    # "tag":Ljava/lang/String;
    :pswitch_81
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v209

    .line 1689
    .restart local v209    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v369, v0

    .line 1690
    .local v369, "violationMask":I
    new-instance v0, Landroid/os/StrictMode$ViolationInfo;

    move-object/16 v262, v0

    move-object/from16 v0, v262

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1691
    .local v262, "info":Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v209

    move/from16 v2, v369

    move-object/from16 v3, v262

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1692
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1693
    const/4 v6, 0x1

    return v6

    .line 1697
    .end local v209    # "app":Landroid/os/IBinder;
    .end local v262    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v369    # "violationMask":I
    :pswitch_82
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v342, v0

    .line 1699
    .local v342, "sig":I
    move-object/from16 v0, p0

    move/from16 v1, v342

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1700
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1701
    const/4 v6, 0x1

    return v6

    .line 1705
    .end local v342    # "sig":I
    :pswitch_83
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1707
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1708
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1709
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1710
    const/4 v6, 0x1

    return v6

    .line 1714
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_84
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1715
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    .line 1716
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1717
    const/4 v6, 0x1

    return v6

    .line 1721
    :pswitch_85
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1723
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1724
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killPackageDependents(Ljava/lang/String;I)V

    .line 1725
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1726
    const/4 v6, 0x1

    return v6

    .line 1730
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_86
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1732
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1733
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;I)V

    .line 1734
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1735
    const/4 v6, 0x1

    return v6

    .line 1739
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_87
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1741
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/16 v257, v0

    invoke-direct/range {v257 .. v257}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 1742
    .local v257, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v257

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 1743
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1744
    const/4 v6, 0x0

    move-object/from16 v0, v257

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1745
    const/4 v6, 0x1

    return v6

    .line 1749
    .end local v257    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :pswitch_88
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1750
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v224

    .line 1751
    .local v224, "config":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1752
    const/4 v6, 0x0

    move-object/from16 v0, v224

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1753
    const/4 v6, 0x1

    return v6

    .line 1757
    .end local v224    # "config":Landroid/content/pm/ConfigurationInfo;
    :pswitch_89
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v140

    .line 1759
    .local v140, "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1760
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_72

    const/16 v142, 0x1

    .line 1761
    .local v142, "start":Z
    :goto_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v144

    .line 1762
    .local v144, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_73

    .line 1763
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .local v15, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_62
    move-object/from16 v139, p0

    move/from16 v141, v17

    move-object/from16 v143, v15

    .line 1764
    invoke-virtual/range {v139 .. v144}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v0

    move/16 v328, v0

    .line 1765
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1766
    move/from16 v0, v328

    if-eqz v0, :cond_74

    const/4 v6, 0x1

    :goto_63
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1767
    const/4 v6, 0x1

    return v6

    .line 1760
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v142    # "start":Z
    .end local v144    # "profileType":I
    .end local v328    # "res":Z
    :cond_72
    const/16 v142, 0x0

    .restart local v142    # "start":Z
    goto :goto_61

    .line 1763
    .restart local v144    # "profileType":I
    :cond_73
    const/4 v15, 0x0

    goto :goto_62

    .line 1766
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v328    # "res":Z
    :cond_74
    const/4 v6, 0x0

    goto :goto_63

    .line 1771
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v17    # "userId":I
    .end local v140    # "process":Ljava/lang/String;
    .end local v142    # "start":Z
    .end local v144    # "profileType":I
    .end local v328    # "res":Z
    :pswitch_8a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v0

    move/16 v328, v0

    .line 1773
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1774
    move/from16 v0, v328

    if-eqz v0, :cond_75

    const/4 v6, 0x1

    :goto_64
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1775
    const/4 v6, 0x1

    return v6

    .line 1774
    :cond_75
    const/4 v6, 0x0

    goto :goto_64

    .line 1779
    .end local v328    # "res":Z
    :pswitch_8b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1780
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1781
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1782
    const/4 v6, 0x1

    return v6

    .line 1786
    :pswitch_8c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1787
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1788
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1789
    const/4 v6, 0x1

    return v6

    .line 1793
    :pswitch_8d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1794
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Landroid/content/Intent;

    .line 1795
    .restart local v90    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1796
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1797
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v1, v10, v8}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v215

    .line 1798
    .local v215, "binder":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1799
    move-object/from16 v0, p3

    move-object/from16 v1, v215

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1800
    const/4 v6, 0x1

    return v6

    .line 1804
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v90    # "service":Landroid/content/Intent;
    .end local v215    # "binder":Landroid/os/IBinder;
    :pswitch_8e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1806
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v214

    .line 1807
    .local v214, "backupRestoreMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1808
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v214

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Ljava/lang/String;II)Z

    move-result v0

    move/16 v351, v0

    .line 1809
    .local v351, "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1810
    move/from16 v0, v351

    if-eqz v0, :cond_76

    const/4 v6, 0x1

    :goto_65
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1811
    const/4 v6, 0x1

    return v6

    .line 1810
    :cond_76
    const/4 v6, 0x0

    goto :goto_65

    .line 1815
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v214    # "backupRestoreMode":I
    .end local v351    # "success":Z
    :pswitch_8f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1816
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1817
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v206

    .line 1818
    .local v206, "agent":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1819
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1820
    const/4 v6, 0x1

    return v6

    .line 1824
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v206    # "agent":Landroid/os/IBinder;
    :pswitch_90
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1825
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v261, v0

    move-object/from16 v0, v261

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    move-object/16 v261, v0

    .line 1826
    .local v261, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v261

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1827
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1828
    const/4 v6, 0x1

    return v6

    .line 1832
    .end local v261    # "info":Landroid/content/pm/ApplicationInfo;
    :pswitch_91
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1833
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1834
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->addPackageDependency(Ljava/lang/String;)V

    .line 1835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1836
    const/4 v6, 0x1

    return v6

    .line 1840
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_92
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1841
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v311, v0

    .line 1842
    .local v311, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v210

    .line 1843
    .local v210, "appId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1844
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v319, v0

    .line 1845
    .restart local v319    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v311

    move/from16 v2, v210

    move/from16 v3, v17

    move-object/from16 v4, v319

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->killApplication(Ljava/lang/String;IILjava/lang/String;)V

    .line 1846
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1847
    const/4 v6, 0x1

    return v6

    .line 1851
    .end local v17    # "userId":I
    .end local v210    # "appId":I
    .end local v311    # "pkg":Ljava/lang/String;
    .end local v319    # "reason":Ljava/lang/String;
    :pswitch_93
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v319, v0

    .line 1853
    .restart local v319    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v319

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1854
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1855
    const/4 v6, 0x1

    return v6

    .line 1859
    .end local v319    # "reason":Ljava/lang/String;
    :pswitch_94
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1860
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    move-object/16 v310, v0

    .line 1861
    .restart local v310    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v310

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    move-object/16 v329, v0

    .line 1862
    .local v329, "res":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1863
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v329

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1864
    const/4 v6, 0x1

    return v6

    .line 1868
    .end local v310    # "pids":[I
    .end local v329    # "res":[Landroid/os/Debug$MemoryInfo;
    :pswitch_95
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1869
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v315, v0

    .line 1870
    .local v315, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v132

    .line 1871
    .restart local v132    # "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v315

    move/from16 v2, v132

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1872
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1873
    const/4 v6, 0x1

    return v6

    .line 1877
    .end local v132    # "uid":I
    .end local v315    # "processName":Ljava/lang/String;
    :pswitch_96
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1879
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1880
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v234

    .line 1881
    .local v234, "enterAnim":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v235

    .line 1882
    .local v235, "exitAnim":I
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move-object/from16 v2, v32

    move/from16 v3, v234

    move/from16 v4, v235

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1883
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1884
    const/4 v6, 0x1

    return v6

    .line 1888
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v234    # "enterAnim":I
    .end local v235    # "exitAnim":I
    :pswitch_97
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1889
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v211

    .line 1890
    .local v211, "areThey":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1891
    if-eqz v211, :cond_77

    const/4 v6, 0x1

    :goto_66
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1892
    const/4 v6, 0x1

    return v6

    .line 1891
    :cond_77
    const/4 v6, 0x0

    goto :goto_66

    .line 1896
    .end local v211    # "areThey":Z
    :pswitch_98
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1897
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_78

    const/4 v0, 0x1

    move/16 v289, v0

    .line 1898
    .local v289, "monkey":Z
    :goto_67
    move-object/from16 v0, p0

    move/from16 v1, v289

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setUserIsMonkey(Z)V

    .line 1899
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1900
    const/4 v6, 0x1

    return v6

    .line 1897
    .end local v289    # "monkey":Z
    :cond_78
    const/4 v0, 0x0

    move/16 v289, v0

    goto :goto_67

    .line 1904
    :pswitch_99
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1905
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1906
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1907
    const/4 v6, 0x1

    return v6

    .line 1911
    :pswitch_9a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1913
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v270, v0

    .line 1914
    .local v270, "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1915
    move/from16 v0, v270

    if-eqz v0, :cond_79

    const/4 v6, 0x1

    :goto_68
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1916
    const/4 v6, 0x1

    return v6

    .line 1915
    :cond_79
    const/4 v6, 0x0

    goto :goto_68

    .line 1920
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v270    # "isit":Z
    :pswitch_9b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1921
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1922
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v269, v0

    .line 1923
    .local v269, "isTopOfTask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1924
    move/from16 v0, v269

    if-eqz v0, :cond_7a

    const/4 v6, 0x1

    :goto_69
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1925
    const/4 v6, 0x1

    return v6

    .line 1924
    :cond_7a
    const/4 v6, 0x0

    goto :goto_69

    .line 1929
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v269    # "isTopOfTask":Z
    :pswitch_9c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1930
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1931
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v225

    .line 1932
    .local v225, "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1933
    if-eqz v225, :cond_7b

    const/4 v6, 0x1

    :goto_6a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1934
    const/4 v6, 0x1

    return v6

    .line 1933
    :cond_7b
    const/4 v6, 0x0

    goto :goto_6a

    .line 1938
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v225    # "converted":Z
    :pswitch_9d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1941
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_7c

    .line 1942
    const/16 v217, 0x0

    .line 1946
    :goto_6b
    invoke-static/range {v217 .. v217}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v0

    move-object/16 v299, v0

    .line 1947
    .local v299, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move-object/from16 v2, v299

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->convertToTranslucent(Landroid/os/IBinder;Landroid/app/ActivityOptions;)Z

    move-result v225

    .line 1948
    .restart local v225    # "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1949
    if-eqz v225, :cond_7d

    const/4 v6, 0x1

    :goto_6c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1950
    const/4 v6, 0x1

    return v6

    .line 1944
    .end local v225    # "converted":Z
    .end local v299    # "options":Landroid/app/ActivityOptions;
    :cond_7c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v217

    .local v217, "bundle":Landroid/os/Bundle;
    goto :goto_6b

    .line 1949
    .end local v217    # "bundle":Landroid/os/Bundle;
    .restart local v225    # "converted":Z
    .restart local v299    # "options":Landroid/app/ActivityOptions;
    :cond_7d
    const/4 v6, 0x0

    goto :goto_6c

    .line 1954
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v225    # "converted":Z
    .end local v299    # "options":Landroid/app/ActivityOptions;
    :pswitch_9e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1955
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1956
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityOptions(Landroid/os/IBinder;)Landroid/app/ActivityOptions;

    move-result-object v0

    move-object/16 v299, v0

    .line 1957
    .restart local v299    # "options":Landroid/app/ActivityOptions;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1958
    move-object/from16 v0, v299

    if-nez v0, :cond_7e

    const/4 v6, 0x0

    :goto_6d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1959
    const/4 v6, 0x1

    return v6

    .line 1958
    :cond_7e
    invoke-virtual/range {v299 .. v299}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    goto :goto_6d

    .line 1963
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v299    # "options":Landroid/app/ActivityOptions;
    :pswitch_9f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1964
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1965
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_7f

    const/16 v253, 0x1

    .line 1966
    .local v253, "imm":Z
    :goto_6e
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move/from16 v2, v253

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1967
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1968
    const/4 v6, 0x1

    return v6

    .line 1965
    .end local v253    # "imm":Z
    :cond_7f
    const/16 v253, 0x0

    goto :goto_6e

    .line 1972
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_a0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1973
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v0

    move/16 v270, v0

    .line 1974
    .restart local v270    # "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1975
    move/from16 v0, v270

    if-eqz v0, :cond_80

    const/4 v6, 0x1

    :goto_6f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1976
    const/4 v6, 0x1

    return v6

    .line 1975
    :cond_80
    const/4 v6, 0x0

    goto :goto_6f

    .line 1980
    .end local v270    # "isit":Z
    :pswitch_a1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v132

    .line 1982
    .restart local v132    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v263, v0

    .line 1983
    .local v263, "initialPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1984
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v287, v0

    .line 1985
    .local v287, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v132

    move/from16 v2, v263

    move-object/from16 v3, v32

    move-object/from16 v4, v287

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1986
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1987
    const/4 v6, 0x1

    return v6

    .line 1991
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v132    # "uid":I
    .end local v263    # "initialPid":I
    .end local v287    # "message":Ljava/lang/String;
    :pswitch_a2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1992
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v130

    check-cast v130, Landroid/net/Uri;

    .line 1993
    .restart local v130    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1994
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v130

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    move-object/16 v363, v0

    .line 1995
    .local v363, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1996
    move-object/from16 v0, p3

    move-object/from16 v1, v363

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1997
    const/4 v6, 0x1

    return v6

    .line 2001
    .end local v17    # "userId":I
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v363    # "type":Ljava/lang/String;
    :pswitch_a3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2002
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v127

    .line 2003
    .restart local v127    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v305, v0

    .line 2004
    .local v305, "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2005
    move-object/from16 v0, p3

    move-object/from16 v1, v305

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2006
    const/4 v6, 0x1

    return v6

    .line 2010
    .end local v127    # "name":Ljava/lang/String;
    .end local v305    # "perm":Landroid/os/IBinder;
    :pswitch_a4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2011
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v173

    .line 2012
    .restart local v173    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v173

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v305, v0

    .line 2013
    .restart local v305    # "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2014
    move-object/from16 v0, p3

    move-object/from16 v1, v305

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2015
    const/4 v6, 0x1

    return v6

    .line 2019
    .end local v173    # "activityToken":Landroid/os/IBinder;
    .end local v305    # "perm":Landroid/os/IBinder;
    :pswitch_a5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2020
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v146

    .line 2021
    .local v146, "owner":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v147

    .line 2022
    .local v147, "fromUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v138

    .line 2023
    .restart local v138    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v130

    check-cast v130, Landroid/net/Uri;

    .line 2024
    .restart local v130    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v133

    .line 2025
    .restart local v133    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v151

    .line 2026
    .local v151, "sourceUserId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v152

    .local v152, "targetUserId":I
    move-object/from16 v145, p0

    move-object/from16 v148, v138

    move-object/from16 v149, v130

    move/from16 v150, v133

    .line 2027
    invoke-virtual/range {v145 .. v152}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 2029
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2030
    const/4 v6, 0x1

    return v6

    .line 2034
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v133    # "mode":I
    .end local v138    # "targetPkg":Ljava/lang/String;
    .end local v146    # "owner":Landroid/os/IBinder;
    .end local v147    # "fromUid":I
    .end local v151    # "sourceUserId":I
    .end local v152    # "targetUserId":I
    :pswitch_a6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2035
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v146

    .line 2036
    .restart local v146    # "owner":Landroid/os/IBinder;
    const/16 v130, 0x0

    .line 2037
    .local v130, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_81

    .line 2038
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v130

    .end local v130    # "uri":Landroid/net/Uri;
    check-cast v130, Landroid/net/Uri;

    .line 2040
    :cond_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v133

    .line 2041
    .restart local v133    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2042
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v146

    move-object/from16 v2, v130

    move/from16 v3, v133

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 2043
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2044
    const/4 v6, 0x1

    return v6

    .line 2048
    .end local v17    # "userId":I
    .end local v133    # "mode":I
    .end local v146    # "owner":Landroid/os/IBinder;
    :pswitch_a7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2049
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 2050
    .restart local v43    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v138

    .line 2051
    .restart local v138    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v130

    check-cast v130, Landroid/net/Uri;

    .line 2052
    .local v130, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v157

    .line 2053
    .local v157, "modeFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v153, p0

    move/from16 v154, v43

    move-object/from16 v155, v138

    move-object/from16 v156, v130

    move/from16 v158, v17

    .line 2054
    invoke-virtual/range {v153 .. v158}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v0

    move/16 v322, v0

    .line 2055
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2056
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2057
    const/4 v6, 0x1

    return v6

    .line 2061
    .end local v17    # "userId":I
    .end local v43    # "callingUid":I
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v138    # "targetPkg":Ljava/lang/String;
    .end local v157    # "modeFlags":I
    .end local v322    # "res":I
    :pswitch_a8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2062
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v140

    .line 2063
    .restart local v140    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2064
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_82

    const/16 v161, 0x1

    .line 2065
    .local v161, "managed":Z
    :goto_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v162

    .line 2066
    .local v162, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_83

    .line 2067
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v163, v6

    .local v163, "fd":Landroid/os/ParcelFileDescriptor;
    :goto_71
    move-object/from16 v158, p0

    move-object/from16 v159, v140

    move/from16 v160, v17

    .line 2068
    invoke-virtual/range {v158 .. v163}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    move/16 v328, v0

    .line 2069
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2070
    move/from16 v0, v328

    if-eqz v0, :cond_84

    const/4 v6, 0x1

    :goto_72
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2071
    const/4 v6, 0x1

    return v6

    .line 2064
    .end local v161    # "managed":Z
    .end local v162    # "path":Ljava/lang/String;
    .end local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v328    # "res":Z
    :cond_82
    const/16 v161, 0x0

    .restart local v161    # "managed":Z
    goto :goto_70

    .line 2067
    .restart local v162    # "path":Ljava/lang/String;
    :cond_83
    const/16 v163, 0x0

    goto :goto_71

    .line 2070
    .restart local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v328    # "res":Z
    :cond_84
    const/4 v6, 0x0

    goto :goto_72

    .line 2076
    .end local v17    # "userId":I
    .end local v140    # "process":Ljava/lang/String;
    .end local v161    # "managed":Z
    .end local v162    # "path":Ljava/lang/String;
    .end local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v328    # "res":Z
    :pswitch_a9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2077
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 2078
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 2079
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2080
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v167

    check-cast v167, [Landroid/content/Intent;

    .line 2081
    .local v167, "intents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v168

    .line 2082
    .local v168, "resolvedTypes":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 2083
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_85

    .line 2084
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 2085
    :goto_73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v164, p0

    move-object/from16 v165, v7

    move-object/from16 v166, v8

    move-object/from16 v169, v11

    move-object/from16 v170, v16

    move/from16 v171, v17

    .line 2086
    invoke-virtual/range {v164 .. v171}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v332, v0

    .line 2088
    .restart local v332    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2089
    move-object/from16 v0, p3

    move/from16 v1, v332

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2090
    const/4 v6, 0x1

    return v6

    .line 2084
    .end local v17    # "userId":I
    .end local v332    # "result":I
    :cond_85
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_73

    .line 2095
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v167    # "intents":[Landroid/content/Intent;
    .end local v168    # "resolvedTypes":[Ljava/lang/String;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_aa
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2096
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v133

    .line 2097
    .restart local v133    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2098
    move-object/from16 v0, p3

    move/from16 v1, v133

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2099
    const/4 v6, 0x1

    return v6

    .line 2104
    .end local v133    # "mode":I
    :pswitch_ab
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v133

    .line 2106
    .restart local v133    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v133

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    .line 2107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2108
    move-object/from16 v0, p3

    move/from16 v1, v133

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2109
    const/4 v6, 0x1

    return v6

    .line 2114
    .end local v133    # "mode":I
    :pswitch_ac
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v311, v0

    .line 2116
    .restart local v311    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v311

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v133

    .line 2117
    .restart local v133    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2118
    move-object/from16 v0, p3

    move/from16 v1, v133

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2119
    const/4 v6, 0x1

    return v6

    .line 2124
    .end local v133    # "mode":I
    .end local v311    # "pkg":Ljava/lang/String;
    :pswitch_ad
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v311, v0

    .line 2126
    .restart local v311    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v133

    .line 2127
    .restart local v133    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v311

    move/from16 v2, v133

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 2128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2129
    const/4 v6, 0x1

    return v6

    .line 2133
    .end local v133    # "mode":I
    .end local v311    # "pkg":Ljava/lang/String;
    :pswitch_ae
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v366, v0

    .line 2135
    .local v366, "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v366

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    move-result v0

    move/16 v334, v0

    .line 2136
    .restart local v334    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2137
    move/from16 v0, v334

    if-eqz v0, :cond_86

    const/4 v6, 0x1

    :goto_74
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2138
    const/4 v6, 0x1

    return v6

    .line 2137
    :cond_86
    const/4 v6, 0x0

    goto :goto_74

    .line 2142
    .end local v334    # "result":Z
    .end local v366    # "userid":I
    :pswitch_af
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v366, v0

    .line 2144
    .restart local v366    # "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v366

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startUserInBackground(I)Z

    move-result v0

    move/16 v334, v0

    .line 2145
    .restart local v334    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2146
    move/from16 v0, v334

    if-eqz v0, :cond_87

    const/4 v6, 0x1

    :goto_75
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2147
    const/4 v6, 0x1

    return v6

    .line 2146
    :cond_87
    const/4 v6, 0x0

    goto :goto_75

    .line 2151
    .end local v334    # "result":Z
    .end local v366    # "userid":I
    :pswitch_b0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2153
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    move-object/16 v362, v0

    .line 2154
    .local v362, "token":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    move-object/16 v338, v0

    .line 2156
    .local v338, "secret":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2155
    invoke-static {v6}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v0

    move-object/16 v282, v0

    .line 2157
    .local v282, "listener":Landroid/os/IProgressListener;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v362

    move-object/from16 v3, v338

    move-object/from16 v4, v282

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result v0

    move/16 v334, v0

    .line 2158
    .restart local v334    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2159
    move/from16 v0, v334

    if-eqz v0, :cond_88

    const/4 v6, 0x1

    :goto_76
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2160
    const/4 v6, 0x1

    return v6

    .line 2159
    :cond_88
    const/4 v6, 0x0

    goto :goto_76

    .line 2164
    .end local v17    # "userId":I
    .end local v282    # "listener":Landroid/os/IProgressListener;
    .end local v334    # "result":Z
    .end local v338    # "secret":[B
    .end local v362    # "token":[B
    :pswitch_b1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v366, v0

    .line 2166
    .restart local v366    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_89

    const/16 v240, 0x1

    .line 2168
    .local v240, "force":Z
    :goto_77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2167
    invoke-static {v6}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v219

    .line 2169
    .local v219, "callback":Landroid/app/IStopUserCallback;
    move-object/from16 v0, p0

    move/from16 v1, v366

    move/from16 v2, v240

    move-object/from16 v3, v219

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v0

    move/16 v332, v0

    .line 2170
    .restart local v332    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2171
    move-object/from16 v0, p3

    move/from16 v1, v332

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2172
    const/4 v6, 0x1

    return v6

    .line 2166
    .end local v219    # "callback":Landroid/app/IStopUserCallback;
    .end local v240    # "force":Z
    .end local v332    # "result":I
    :cond_89
    const/16 v240, 0x0

    .restart local v240    # "force":Z
    goto :goto_77

    .line 2176
    .end local v240    # "force":Z
    .end local v366    # "userid":I
    :pswitch_b2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2177
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    move-object/16 v365, v0

    .line 2178
    .local v365, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2179
    const/4 v6, 0x0

    move-object/from16 v0, v365

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2180
    const/4 v6, 0x1

    return v6

    .line 2184
    .end local v365    # "userInfo":Landroid/content/pm/UserInfo;
    :pswitch_b3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v366, v0

    .line 2186
    .restart local v366    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v203

    .line 2187
    .local v203, "_flags":I
    move-object/from16 v0, p0

    move/from16 v1, v366

    move/from16 v2, v203

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->isUserRunning(II)Z

    move-result v0

    move/16 v334, v0

    .line 2188
    .restart local v334    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2189
    move/from16 v0, v334

    if-eqz v0, :cond_8a

    const/4 v6, 0x1

    :goto_78
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2190
    const/4 v6, 0x1

    return v6

    .line 2189
    :cond_8a
    const/4 v6, 0x0

    goto :goto_78

    .line 2194
    .end local v203    # "_flags":I
    .end local v334    # "result":Z
    .end local v366    # "userid":I
    :pswitch_b4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2195
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningUserIds()[I

    move-result-object v0

    move-object/16 v335, v0

    .line 2196
    .local v335, "result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2197
    move-object/from16 v0, p3

    move-object/from16 v1, v335

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2198
    const/4 v6, 0x1

    return v6

    .line 2203
    .end local v335    # "result":[I
    :pswitch_b5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 2205
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->removeTask(I)Z

    move-result v0

    move/16 v334, v0

    .line 2206
    .restart local v334    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2207
    move/from16 v0, v334

    if-eqz v0, :cond_8b

    const/4 v6, 0x1

    :goto_79
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2208
    const/4 v6, 0x1

    return v6

    .line 2207
    :cond_8b
    const/4 v6, 0x0

    goto :goto_79

    .line 2212
    .end local v69    # "taskId":I
    .end local v334    # "result":Z
    :pswitch_b6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2213
    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v0

    move-object/16 v292, v0

    .line 2215
    .local v292, "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v292

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2216
    const/4 v6, 0x1

    return v6

    .line 2220
    .end local v292    # "observer":Landroid/app/IProcessObserver;
    :pswitch_b7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2221
    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v0

    move-object/16 v292, v0

    .line 2223
    .restart local v292    # "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v292

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2224
    const/4 v6, 0x1

    return v6

    .line 2228
    .end local v292    # "observer":Landroid/app/IProcessObserver;
    :pswitch_b8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2229
    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v0

    move-object/16 v293, v0

    .line 2231
    .local v293, "observer":Landroid/app/IUidObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v373, v0

    .line 2232
    .local v373, "which":I
    move-object/from16 v0, p0

    move-object/from16 v1, v293

    move/from16 v2, v373

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->registerUidObserver(Landroid/app/IUidObserver;I)V

    .line 2233
    const/4 v6, 0x1

    return v6

    .line 2237
    .end local v293    # "observer":Landroid/app/IUidObserver;
    .end local v373    # "which":I
    :pswitch_b9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2238
    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v0

    move-object/16 v293, v0

    .line 2240
    .restart local v293    # "observer":Landroid/app/IUidObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v293

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 2241
    const/4 v6, 0x1

    return v6

    .line 2246
    .end local v293    # "observer":Landroid/app/IUidObserver;
    :pswitch_ba
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v311, v0

    .line 2248
    .restart local v311    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v311

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v212

    .line 2249
    .local v212, "ask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2250
    if-eqz v212, :cond_8c

    const/4 v6, 0x1

    :goto_7a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2251
    const/4 v6, 0x1

    return v6

    .line 2250
    :cond_8c
    const/4 v6, 0x0

    goto :goto_7a

    .line 2256
    .end local v212    # "ask":Z
    .end local v311    # "pkg":Ljava/lang/String;
    :pswitch_bb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v311, v0

    .line 2258
    .restart local v311    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8d

    const/16 v212, 0x1

    .line 2259
    .restart local v212    # "ask":Z
    :goto_7b
    move-object/from16 v0, p0

    move-object/from16 v1, v311

    move/from16 v2, v212

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 2260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2261
    const/4 v6, 0x1

    return v6

    .line 2258
    .end local v212    # "ask":Z
    :cond_8d
    const/16 v212, 0x0

    goto :goto_7b

    .line 2265
    .end local v311    # "pkg":Ljava/lang/String;
    :pswitch_bc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2266
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v318, v0

    .line 2268
    .restart local v318    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v318

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v0

    move/16 v328, v0

    .line 2269
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2270
    move/from16 v0, v328

    if-eqz v0, :cond_8e

    const/4 v6, 0x1

    :goto_7c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2271
    const/4 v6, 0x1

    return v6

    .line 2270
    :cond_8e
    const/4 v6, 0x0

    goto :goto_7c

    .line 2275
    .end local v318    # "r":Landroid/content/IIntentSender;
    .end local v328    # "res":Z
    :pswitch_bd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2276
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v318, v0

    .line 2278
    .restart local v318    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v318

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v0

    move/16 v328, v0

    .line 2279
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2280
    move/from16 v0, v328

    if-eqz v0, :cond_8f

    const/4 v6, 0x1

    :goto_7d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2281
    const/4 v6, 0x1

    return v6

    .line 2280
    :cond_8f
    const/4 v6, 0x0

    goto :goto_7d

    .line 2285
    .end local v318    # "r":Landroid/content/IIntentSender;
    .end local v328    # "res":Z
    :pswitch_be
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2286
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v318, v0

    .line 2288
    .restart local v318    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v318

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v9

    .line 2289
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2290
    if-eqz v9, :cond_90

    .line 2291
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2292
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2296
    :goto_7e
    const/4 v6, 0x1

    return v6

    .line 2294
    :cond_90
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7e

    .line 2300
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v318    # "r":Landroid/content/IIntentSender;
    :pswitch_bf
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2301
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v318, v0

    .line 2303
    .restart local v318    # "r":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v314, v0

    .line 2304
    .local v314, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v318

    move-object/from16 v2, v314

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v354, v0

    .line 2305
    .restart local v354    # "tag":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2306
    move-object/from16 v0, p3

    move-object/from16 v1, v354

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2307
    const/4 v6, 0x1

    return v6

    .line 2311
    .end local v314    # "prefix":Ljava/lang/String;
    .end local v318    # "r":Landroid/content/IIntentSender;
    .end local v354    # "tag":Ljava/lang/String;
    :pswitch_c0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2312
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 2313
    .restart local v39    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 2314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2315
    const/4 v6, 0x1

    return v6

    .line 2319
    .end local v39    # "config":Landroid/content/res/Configuration;
    :pswitch_c1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    move-object/16 v310, v0

    .line 2321
    .restart local v310    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v310

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    move-result-object v0

    move-object/16 v317, v0

    .line 2322
    .local v317, "pss":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2323
    move-object/from16 v0, p3

    move-object/from16 v1, v317

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 2324
    const/4 v6, 0x1

    return v6

    .line 2328
    .end local v310    # "pids":[I
    .end local v317    # "pss":[J
    :pswitch_c2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2329
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v290, v0

    move-object/from16 v0, v290

    check-cast v0, Ljava/lang/CharSequence;

    move-object/16 v290, v0

    .line 2330
    .local v290, "msg":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_91

    const/16 v208, 0x1

    .line 2331
    .local v208, "always":Z
    :goto_7f
    move-object/from16 v0, p0

    move-object/from16 v1, v290

    move/from16 v2, v208

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 2332
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2333
    const/4 v6, 0x1

    return v6

    .line 2330
    .end local v208    # "always":Z
    :cond_91
    const/16 v208, 0x0

    goto :goto_7f

    .line 2337
    .end local v290    # "msg":Ljava/lang/CharSequence;
    :pswitch_c3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2338
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->keyguardWaitingForActivityDrawn()V

    .line 2339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2340
    const/4 v6, 0x1

    return v6

    .line 2344
    :pswitch_c4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->keyguardGoingAway(I)V

    .line 2346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2347
    const/4 v6, 0x1

    return v6

    .line 2351
    :pswitch_c5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2353
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v229

    .line 2354
    .local v229, "destAffinity":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move-object/from16 v2, v229

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    move/16 v328, v0

    .line 2355
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2356
    move/from16 v0, v328

    if-eqz v0, :cond_92

    const/4 v6, 0x1

    :goto_80
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2357
    const/4 v6, 0x1

    return v6

    .line 2356
    :cond_92
    const/4 v6, 0x0

    goto :goto_80

    .line 2361
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v229    # "destAffinity":Ljava/lang/String;
    .end local v328    # "res":Z
    :pswitch_c6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2363
    .restart local v93    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v355, v0

    move-object/from16 v0, v355

    check-cast v0, Landroid/content/Intent;

    move-object/16 v355, v0

    .line 2364
    .local v355, "target":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 2365
    .restart local v53    # "resultCode":I
    const/4 v0, 0x0

    move-object/16 v336, v0

    .line 2366
    .restart local v336    # "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_93

    .line 2367
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v336, v0

    .end local v336    # "resultData":Landroid/content/Intent;
    move-object/from16 v0, v336

    check-cast v0, Landroid/content/Intent;

    move-object/16 v336, v0

    .line 2369
    :cond_93
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move-object/from16 v2, v355

    move/from16 v3, v53

    move-object/from16 v4, v336

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v0

    move/16 v328, v0

    .line 2370
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2371
    move/from16 v0, v328

    if-eqz v0, :cond_94

    const/4 v6, 0x1

    :goto_81
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2372
    const/4 v6, 0x1

    return v6

    .line 2371
    :cond_94
    const/4 v6, 0x0

    goto :goto_81

    .line 2376
    .end local v53    # "resultCode":I
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v328    # "res":Z
    .end local v355    # "target":Landroid/content/Intent;
    :pswitch_c7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2378
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    move/16 v322, v0

    .line 2379
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2380
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2381
    const/4 v6, 0x1

    return v6

    .line 2385
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v322    # "res":I
    :pswitch_c8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2387
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v327, v0

    .line 2388
    .restart local v327    # "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2389
    move-object/from16 v0, p3

    move-object/from16 v1, v327

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2390
    const/4 v6, 0x1

    return v6

    .line 2394
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v327    # "res":Ljava/lang/String;
    :pswitch_c9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2395
    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v0

    move-object/16 v294, v0

    .line 2397
    .local v294, "observer":Landroid/app/IUserSwitchObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v127

    .line 2398
    .restart local v127    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v294

    move-object/from16 v2, v127

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 2399
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2400
    const/4 v6, 0x1

    return v6

    .line 2404
    .end local v127    # "name":Ljava/lang/String;
    .end local v294    # "observer":Landroid/app/IUserSwitchObserver;
    :pswitch_ca
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2405
    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v0

    move-object/16 v294, v0

    .line 2407
    .restart local v294    # "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v294

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2409
    const/4 v6, 0x1

    return v6

    .line 2413
    .end local v294    # "observer":Landroid/app/IUserSwitchObserver;
    :pswitch_cb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v216

    .line 2415
    .local v216, "bugreportType":I
    move-object/from16 v0, p0

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->requestBugReport(I)V

    .line 2416
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2417
    const/4 v6, 0x1

    return v6

    .line 2421
    .end local v216    # "bugreportType":I
    :pswitch_cc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v131

    .line 2423
    .restart local v131    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_95

    const/16 v204, 0x1

    .line 2424
    .local v204, "aboveSystem":Z
    :goto_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v319, v0

    .line 2425
    .restart local v319    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v131

    move/from16 v2, v204

    move-object/from16 v3, v319

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v0

    move-wide/16 v324, v0

    .line 2426
    .local v324, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2427
    move-object/from16 v0, p3

    move-wide/from16 v1, v324

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2428
    const/4 v6, 0x1

    return v6

    .line 2423
    .end local v204    # "aboveSystem":Z
    .end local v319    # "reason":Ljava/lang/String;
    .end local v324    # "res":J
    :cond_95
    const/16 v204, 0x0

    .restart local v204    # "aboveSystem":Z
    goto :goto_82

    .line 2432
    .end local v131    # "pid":I
    .end local v204    # "aboveSystem":Z
    :pswitch_cd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v170

    .line 2434
    .local v170, "requestType":I
    move-object/from16 v0, p0

    move/from16 v1, v170

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v0

    move-object/16 v326, v0

    .line 2435
    .local v326, "res":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2436
    move-object/from16 v0, p3

    move-object/from16 v1, v326

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2437
    const/4 v6, 0x1

    return v6

    .line 2441
    .end local v170    # "requestType":I
    .end local v326    # "res":Landroid/os/Bundle;
    :pswitch_ce
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v170

    .line 2443
    .restart local v170    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v171

    .line 2444
    .local v171, "receiver":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v172

    .line 2445
    .local v172, "receiverExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v173

    .line 2446
    .restart local v173    # "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_96

    const/16 v174, 0x1

    .line 2447
    .local v174, "focused":Z
    :goto_83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_97

    const/16 v175, 0x1

    .local v175, "newSessionId":Z
    :goto_84
    move-object/from16 v169, p0

    .line 2448
    invoke-virtual/range {v169 .. v175}, Landroid/app/ActivityManagerNative;->requestAssistContextExtras(ILcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v0

    move/16 v328, v0

    .line 2450
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2451
    move/from16 v0, v328

    if-eqz v0, :cond_98

    const/4 v6, 0x1

    :goto_85
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2452
    const/4 v6, 0x1

    return v6

    .line 2446
    .end local v174    # "focused":Z
    .end local v175    # "newSessionId":Z
    .end local v328    # "res":Z
    :cond_96
    const/16 v174, 0x0

    .restart local v174    # "focused":Z
    goto :goto_83

    .line 2447
    :cond_97
    const/16 v175, 0x0

    goto :goto_84

    .line 2451
    .restart local v175    # "newSessionId":Z
    .restart local v328    # "res":Z
    :cond_98
    const/4 v6, 0x0

    goto :goto_85

    .line 2456
    .end local v170    # "requestType":I
    .end local v171    # "receiver":Lcom/android/internal/os/IResultReceiver;
    .end local v172    # "receiverExtras":Landroid/os/Bundle;
    .end local v173    # "activityToken":Landroid/os/IBinder;
    .end local v174    # "focused":Z
    .end local v175    # "newSessionId":Z
    .end local v328    # "res":Z
    :pswitch_cf
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2458
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v178

    .line 2459
    .local v178, "extras":Landroid/os/Bundle;
    sget-object v6, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v179

    check-cast v179, Landroid/app/assist/AssistStructure;

    .line 2460
    .local v179, "structure":Landroid/app/assist/AssistStructure;
    sget-object v6, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v180

    check-cast v180, Landroid/app/assist/AssistContent;

    .line 2461
    .local v180, "content":Landroid/app/assist/AssistContent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_99

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    move-object/from16 v181, v6

    .local v181, "referrer":Landroid/net/Uri;
    :goto_86
    move-object/from16 v176, p0

    move-object/from16 v177, v93

    .line 2462
    invoke-virtual/range {v176 .. v181}, Landroid/app/ActivityManagerNative;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    .line 2463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2464
    const/4 v6, 0x1

    return v6

    .line 2461
    .end local v181    # "referrer":Landroid/net/Uri;
    :cond_99
    const/16 v181, 0x0

    goto :goto_86

    .line 2468
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v178    # "extras":Landroid/os/Bundle;
    .end local v179    # "structure":Landroid/app/assist/AssistStructure;
    .end local v180    # "content":Landroid/app/assist/AssistContent;
    :pswitch_d0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2469
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 2470
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v170

    .line 2471
    .restart local v170    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v185

    .line 2472
    .local v185, "hint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v186

    .line 2473
    .local v186, "userHandle":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v187

    .local v187, "args":Landroid/os/Bundle;
    move-object/from16 v182, p0

    move-object/from16 v183, v9

    move/from16 v184, v170

    .line 2474
    invoke-virtual/range {v182 .. v187}, Landroid/app/ActivityManagerNative;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z

    move-result v0

    move/16 v328, v0

    .line 2475
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2476
    move/from16 v0, v328

    if-eqz v0, :cond_9a

    const/4 v6, 0x1

    :goto_87
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2477
    const/4 v6, 0x1

    return v6

    .line 2476
    :cond_9a
    const/4 v6, 0x0

    goto :goto_87

    .line 2481
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v170    # "requestType":I
    .end local v185    # "hint":Ljava/lang/String;
    .end local v186    # "userHandle":I
    .end local v187    # "args":Landroid/os/Bundle;
    .end local v328    # "res":Z
    :pswitch_d1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2482
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isAssistDataAllowedOnCurrentActivity()Z

    move-result v0

    move/16 v328, v0

    .line 2483
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2484
    move/from16 v0, v328

    if-eqz v0, :cond_9b

    const/4 v6, 0x1

    :goto_88
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2485
    const/4 v6, 0x1

    return v6

    .line 2484
    :cond_9b
    const/4 v6, 0x0

    goto :goto_88

    .line 2489
    .end local v328    # "res":Z
    :pswitch_d2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2491
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v187

    .line 2492
    .restart local v187    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move-object/from16 v2, v187

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0

    move/16 v328, v0

    .line 2493
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2494
    move/from16 v0, v328

    if-eqz v0, :cond_9c

    const/4 v6, 0x1

    :goto_89
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2495
    const/4 v6, 0x1

    return v6

    .line 2494
    :cond_9c
    const/4 v6, 0x0

    goto :goto_89

    .line 2499
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v187    # "args":Landroid/os/Bundle;
    .end local v328    # "res":Z
    :pswitch_d3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v210

    .line 2501
    .restart local v210    # "appId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2502
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v319, v0

    .line 2503
    .restart local v319    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v210

    move/from16 v2, v17

    move-object/from16 v3, v319

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killUid(IILjava/lang/String;)V

    .line 2504
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2505
    const/4 v6, 0x1

    return v6

    .line 2509
    .end local v17    # "userId":I
    .end local v210    # "appId":I
    .end local v319    # "reason":Ljava/lang/String;
    :pswitch_d4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v62

    .line 2511
    .restart local v62    # "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9d

    const/16 v207, 0x1

    .line 2512
    .local v207, "allowRestart":Z
    :goto_8a
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move/from16 v2, v207

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->hang(Landroid/os/IBinder;Z)V

    .line 2513
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2514
    const/4 v6, 0x1

    return v6

    .line 2511
    .end local v207    # "allowRestart":Z
    :cond_9d
    const/16 v207, 0x0

    goto :goto_8a

    .line 2518
    .end local v62    # "who":Landroid/os/IBinder;
    :pswitch_d5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2520
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->reportActivityFullyDrawn(Landroid/os/IBinder;)V

    .line 2521
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2522
    const/4 v6, 0x1

    return v6

    .line 2526
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_d6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2528
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyActivityDrawn(Landroid/os/IBinder;)V

    .line 2529
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2530
    const/4 v6, 0x1

    return v6

    .line 2534
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_d7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2535
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->restart()V

    .line 2536
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2537
    const/4 v6, 0x1

    return v6

    .line 2541
    :pswitch_d8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2542
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->performIdleMaintenance()V

    .line 2543
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2544
    const/4 v6, 0x1

    return v6

    .line 2548
    :pswitch_d9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v303, v0

    .line 2551
    .local v303, "parentActivityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainerCallback;

    move-result-object v218

    .line 2553
    .local v218, "callback":Landroid/app/IActivityContainerCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v303

    move-object/from16 v2, v218

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->createVirtualActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;

    move-result-object v205

    .line 2554
    .local v205, "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2555
    if-eqz v205, :cond_9e

    .line 2556
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2557
    invoke-interface/range {v205 .. v205}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2561
    :goto_8b
    const/4 v6, 0x1

    return v6

    .line 2559
    :cond_9e
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8b

    .line 2565
    .end local v205    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v218    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v303    # "parentActivityToken":Landroid/os/IBinder;
    :pswitch_da
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainer;

    move-result-object v205

    .line 2568
    .restart local v205    # "activityContainer":Landroid/app/IActivityContainer;
    move-object/from16 v0, p0

    move-object/from16 v1, v205

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->deleteActivityContainer(Landroid/app/IActivityContainer;)V

    .line 2569
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2570
    const/4 v6, 0x1

    return v6

    .line 2574
    .end local v205    # "activityContainer":Landroid/app/IActivityContainer;
    :pswitch_db
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v230

    .line 2576
    .local v230, "displayId":I
    move-object/from16 v0, p0

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->createStackOnDisplay(I)Landroid/app/IActivityContainer;

    move-result-object v205

    .line 2577
    .restart local v205    # "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2578
    if-eqz v205, :cond_9f

    .line 2579
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2580
    invoke-interface/range {v205 .. v205}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2584
    :goto_8c
    const/4 v6, 0x1

    return v6

    .line 2582
    :cond_9f
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8c

    .line 2588
    .end local v205    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v230    # "displayId":I
    :pswitch_dc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v173

    .line 2590
    .restart local v173    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v173

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityDisplayId(Landroid/os/IBinder;)I

    move-result v230

    .line 2591
    .restart local v230    # "displayId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2592
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2593
    const/4 v6, 0x1

    return v6

    .line 2597
    .end local v173    # "activityToken":Landroid/os/IBinder;
    .end local v230    # "displayId":I
    :pswitch_dd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 2599
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(I)V

    .line 2600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2601
    const/4 v6, 0x1

    return v6

    .line 2605
    .end local v69    # "taskId":I
    :pswitch_de
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2607
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(Landroid/os/IBinder;)V

    .line 2608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2609
    const/4 v6, 0x1

    return v6

    .line 2613
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_df
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 2615
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startSystemLockTaskMode(I)V

    .line 2616
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2617
    const/4 v6, 0x1

    return v6

    .line 2621
    .end local v69    # "taskId":I
    :pswitch_e0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2622
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopLockTaskMode()V

    .line 2623
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2624
    const/4 v6, 0x1

    return v6

    .line 2628
    :pswitch_e1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2629
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopSystemLockTaskMode()V

    .line 2630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2631
    const/4 v6, 0x1

    return v6

    .line 2635
    :pswitch_e2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2636
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isInLockTaskMode()Z

    move-result v0

    move/16 v268, v0

    .line 2637
    .local v268, "isInLockTaskMode":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2638
    move/from16 v0, v268

    if-eqz v0, :cond_a0

    const/4 v6, 0x1

    :goto_8d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2639
    const/4 v6, 0x1

    return v6

    .line 2638
    :cond_a0
    const/4 v6, 0x0

    goto :goto_8d

    .line 2643
    .end local v268    # "isInLockTaskMode":Z
    :pswitch_e3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2644
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getLockTaskModeState()I

    move-result v0

    move/16 v283, v0

    .line 2645
    .local v283, "lockTaskModeState":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2646
    move-object/from16 v0, p3

    move/from16 v1, v283

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2647
    const/4 v6, 0x1

    return v6

    .line 2651
    .end local v283    # "lockTaskModeState":I
    :pswitch_e4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2653
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    .line 2654
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2655
    const/4 v6, 0x1

    return v6

    .line 2659
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_e5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2662
    .restart local v93    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v367, v0

    move-object/from16 v0, v367

    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    move-object/16 v367, v0

    .line 2663
    .local v367, "values":Landroid/app/ActivityManager$TaskDescription;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move-object/from16 v2, v367

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    .line 2664
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2665
    const/4 v6, 0x1

    return v6

    .line 2669
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v367    # "values":Landroid/app/ActivityManager$TaskDescription;
    :pswitch_e6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 2671
    .restart local v69    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v331, v0

    .line 2672
    .local v331, "resizeableMode":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v331

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskResizeable(II)V

    .line 2673
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2674
    const/4 v6, 0x1

    return v6

    .line 2678
    .end local v69    # "taskId":I
    .end local v331    # "resizeableMode":I
    :pswitch_e7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 2680
    .restart local v69    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v330, v0

    .line 2681
    .local v330, "resizeMode":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/graphics/Rect;

    .line 2682
    .local v77, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v69

    move-object/from16 v2, v77

    move/from16 v3, v330

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 2683
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2684
    const/4 v6, 0x1

    return v6

    .line 2688
    .end local v69    # "taskId":I
    .end local v77    # "r":Landroid/graphics/Rect;
    .end local v330    # "resizeMode":I
    :pswitch_e8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 2690
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v77

    .line 2691
    .restart local v77    # "r":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2692
    const/4 v6, 0x0

    move-object/from16 v0, v77

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2693
    const/4 v6, 0x1

    return v6

    .line 2697
    .end local v69    # "taskId":I
    .end local v77    # "r":Landroid/graphics/Rect;
    :pswitch_e9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v236

    .line 2699
    .local v236, "filename":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2700
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v236

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v251

    .line 2701
    .local v251, "icon":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2702
    if-nez v251, :cond_a1

    .line 2703
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2708
    :goto_8e
    const/4 v6, 0x1

    return v6

    .line 2705
    :cond_a1
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2706
    const/4 v6, 0x0

    move-object/from16 v0, v251

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8e

    .line 2712
    .end local v17    # "userId":I
    .end local v236    # "filename":Ljava/lang/String;
    .end local v251    # "icon":Landroid/graphics/Bitmap;
    :pswitch_ea
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2714
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_a2

    .line 2715
    const/16 v217, 0x0

    .line 2719
    :goto_8f
    invoke-static/range {v217 .. v217}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v0

    move-object/16 v299, v0

    .line 2720
    .restart local v299    # "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    move-object/from16 v1, v299

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 2721
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2722
    const/4 v6, 0x1

    return v6

    .line 2717
    .end local v299    # "options":Landroid/app/ActivityOptions;
    :cond_a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v217

    .restart local v217    # "bundle":Landroid/os/Bundle;
    goto :goto_8f

    .line 2726
    .end local v217    # "bundle":Landroid/os/Bundle;
    :pswitch_eb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2728
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-lez v6, :cond_a3

    const/16 v232, 0x1

    .line 2729
    .local v232, "enable":Z
    :goto_90
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move/from16 v2, v232

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->requestVisibleBehind(Landroid/os/IBinder;Z)Z

    move-result v0

    move/16 v351, v0

    .line 2730
    .restart local v351    # "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2731
    move/from16 v0, v351

    if-eqz v0, :cond_a4

    const/4 v6, 0x1

    :goto_91
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2732
    const/4 v6, 0x1

    return v6

    .line 2728
    .end local v232    # "enable":Z
    .end local v351    # "success":Z
    :cond_a3
    const/16 v232, 0x0

    goto :goto_90

    .line 2731
    .restart local v232    # "enable":Z
    .restart local v351    # "success":Z
    :cond_a4
    const/4 v6, 0x0

    goto :goto_91

    .line 2736
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v232    # "enable":Z
    .end local v351    # "success":Z
    :pswitch_ec
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2738
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isBackgroundVisibleBehind(Landroid/os/IBinder;)Z

    move-result v233

    .line 2739
    .restart local v233    # "enabled":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2740
    if-eqz v233, :cond_a5

    const/4 v6, 0x1

    :goto_92
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2741
    const/4 v6, 0x1

    return v6

    .line 2740
    :cond_a5
    const/4 v6, 0x0

    goto :goto_92

    .line 2745
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v233    # "enabled":Z
    :pswitch_ed
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2747
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->backgroundResourcesReleased(Landroid/os/IBinder;)V

    .line 2748
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2749
    const/4 v6, 0x1

    return v6

    .line 2753
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_ee
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2755
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    .line 2756
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2757
    const/4 v6, 0x1

    return v6

    .line 2761
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_ef
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2763
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 2764
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2765
    const/4 v6, 0x1

    return v6

    .line 2769
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_f0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2770
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->bootAnimationComplete()V

    .line 2771
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2772
    const/4 v6, 0x1

    return v6

    .line 2776
    :pswitch_f1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v132

    .line 2778
    .restart local v132    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v238

    .line 2779
    .local v238, "firstPacket":[B
    move-object/from16 v0, p0

    move/from16 v1, v132

    move-object/from16 v2, v238

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->notifyCleartextNetwork(I[B)V

    .line 2780
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2781
    const/4 v6, 0x1

    return v6

    .line 2785
    .end local v132    # "uid":I
    .end local v238    # "firstPacket":[B
    :pswitch_f2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v190

    .line 2787
    .local v190, "procName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v132

    .line 2788
    .restart local v132    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v192

    .line 2789
    .local v192, "maxMemSize":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v194

    .local v194, "reportPackage":Ljava/lang/String;
    move-object/from16 v189, p0

    move/from16 v191, v132

    .line 2790
    invoke-virtual/range {v189 .. v194}, Landroid/app/ActivityManagerNative;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 2791
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2792
    const/4 v6, 0x1

    return v6

    .line 2796
    .end local v132    # "uid":I
    .end local v190    # "procName":Ljava/lang/String;
    .end local v192    # "maxMemSize":J
    .end local v194    # "reportPackage":Ljava/lang/String;
    :pswitch_f3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v162

    .line 2798
    .restart local v162    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v162

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->dumpHeapFinished(Ljava/lang/String;)V

    .line 2799
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2800
    const/4 v6, 0x1

    return v6

    .line 2804
    .end local v162    # "path":Ljava/lang/String;
    :pswitch_f4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2806
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2805
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 2807
    .restart local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a6

    const/4 v0, 0x1

    move/16 v271, v0

    .line 2808
    .local v271, "keepAwake":Z
    :goto_93
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v271

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    .line 2809
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2810
    const/4 v6, 0x1

    return v6

    .line 2807
    .end local v271    # "keepAwake":Z
    :cond_a6
    const/4 v0, 0x0

    move/16 v271, v0

    goto :goto_93

    .line 2814
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :pswitch_f5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2816
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    move-object/16 v302, v0

    .line 2817
    .local v302, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v302

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 2818
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2819
    const/4 v6, 0x1

    return v6

    .line 2823
    .end local v17    # "userId":I
    .end local v302    # "packages":[Ljava/lang/String;
    :pswitch_f6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2824
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 2825
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateDeviceOwner(Ljava/lang/String;)V

    .line 2826
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2827
    const/4 v6, 0x1

    return v6

    .line 2831
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_f7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2832
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v311, v0

    .line 2833
    .restart local v311    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2834
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v311

    invoke-virtual {v0, v1, v8}, Landroid/app/ActivityManagerNative;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move/16 v322, v0

    .line 2835
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2836
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2837
    const/4 v6, 0x1

    return v6

    .line 2841
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v311    # "pkg":Ljava/lang/String;
    .end local v322    # "res":I
    :pswitch_f8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v140

    .line 2843
    .restart local v140    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2844
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v272, v0

    .line 2845
    .restart local v272    # "level":I
    move-object/from16 v0, p0

    move-object/from16 v1, v140

    move/from16 v2, v17

    move/from16 v3, v272

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v0

    move/16 v328, v0

    .line 2846
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2847
    move/from16 v0, v328

    if-eqz v0, :cond_a7

    const/4 v6, 0x1

    :goto_94
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2848
    const/4 v6, 0x1

    return v6

    .line 2847
    :cond_a7
    const/4 v6, 0x0

    goto :goto_94

    .line 2852
    .end local v17    # "userId":I
    .end local v140    # "process":Ljava/lang/String;
    .end local v272    # "level":I
    .end local v328    # "res":Z
    :pswitch_f9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2854
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v328, v0

    .line 2855
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2856
    move/from16 v0, v328

    if-eqz v0, :cond_a8

    const/4 v6, 0x1

    :goto_95
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2857
    const/4 v6, 0x1

    return v6

    .line 2856
    :cond_a8
    const/4 v6, 0x0

    goto :goto_95

    .line 2861
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v328    # "res":Z
    :pswitch_fa
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2862
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->startBinderTracking()Z

    move-result v0

    move/16 v328, v0

    .line 2863
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2864
    move/from16 v0, v328

    if-eqz v0, :cond_a9

    const/4 v6, 0x1

    :goto_96
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2865
    const/4 v6, 0x1

    return v6

    .line 2864
    :cond_a9
    const/4 v6, 0x0

    goto :goto_96

    .line 2869
    .end local v328    # "res":Z
    :pswitch_fb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2870
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_aa

    .line 2871
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v163, v6

    .line 2872
    .restart local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_97
    move-object/from16 v0, p0

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    move/16 v328, v0

    .line 2873
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2874
    move/from16 v0, v328

    if-eqz v0, :cond_ab

    const/4 v6, 0x1

    :goto_98
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2875
    const/4 v6, 0x1

    return v6

    .line 2871
    .end local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v328    # "res":Z
    :cond_aa
    const/16 v163, 0x0

    goto :goto_97

    .line 2874
    .restart local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v328    # "res":Z
    :cond_ab
    const/4 v6, 0x0

    goto :goto_98

    .line 2878
    .end local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v328    # "res":Z
    :pswitch_fc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2879
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2880
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityStackId(Landroid/os/IBinder;)I

    move-result v76

    .line 2881
    .restart local v76    # "stackId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2882
    move-object/from16 v0, p3

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2883
    const/4 v6, 0x1

    return v6

    .line 2886
    .end local v76    # "stackId":I
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_fd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2888
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->exitFreeformMode(Landroid/os/IBinder;)V

    .line 2889
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2890
    const/4 v6, 0x1

    return v6

    .line 2893
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_fe
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2895
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ActivityManagerNative;->readIntArray(Landroid/os/Parcel;)[I

    move-result-object v249

    .line 2896
    .local v249, "horizontal":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ActivityManagerNative;->readIntArray(Landroid/os/Parcel;)[I

    move-result-object v0

    move-object/16 v368, v0

    .line 2897
    .local v368, "vertical":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ActivityManagerNative;->readIntArray(Landroid/os/Parcel;)[I

    move-result-object v0

    move-object/16 v344, v0

    .line 2898
    .local v344, "smallest":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move-object/from16 v2, v249

    move-object/from16 v3, v368

    move-object/from16 v4, v344

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->reportSizeConfigurations(Landroid/os/IBinder;[I[I[I)V

    .line 2899
    const/4 v6, 0x1

    return v6

    .line 2902
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v249    # "horizontal":[I
    .end local v344    # "smallest":[I
    .end local v368    # "vertical":[I
    :pswitch_ff
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2903
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_ac

    const/4 v0, 0x1

    move/16 v352, v0

    .line 2904
    .local v352, "suppress":Z
    :goto_99
    move-object/from16 v0, p0

    move/from16 v1, v352

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->suppressResizeConfigChanges(Z)V

    .line 2905
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2906
    const/4 v6, 0x1

    return v6

    .line 2903
    .end local v352    # "suppress":Z
    :cond_ac
    const/4 v0, 0x0

    move/16 v352, v0

    goto :goto_99

    .line 2909
    :pswitch_100
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2910
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 2911
    .restart local v76    # "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_ad

    const/4 v0, 0x1

    move/16 v297, v0

    .line 2912
    .local v297, "onTop":Z
    :goto_9a
    move-object/from16 v0, p0

    move/from16 v1, v76

    move/from16 v2, v297

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveTasksToFullscreenStack(IZ)V

    .line 2913
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2914
    const/4 v6, 0x1

    return v6

    .line 2911
    .end local v297    # "onTop":Z
    :cond_ad
    const/4 v0, 0x0

    move/16 v297, v0

    goto :goto_9a

    .line 2917
    .end local v76    # "stackId":I
    :pswitch_101
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2918
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v132

    .line 2919
    .restart local v132    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v311, v0

    .line 2920
    .restart local v311    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v132

    move-object/from16 v2, v311

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getAppStartMode(ILjava/lang/String;)I

    move-result v0

    move/16 v322, v0

    .line 2921
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2922
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2923
    const/4 v6, 0x1

    return v6

    .line 2926
    .end local v132    # "uid":I
    .end local v311    # "pkg":Ljava/lang/String;
    .end local v322    # "res":I
    :pswitch_102
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2927
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2928
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInMultiWindowMode(Landroid/os/IBinder;)Z

    move-result v254

    .line 2929
    .local v254, "inMultiWindow":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2930
    if-eqz v254, :cond_ae

    const/4 v6, 0x1

    :goto_9b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2931
    const/4 v6, 0x1

    return v6

    .line 2930
    :cond_ae
    const/4 v6, 0x0

    goto :goto_9b

    .line 2934
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v254    # "inMultiWindow":Z
    :pswitch_103
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2935
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2936
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInPictureInPictureMode(Landroid/os/IBinder;)Z

    move-result v255

    .line 2937
    .local v255, "inPip":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2938
    if-eqz v255, :cond_af

    const/4 v6, 0x1

    :goto_9c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2939
    const/4 v6, 0x1

    return v6

    .line 2938
    :cond_af
    const/4 v6, 0x0

    goto :goto_9c

    .line 2942
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v255    # "inPip":Z
    :pswitch_104
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2943
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2944
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->enterPictureInPictureMode(Landroid/os/IBinder;)V

    .line 2945
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2946
    const/4 v6, 0x1

    return v6

    .line 2949
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_105
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2950
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2951
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_b0

    const/16 v232, 0x1

    .line 2952
    .local v232, "enable":Z
    :goto_9d
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v300, v0

    move-object/from16 v0, v300

    check-cast v0, Landroid/content/ComponentName;

    move-object/16 v300, v0

    .line 2953
    .local v300, "packageName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move/from16 v2, v232

    move-object/from16 v3, v300

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result v0

    move/16 v322, v0

    .line 2954
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2955
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2956
    const/4 v6, 0x1

    return v6

    .line 2951
    .end local v232    # "enable":Z
    .end local v300    # "packageName":Landroid/content/ComponentName;
    .end local v322    # "res":I
    :cond_b0
    const/16 v232, 0x0

    .restart local v232    # "enable":Z
    goto :goto_9d

    .line 2959
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v232    # "enable":Z
    :pswitch_106
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2960
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v300, v0

    move-object/from16 v0, v300

    check-cast v0, Landroid/content/ComponentName;

    move-object/16 v300, v0

    .line 2961
    .restart local v300    # "packageName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v300

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    move/16 v328, v0

    .line 2962
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2963
    move/from16 v0, v328

    if-eqz v0, :cond_b1

    const/4 v6, 0x1

    :goto_9e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2964
    const/4 v6, 0x1

    return v6

    .line 2963
    :cond_b1
    const/4 v6, 0x0

    goto :goto_9e

    .line 2967
    .end local v300    # "packageName":Landroid/content/ComponentName;
    .end local v328    # "res":Z
    :pswitch_107
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2968
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v186

    .line 2969
    .restart local v186    # "userHandle":I
    move-object/from16 v0, p0

    move/from16 v1, v186

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isAppForeground(I)Z

    move-result v0

    move/16 v266, v0

    .line 2970
    .restart local v266    # "isForeground":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2971
    move/from16 v0, v266

    if-eqz v0, :cond_b2

    const/4 v6, 0x1

    :goto_9f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2972
    const/4 v6, 0x1

    return v6

    .line 2971
    :cond_b2
    const/4 v6, 0x0

    goto :goto_9f

    .line 2975
    .end local v186    # "userHandle":I
    .end local v266    # "isForeground":Z
    :pswitch_108
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2976
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2977
    const/4 v6, 0x1

    return v6

    .line 2980
    :pswitch_109
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 2982
    .restart local v76    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->removeStack(I)V

    .line 2983
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2984
    const/4 v6, 0x1

    return v6

    .line 2987
    .end local v76    # "stackId":I
    :pswitch_10a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2988
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2989
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyLockedProfile(I)V

    .line 2990
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2991
    const/4 v6, 0x1

    return v6

    .line 2994
    .end local v17    # "userId":I
    :pswitch_10b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2995
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 2996
    .restart local v9    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/app/ActivityManagerNative;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;)V

    .line 2997
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2998
    const/4 v6, 0x1

    return v6

    .line 3001
    .end local v9    # "intent":Landroid/content/Intent;
    :pswitch_10c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3002
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->sendIdleJobTrigger()V

    .line 3003
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3004
    const/4 v6, 0x1

    return v6

    .line 3007
    :pswitch_10d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3008
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v196

    .line 3009
    .local v196, "sender":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v197

    .line 3010
    .local v197, "scode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b3

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 3011
    :goto_a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 3013
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 3012
    invoke-static {v6}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v200

    .line 3014
    .local v200, "finishedReceiver":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v201

    .line 3015
    .local v201, "requiredPermission":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b4

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .local v16, "options":Landroid/os/Bundle;
    :goto_a1
    move-object/from16 v195, p0

    move-object/from16 v198, v9

    move-object/from16 v199, v10

    move-object/from16 v202, v16

    .line 3016
    invoke-virtual/range {v195 .. v202}, Landroid/app/ActivityManagerNative;->sendIntentSender(Landroid/content/IIntentSender;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    move/16 v332, v0

    .line 3018
    .restart local v332    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3019
    move-object/from16 v0, p3

    move/from16 v1, v332

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3020
    const/4 v6, 0x1

    return v6

    .line 3010
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v200    # "finishedReceiver":Landroid/content/IIntentReceiver;
    .end local v201    # "requiredPermission":Ljava/lang/String;
    .end local v332    # "result":I
    :cond_b3
    const/4 v9, 0x0

    .local v9, "intent":Landroid/content/Intent;
    goto :goto_a0

    .line 3015
    .end local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "resolvedType":Ljava/lang/String;
    .restart local v200    # "finishedReceiver":Landroid/content/IIntentReceiver;
    .restart local v201    # "requiredPermission":Ljava/lang/String;
    :cond_b4
    const/16 v16, 0x0

    goto :goto_a1

    .line 3023
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v196    # "sender":Landroid/content/IIntentSender;
    .end local v197    # "scode":I
    .end local v200    # "finishedReceiver":Landroid/content/IIntentReceiver;
    .end local v201    # "requiredPermission":Ljava/lang/String;
    :pswitch_10e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3024
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v361, v0

    .line 3025
    .local v361, "tid":I
    move-object/from16 v0, p0

    move/from16 v1, v361

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setVrThread(I)V

    .line 3026
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3027
    const/4 v6, 0x1

    return v6

    .line 3030
    .end local v361    # "tid":I
    :pswitch_10f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3031
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v361, v0

    .line 3032
    .restart local v361    # "tid":I
    move-object/from16 v0, p0

    move/from16 v1, v361

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setRenderThread(I)V

    .line 3033
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3034
    const/4 v6, 0x1

    return v6

    .line 3037
    .end local v361    # "tid":I
    :pswitch_110
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3038
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b5

    const/16 v248, 0x1

    .line 3039
    .local v248, "hasTopUi":Z
    :goto_a2
    move-object/from16 v0, p0

    move/from16 v1, v248

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setHasTopUi(Z)V

    .line 3040
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3041
    const/4 v6, 0x1

    return v6

    .line 3038
    .end local v248    # "hasTopUi":Z
    :cond_b5
    const/16 v248, 0x0

    goto :goto_a2

    .line 3044
    :pswitch_111
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3045
    sget-object v6, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v264, v0

    move-object/from16 v0, v264

    check-cast v0, Landroid/app/PendingIntent;

    move-object/16 v264, v0

    .line 3046
    .local v264, "intent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    move-object/from16 v1, v264

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->canBypassWorkChallenge(Landroid/app/PendingIntent;)Z

    move-result v0

    move/16 v334, v0

    .line 3047
    .restart local v334    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3048
    move/from16 v0, v334

    if-eqz v0, :cond_b6

    const/4 v6, 0x1

    :goto_a3
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3049
    const/4 v6, 0x1

    return v6

    .line 3048
    :cond_b6
    const/4 v6, 0x0

    goto :goto_a3

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7f
        :pswitch_1
        :pswitch_71
        :pswitch_72
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1c
        :pswitch_1d
        :pswitch_21
        :pswitch_22
        :pswitch_26
        :pswitch_2e
        :pswitch_0
        :pswitch_30
        :pswitch_40
        :pswitch_0
        :pswitch_41
        :pswitch_43
        :pswitch_44
        :pswitch_e
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_74
        :pswitch_75
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_4c
        :pswitch_5a
        :pswitch_5b
        :pswitch_61
        :pswitch_62
        :pswitch_64
        :pswitch_66
        :pswitch_68
        :pswitch_69
        :pswitch_76
        :pswitch_6f
        :pswitch_82
        :pswitch_28
        :pswitch_52
        :pswitch_1f
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_79
        :pswitch_b
        :pswitch_7a
        :pswitch_47
        :pswitch_58
        :pswitch_59
        :pswitch_51
        :pswitch_63
        :pswitch_4d
        :pswitch_2f
        :pswitch_70
        :pswitch_2b
        :pswitch_67
        :pswitch_86
        :pswitch_7d
        :pswitch_2a
        :pswitch_29
        :pswitch_2c
        :pswitch_88
        :pswitch_8d
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
        :pswitch_5f
        :pswitch_60
        :pswitch_91
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_6
        :pswitch_96
        :pswitch_80
        :pswitch_83
        :pswitch_97
        :pswitch_4
        :pswitch_13
        :pswitch_5
        :pswitch_2d
        :pswitch_99
        :pswitch_81
        :pswitch_9a
        :pswitch_9f
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_a3
        :pswitch_a5
        :pswitch_a6
        :pswitch_a7
        :pswitch_a8
        :pswitch_a9
        :pswitch_b3
        :pswitch_1e
        :pswitch_aa
        :pswitch_ab
        :pswitch_ac
        :pswitch_ad
        :pswitch_ba
        :pswitch_bb
        :pswitch_ae
        :pswitch_3e
        :pswitch_b5
        :pswitch_b6
        :pswitch_b7
        :pswitch_bc
        :pswitch_c0
        :pswitch_c1
        :pswitch_c2
        :pswitch_0
        :pswitch_84
        :pswitch_42
        :pswitch_48
        :pswitch_87
        :pswitch_7e
        :pswitch_b2
        :pswitch_c5
        :pswitch_c6
        :pswitch_73
        :pswitch_f
        :pswitch_c7
        :pswitch_45
        :pswitch_bd
        :pswitch_2
        :pswitch_b1
        :pswitch_c9
        :pswitch_ca
        :pswitch_b4
        :pswitch_cb
        :pswitch_cc
        :pswitch_0
        :pswitch_be
        :pswitch_cd
        :pswitch_cf
        :pswitch_c8
        :pswitch_d3
        :pswitch_98
        :pswitch_d4
        :pswitch_d9
        :pswitch_31
        :pswitch_34
        :pswitch_39
        :pswitch_3c
        :pswitch_3a
        :pswitch_9c
        :pswitch_9d
        :pswitch_d6
        :pswitch_d5
        :pswitch_d7
        :pswitch_d8
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_46
        :pswitch_e8
        :pswitch_dc
        :pswitch_da
        :pswitch_f8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_bf
        :pswitch_af
        :pswitch_3b
        :pswitch_dd
        :pswitch_de
        :pswitch_e0
        :pswitch_e2
        :pswitch_e5
        :pswitch_7
        :pswitch_9e
        :pswitch_23
        :pswitch_df
        :pswitch_e1
        :pswitch_10
        :pswitch_9b
        :pswitch_eb
        :pswitch_ec
        :pswitch_ed
        :pswitch_ee
        :pswitch_c
        :pswitch_ef
        :pswitch_c3
        :pswitch_3
        :pswitch_24
        :pswitch_25
        :pswitch_11
        :pswitch_12
        :pswitch_f0
        :pswitch_e9
        :pswitch_d0
        :pswitch_ea
        :pswitch_65
        :pswitch_3f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f1
        :pswitch_db
        :pswitch_3d
        :pswitch_e6
        :pswitch_ce
        :pswitch_e7
        :pswitch_e3
        :pswitch_f2
        :pswitch_f3
        :pswitch_f4
        :pswitch_f5
        :pswitch_7b
        :pswitch_7c
        :pswitch_f7
        :pswitch_e4
        :pswitch_f6
        :pswitch_c4
        :pswitch_b8
        :pswitch_b9
        :pswitch_d1
        :pswitch_d2
        :pswitch_f9
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_fa
        :pswitch_fb
        :pswitch_38
        :pswitch_fc
        :pswitch_fd
        :pswitch_fe
        :pswitch_32
        :pswitch_ff
        :pswitch_100
        :pswitch_33
        :pswitch_101
        :pswitch_b0
        :pswitch_102
        :pswitch_103
        :pswitch_85
        :pswitch_104
        :pswitch_20
        :pswitch_a4
        :pswitch_37
        :pswitch_105
        :pswitch_6d
        :pswitch_6e
        :pswitch_107
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_108
        :pswitch_109
        :pswitch_77
        :pswitch_78
        :pswitch_35
        :pswitch_106
        :pswitch_36
        :pswitch_10a
        :pswitch_10b
        :pswitch_10c
        :pswitch_10d
        :pswitch_10e
        :pswitch_10f
        :pswitch_110
        :pswitch_111
        :pswitch_57
    .end packed-switch
.end method
