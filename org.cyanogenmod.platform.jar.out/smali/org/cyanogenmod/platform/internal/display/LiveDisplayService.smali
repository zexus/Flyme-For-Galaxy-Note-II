.class public Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;
.super Lorg/cyanogenmod/platform/internal/CMSystemService;
.source "LiveDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;,
        Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;,
        Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$1;,
        Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$2;,
        Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;,
        Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$4;,
        Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$5;
    }
.end annotation


# static fields
.field private static ACTION_NEXT_MODE:Ljava/lang/String; = null

.field static ALL_CHANGED:I = 0x0

.field static DISPLAY_CHANGED:I = 0x0

.field static MODE_CHANGED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LiveDisplay"

.field static TWILIGHT_CHANGED:I


# instance fields
.field private mAwaitingNudge:Z

.field private final mBinder:Landroid/os/IBinder;

.field private mCTC:Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;

.field private mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

.field private final mContext:Landroid/content/Context;

.field private mDHC:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

.field private mModeObserver:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;

.field private final mNextModeReceiver:Landroid/content/BroadcastReceiver;

.field private mOMC:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

.field private final mState:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

.field private mSunset:Z

.field private mTileAnnouncementEntries:[Ljava/lang/String;

.field private mTileDescriptionEntries:[Ljava/lang/String;

.field private mTileEntries:[Ljava/lang/String;

.field private mTileEntryIconRes:[I

.field private mTileValues:[Ljava/lang/String;

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private mTwilightManager:Lcom/android/server/twilight/TwilightManager;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mAwaitingNudge:Z

    return v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mCTC:Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;

    return-object v0
.end method

.method static synthetic -get2(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lcyanogenmod/hardware/LiveDisplayConfig;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    return-object v0
.end method

.method static synthetic -get3(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mDHC:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    return-object v0
.end method

.method static synthetic -get5(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get6(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mModeObserver:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;

    return-object v0
.end method

.method static synthetic -get7(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mOMC:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

    return-object v0
.end method

.method static synthetic -get8(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mState:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    return-object v0
.end method

.method static synthetic -get9(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Lcom/android/server/twilight/TwilightManager;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)Z
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;Ljava/lang/String;I)I
    .locals 1
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)I
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->getNextModeIndex()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->nudge()V

    return-void
.end method

.method static synthetic -wrap4(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->publishCustomTile()V

    return-void
.end method

.method static synthetic -wrap5(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap6(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->stopNudgingMe()V

    return-void
.end method

.method static synthetic -wrap7(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->updateFeatures(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-string/jumbo v0, "cyanogenmod.hardware.NEXT_LIVEDISPLAY_MODE"

    sput-object v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->ACTION_NEXT_MODE:Ljava/lang/String;

    .line 113
    const/4 v0, 0x1

    sput v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->MODE_CHANGED:I

    .line 114
    const/4 v0, 0x2

    sput v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->DISPLAY_CHANGED:I

    .line 115
    const/4 v0, 0x4

    sput v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->TWILIGHT_CHANGED:I

    .line 116
    const/16 v0, 0xff

    sput v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->ALL_CHANGED:I

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMSystemService;-><init>(Landroid/content/Context;)V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mAwaitingNudge:Z

    .line 94
    iput-boolean v2, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mSunset:Z

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    .line 133
    new-instance v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    invoke-direct {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mState:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    .line 348
    new-instance v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$1;-><init>(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mNextModeReceiver:Landroid/content/BroadcastReceiver;

    .line 356
    new-instance v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$2;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$2;-><init>(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mBinder:Landroid/os/IBinder;

    .line 491
    new-instance v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$3;-><init>(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)V

    .line 490
    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 515
    new-instance v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$4;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$4;-><init>(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)V

    .line 514
    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .line 569
    new-instance v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$5;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$5;-><init>(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 138
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    .line 140
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string/jumbo v1, "LiveDisplay"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 142
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 143
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    .line 145
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->updateCustomTileEntries()V

    .line 135
    return-void
.end method

.method private getCurrentModeIndex()I
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mTileValues:[Ljava/lang/String;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mModeObserver:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;

    invoke-virtual {v1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;->getMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getCustomTileLongClickPendingIntent()Landroid/app/PendingIntent;
    .locals 6

    .prologue
    .line 342
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "cyanogenmod.settings.LIVEDISPLAY_SETTINGS"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v2, "i":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 344
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    .line 345
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 344
    const/4 v1, 0x0

    .line 345
    const/high16 v3, 0x8000000

    const/4 v4, 0x0

    .line 344
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getCustomTileNextModePendingIntent()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 336
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->ACTION_NEXT_MODE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    .line 338
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 337
    const/4 v3, 0x0

    .line 338
    const/high16 v4, 0x8000000

    .line 337
    invoke-static {v1, v3, v0, v4, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 661
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 662
    const/4 v1, -0x2

    .line 661
    invoke-static {v0, p1, p2, v1}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getNextModeIndex()I
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 261
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->getCurrentModeIndex()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 263
    .local v0, "next":I
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mTileValues:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 270
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mTileValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 271
    .local v1, "nextMode":I
    if-ne v1, v4, :cond_2

    .line 273
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    invoke-virtual {v2, v4}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 288
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 289
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mTileValues:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 290
    const/4 v0, 0x0

    goto :goto_0

    .line 277
    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 279
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mCTC:Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;

    invoke-virtual {v2}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getDayColorTemperature()I

    move-result v2

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    invoke-virtual {v3}, Lcyanogenmod/hardware/LiveDisplayConfig;->getDefaultDayTemperature()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 294
    :cond_3
    return v1
.end method

.method private getSunsetCounter()I
    .locals 4

    .prologue
    .line 586
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 587
    const-string/jumbo v1, "live_display_hinted"

    .line 588
    const/4 v2, -0x3

    .line 589
    const/4 v3, -0x2

    .line 586
    invoke-static {v0, v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private isScreenOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 579
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    .line 580
    const/4 v2, 0x2

    .line 579
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private nudge()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const v11, 0x3f060044

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 617
    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v7}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v6

    .line 618
    .local v6, "twilight":Lcom/android/server/twilight/TwilightState;
    iget-boolean v7, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mAwaitingNudge:Z

    if-eqz v7, :cond_0

    if-nez v6, :cond_1

    .line 619
    :cond_0
    return-void

    .line 622
    :cond_1
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->getSunsetCounter()I

    move-result v1

    .line 625
    .local v1, "counter":I
    invoke-virtual {v6}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mSunset:Z

    if-eqz v7, :cond_3

    :cond_2
    const/4 v5, 0x0

    .line 626
    .local v5, "transition":Z
    :goto_0
    invoke-virtual {v6}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v7

    iput-boolean v7, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mSunset:Z

    .line 627
    if-nez v5, :cond_4

    .line 628
    return-void

    .line 625
    .end local v5    # "transition":Z
    :cond_3
    const/4 v5, 0x1

    .restart local v5    # "transition":Z
    goto :goto_0

    .line 631
    :cond_4
    if-gtz v1, :cond_5

    .line 632
    add-int/lit8 v1, v1, 0x1

    .line 633
    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->updateSunsetCounter(I)V

    .line 635
    :cond_5
    if-nez v1, :cond_6

    .line 637
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "cyanogenmod.settings.LIVEDISPLAY_SETTINGS"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 639
    .local v2, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    const/high16 v8, 0x8000000

    .line 638
    invoke-static {v7, v9, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 640
    .local v4, "result":Landroid/app/PendingIntent;
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 641
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 642
    const v9, 0x3f060039

    .line 641
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 640
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 643
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 640
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 645
    const v8, 0x3f020004

    .line 640
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 646
    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v8}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v9, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v8

    .line 640
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 653
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 654
    .local v3, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v12, v10, v7, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 656
    invoke-direct {p0, v10}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->updateSunsetCounter(I)V

    .line 616
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "nm":Landroid/app/NotificationManager;
    .end local v4    # "result":Landroid/app/PendingIntent;
    :cond_6
    return-void
.end method

.method private publishCustomTile()V
    .locals 10

    .prologue
    return-void

    .line 299
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 300
    .local v7, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 302
    .local v4, "token":J
    :try_start_0
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->getCurrentModeIndex()I

    move-result v0

    .line 303
    .local v0, "idx":I
    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 304
    .local v6, "user":Landroid/os/UserHandle;
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lorg/cyanogenmod/internal/util/QSUtils;->getQSTileContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v1

    .line 306
    .local v1, "resourceContext":Landroid/content/Context;
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcyanogenmod/app/CMStatusBarManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/CMStatusBarManager;

    move-result-object v2

    .line 307
    .local v2, "statusBarManager":Lcyanogenmod/app/CMStatusBarManager;
    new-instance v8, Lcyanogenmod/app/CustomTile$Builder;

    invoke-direct {v8, v1}, Lcyanogenmod/app/CustomTile$Builder;-><init>(Landroid/content/Context;)V

    .line 308
    iget-object v9, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mTileEntries:[Ljava/lang/String;

    aget-object v9, v9, v0

    .line 307
    invoke-virtual {v8, v9}, Lcyanogenmod/app/CustomTile$Builder;->setLabel(Ljava/lang/String;)Lcyanogenmod/app/CustomTile$Builder;

    move-result-object v8

    .line 309
    iget-object v9, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mTileDescriptionEntries:[Ljava/lang/String;

    aget-object v9, v9, v0

    .line 307
    invoke-virtual {v8, v9}, Lcyanogenmod/app/CustomTile$Builder;->setContentDescription(Ljava/lang/String;)Lcyanogenmod/app/CustomTile$Builder;

    move-result-object v8

    .line 310
    iget-object v9, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mTileEntryIconRes:[I

    aget v9, v9, v0

    .line 307
    invoke-virtual {v8, v9}, Lcyanogenmod/app/CustomTile$Builder;->setIcon(I)Lcyanogenmod/app/CustomTile$Builder;

    move-result-object v8

    .line 311
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->getCustomTileLongClickPendingIntent()Landroid/app/PendingIntent;

    move-result-object v9

    .line 307
    invoke-virtual {v8, v9}, Lcyanogenmod/app/CustomTile$Builder;->setOnLongClickIntent(Landroid/app/PendingIntent;)Lcyanogenmod/app/CustomTile$Builder;

    move-result-object v8

    .line 312
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->getCustomTileNextModePendingIntent()Landroid/app/PendingIntent;

    move-result-object v9

    .line 307
    invoke-virtual {v8, v9}, Lcyanogenmod/app/CustomTile$Builder;->setOnClickIntent(Landroid/app/PendingIntent;)Lcyanogenmod/app/CustomTile$Builder;

    move-result-object v8

    .line 313
    const/4 v9, 0x0

    .line 307
    invoke-virtual {v8, v9}, Lcyanogenmod/app/CustomTile$Builder;->shouldCollapsePanel(Z)Lcyanogenmod/app/CustomTile$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcyanogenmod/app/CustomTile$Builder;->build()Lcyanogenmod/app/CustomTile;

    move-result-object v3

    .line 315
    .local v3, "tile":Lcyanogenmod/app/CustomTile;
    const-string/jumbo v8, "live_display"

    .line 316
    const-class v9, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    invoke-virtual {v9}, Ljava/lang/Class;->hashCode()I

    move-result v9

    .line 315
    invoke-virtual {v2, v8, v9, v3, v6}, Lcyanogenmod/app/CMStatusBarManager;->publishTileAsUser(Ljava/lang/String;ILcyanogenmod/app/CustomTile;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 297
    return-void

    .line 317
    .end local v0    # "idx":I
    .end local v1    # "resourceContext":Landroid/content/Context;
    .end local v2    # "statusBarManager":Lcyanogenmod/app/CMStatusBarManager;
    .end local v3    # "tile":Lcyanogenmod/app/CustomTile;
    .end local v6    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception v8

    .line 318
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 317
    throw v8
.end method

.method private putInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 666
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 667
    const/4 v1, -0x2

    .line 666
    invoke-static {v0, p1, p2, v1}, Lcyanogenmod/providers/CMSettings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 665
    return-void
.end method

.method private stopNudgingMe()V
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mAwaitingNudge:Z

    if-eqz v0, :cond_0

    .line 603
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->updateSunsetCounter(I)V

    .line 601
    :cond_0
    return-void
.end method

.method private unpublishCustomTile()V
    .locals 7

    .prologue
    return-void

    .line 324
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 325
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 327
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcyanogenmod/app/CMStatusBarManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/CMStatusBarManager;

    move-result-object v0

    .line 328
    .local v0, "statusBarManager":Lcyanogenmod/app/CMStatusBarManager;
    const-string/jumbo v4, "live_display"

    .line 329
    const-class v5, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;

    invoke-virtual {v5}, Ljava/lang/Class;->hashCode()I

    move-result v5

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 328
    invoke-virtual {v0, v4, v5, v6}, Lcyanogenmod/app/CMStatusBarManager;->removeTileAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 322
    return-void

    .line 330
    .end local v0    # "statusBarManager":Lcyanogenmod/app/CMStatusBarManager;
    :catchall_0
    move-exception v4

    .line 331
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 330
    throw v4
.end method

.method private updateCustomTileEntries()V
    .locals 5

    .prologue
    .line 243
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 244
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x3f040002

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mTileEntries:[Ljava/lang/String;

    .line 245
    const v3, 0x3f040006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mTileDescriptionEntries:[Ljava/lang/String;

    .line 246
    const v3, 0x3f040007

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mTileAnnouncementEntries:[Ljava/lang/String;

    .line 247
    const v3, 0x3f040004

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mTileValues:[Ljava/lang/String;

    .line 248
    const v3, 0x3f040005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 249
    .local v2, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mTileEntryIconRes:[I

    .line 250
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mTileEntryIconRes:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 251
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mTileEntryIconRes:[I

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v0

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    return-void
.end method

.method private updateFeatures(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$6;

    invoke-direct {v1, p0, p1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$6;-><init>(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    return-void
.end method

.method private updateSunsetCounter(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    const/4 v0, 0x0

    .line 594
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 595
    const-string/jumbo v2, "live_display_hinted"

    .line 597
    const/4 v3, -0x2

    .line 594
    invoke-static {v1, v2, p1, v3}, Lcyanogenmod/providers/CMSettings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 598
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mAwaitingNudge:Z

    .line 593
    return-void
.end method


# virtual methods
.method public getFeatureDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const-string/jumbo v0, "org.cyanogenmod.livedisplay"

    return-object v0
.end method

.method public isCoreService()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public onBootPhase(I)V
    .locals 16
    .param p1, "phase"    # I

    .prologue
    .line 165
    const/16 v1, 0x3e8

    move/from16 v0, p1

    if-ne v0, v1, :cond_7

    .line 167
    invoke-direct/range {p0 .. p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->getSunsetCounter()I

    move-result v1

    const/4 v4, 0x1

    if-ge v1, v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mAwaitingNudge:Z

    .line 169
    new-instance v1, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v4, v5}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mDHC:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    .line 170
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mDHC:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v1, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mDHC:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    invoke-direct {v1, v4, v5, v6}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mCTC:Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mCTC:Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v1, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v4, v5}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mOMC:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

    .line 176
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mOMC:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 180
    .local v2, "capabilities":Ljava/util/BitSet;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;>;"
    :cond_0
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;

    .line 182
    .local v12, "feature":Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;
    invoke-virtual {v12, v2}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->getCapabilities(Ljava/util/BitSet;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 167
    .end local v2    # "capabilities":Ljava/util/BitSet;
    .end local v12    # "feature":Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 188
    .restart local v2    # "capabilities":Ljava/util/BitSet;
    .restart local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 189
    const v4, 0x3f070004

    .line 188
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 191
    .local v3, "defaultMode":I
    new-instance v1, Lcyanogenmod/hardware/LiveDisplayConfig;

    .line 192
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mCTC:Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;

    invoke-virtual {v4}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getDefaultDayTemperature()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mCTC:Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;

    invoke-virtual {v5}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getDefaultNightTemperature()I

    move-result v5

    .line 193
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mOMC:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

    invoke-virtual {v6}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->getDefaultAutoOutdoorMode()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mDHC:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    invoke-virtual {v7}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->getDefaultAutoContrast()Z

    move-result v7

    .line 194
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mDHC:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    invoke-virtual {v8}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->getDefaultCABC()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mDHC:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    invoke-virtual {v9}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->getDefaultColorEnhancement()Z

    move-result v9

    .line 195
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mCTC:Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;

    invoke-virtual {v10}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getColorTemperatureRange()Landroid/util/Range;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mCTC:Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;

    invoke-virtual {v11}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getColorBalanceRange()Landroid/util/Range;

    move-result-object v11

    .line 191
    invoke-direct/range {v1 .. v11}, Lcyanogenmod/hardware/LiveDisplayConfig;-><init>(Ljava/util/BitSet;IIIZZZZLandroid/util/Range;Landroid/util/Range;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    .line 198
    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 199
    const-string/jumbo v4, "display"

    .line 198
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 200
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mState:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 202
    const/4 v5, 0x0

    .line 201
    invoke-virtual {v1, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    .line 202
    const/4 v5, 0x2

    .line 201
    if-ne v1, v5, :cond_5

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, v4, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mScreenOn:Z

    .line 204
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PowerManagerInternal;

    .line 205
    .local v15, "pmi":Landroid/os/PowerManagerInternal;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

    invoke-virtual {v15, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mState:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    invoke-virtual {v15}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v4

    iput-boolean v4, v1, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mLowPowerMode:Z

    .line 208
    const-class v1, Lcom/android/server/twilight/TwilightManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/twilight/TwilightManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_3

    .line 210
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v4, v5}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mState:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v4}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v4

    iput-object v4, v1, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mTwilight:Lcom/android/server/twilight/TwilightState;

    .line 214
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    invoke-virtual {v1}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasModeSupport()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 215
    new-instance v1, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v4}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;-><init>(Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mModeObserver:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mState:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mModeObserver:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;

    invoke-virtual {v4}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$ModeObserver;->getMode()I

    move-result v4

    iput v4, v1, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mMode:I

    .line 217
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mNextModeReceiver:Landroid/content/BroadcastReceiver;

    .line 218
    new-instance v5, Landroid/content/IntentFilter;

    sget-object v6, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->ACTION_NEXT_MODE:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 219
    invoke-direct/range {p0 .. p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->publishCustomTile()V

    .line 223
    :cond_4
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_6

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;

    invoke-virtual {v1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->start()V

    .line 223
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 201
    .end local v13    # "i":I
    .end local v15    # "pmi":Landroid/os/PowerManagerInternal;
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 227
    .restart local v13    # "i":I
    .restart local v15    # "pmi":Landroid/os/PowerManagerInternal;
    :cond_6
    sget v1, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->ALL_CHANGED:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->updateFeatures(I)V

    .line 164
    .end local v2    # "capabilities":Ljava/util/BitSet;
    .end local v3    # "defaultMode":I
    .end local v13    # "i":I
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;>;"
    .end local v15    # "pmi":Landroid/os/PowerManagerInternal;
    :cond_7
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 160
    const-string/jumbo v0, "cmlivedisplay"

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 159
    return-void
.end method
