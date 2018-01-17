.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$AdbPortObserver;
    }
.end annotation


# static fields
.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final DEFAULT_SYSTEM_THEME:I = #android:style@Theme.DeviceDefault.System#t

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.LockSettingsService$Lifecycle"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_BLUETOOTH_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.bluetooth.WearBluetoothService"

.field private static final WEAR_CELLULAR_MEDIATOR_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.cellular.WearCellularMediatorService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field private static final WEAR_WIFI_MEDIATOR_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.wifi.WearWifiMediatorService"

.field private static final WIFI_NAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.nan.WifiNanService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final sMaxBinderThreads:I = 0x1f


# instance fields
.field mFlymeWallpaperLifeService:Lcom/android/server/SystemService;

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mIsAlarmBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private final mRuntimeRestart:Z

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method static synthetic -get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SystemServer;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/SystemServer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/SystemServer;)Lcom/android/server/webkit/WebViewUpdateService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 248
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 244
    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 438
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 439
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, #android:style@Theme.DeviceDefault.System#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 241
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 240
    return-void
.end method

.method private performPendingShutdown()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 398
    const-string/jumbo v6, "sys.shutdown.requested"

    const-string/jumbo v7, ""

    .line 397
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 399
    .local v5, "shutdownAction":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 400
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_0

    const/4 v4, 0x1

    .line 403
    .local v4, "reboot":Z
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_1

    .line 404
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 414
    :goto_1
    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 415
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "/cache/recovery/uncrypt_file"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    .local v2, "packageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 417
    const/4 v1, 0x0

    .line 419
    .local v1, "filename":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v2, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 424
    .end local v1    # "filename":Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_2

    const-string/jumbo v6, "/data"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 425
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/cache/recovery/block.map"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 426
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return-void

    .line 400
    .end local v2    # "packageFile":Ljava/io/File;
    .end local v4    # "reboot":Z
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "reboot":Z
    goto :goto_0

    .line 406
    :cond_1
    const/4 v3, 0x0

    .local v3, "reason":Ljava/lang/String;
    goto :goto_1

    .line 420
    .end local v3    # "reason":Ljava/lang/String;
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v2    # "packageFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Error reading uncrypt package file"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 433
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "packageFile":Ljava/io/File;
    :cond_2
    invoke-static {v8, v4, v3}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 396
    .end local v4    # "reboot":Z
    :cond_3
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 392
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    return-void
.end method

.method private run()V
    .locals 10

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v8, 0x80000

    .line 266
    :try_start_0
    const-string/jumbo v0, "InitBeforeStartServices"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 272
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-wide/32 v0, 0x5265c00

    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 284
    :cond_0
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    .line 287
    .local v7, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string/jumbo v0, "persist.sys.country"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string/jumbo v0, "persist.sys.localevar"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .end local v7    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0xbc2

    invoke-static {v2, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 304
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 309
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 310
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    .line 315
    const-wide/32 v2, 0x36ee80

    const-wide/32 v4, 0x36ee80

    .line 310
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 319
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 323
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 327
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 331
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 335
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 338
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 341
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 345
    const/4 v0, -0x2

    .line 344
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 346
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 347
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 350
    const-string/jumbo v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 354
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 357
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 360
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 361
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->setRuntimeRestarted(Z)V

    .line 362
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 369
    :try_start_1
    const-string/jumbo v0, "StartServices"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 370
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 371
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 372
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 378
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 382
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 383
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_3
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 388
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :catchall_0
    move-exception v0

    .line 364
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 363
    throw v0

    .line 373
    :catch_0
    move-exception v6

    .line 374
    .local v6, "ex":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 377
    .end local v6    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    .line 378
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 377
    throw v0
.end method

.method private startBootstrapServices()V
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/32 v10, 0x80000

    .line 454
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/pm/Installer;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Installer;

    .line 457
    .local v3, "installer":Lcom/android/server/pm/Installer;
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 458
    const-class v8, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 457
    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 459
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 460
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 466
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 470
    const-string/jumbo v5, "InitPowerManagement"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 471
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 472
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 475
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/lights/LightsService;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 479
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 482
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v8, 0x64

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 485
    const-string/jumbo v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v5, "ro.alarm_boot"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    .line 488
    const-string/jumbo v5, "trigger_restart_min_framework"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 489
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v8, "Detected encryption in progress - only parsing core apps"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 502
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 503
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v8, "Regionalization Service"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v4, Lcom/android/server/os/RegionalizationService;

    invoke-direct {v4}, Lcom/android/server/os/RegionalizationService;-><init>()V

    .line 505
    .local v4, "regionalizationService":Lcom/android/server/os/RegionalizationService;
    const-string/jumbo v5, "regionalization"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 509
    .end local v4    # "regionalizationService":Lcom/android/server/os/RegionalizationService;
    :cond_1
    const-string/jumbo v5, "StartPackageManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 510
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 511
    iget v5, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v5, :cond_5

    move v5, v6

    :goto_1
    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 510
    invoke-static {v8, v3, v5, v6}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 512
    iget-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 513
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 514
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 519
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v5, :cond_2

    .line 520
    const-string/jumbo v5, "config.disable_otadexopt"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 522
    .local v1, "disableOtaDexopt":Z
    if-nez v1, :cond_2

    .line 523
    const-string/jumbo v5, "StartOtaDexOptService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 525
    :try_start_0
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v5, v6}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 534
    .end local v1    # "disableOtaDexopt":Z
    :cond_2
    :goto_2
    const-string/jumbo v5, "StartUserManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 535
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 536
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 539
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 542
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 545
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v6, Lcom/android/server/om/OverlayManagerService;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v6, v7, v3}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;)V

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 549
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 450
    return-void

    .line 491
    :cond_3
    const-string/jumbo v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 492
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v8, "Device encrypted - only parsing core apps"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_0

    .line 494
    :cond_4
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    if-eqz v5, :cond_0

    .line 499
    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_0

    :cond_5
    move v5, v7

    .line 511
    goto/16 :goto_1

    .line 526
    .restart local v1    # "disableOtaDexopt":Z
    :catch_0
    move-exception v2

    .line 527
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v5, "starting OtaDexOptService"

    invoke-direct {p0, v5, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_2

    .line 528
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    .line 529
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 528
    throw v5
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 560
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 561
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 562
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 561
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 565
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 555
    return-void
.end method

.method private startOtherServices()V
    .locals 110

    .prologue
    .line 573
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 574
    .local v6, "context":Landroid/content/Context;
    const/16 v97, 0x0

    .line 575
    .local v97, "vibrator":Lcom/android/server/VibratorService;
    const/16 v77, 0x0

    .line 576
    .local v77, "mountService":Landroid/os/storage/IMountService;
    const/16 v78, 0x0

    .line 577
    .local v78, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v83, 0x0

    .line 578
    .local v83, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v79, 0x0

    .line 579
    .local v79, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v26, 0x0

    .line 580
    .local v26, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v81, 0x0

    .line 581
    .local v81, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v91, 0x0

    .line 582
    .local v91, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v106, 0x0

    .line 583
    .local v106, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v88, 0x0

    .line 584
    .local v88, "serial":Lcom/android/server/SerialService;
    const/16 v84, 0x0

    .line 585
    .local v84, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v23, 0x0

    .line 586
    .local v23, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v65, 0x0

    .line 587
    .local v65, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v95, 0x0

    .line 588
    .local v95, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v29, 0x0

    .line 589
    .local v29, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v20, 0x0

    .line 590
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v62, 0x0

    .line 591
    .local v62, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v104, 0x0

    .line 592
    .local v104, "wigigP2pService":Ljava/lang/Object;
    const/16 v105, 0x0

    .line 594
    .local v105, "wigigService":Ljava/lang/Object;
    const-string/jumbo v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v48

    .line 595
    .local v48, "disableStorage":Z
    const-string/jumbo v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v35

    .line 596
    .local v35, "disableBluetooth":Z
    const-string/jumbo v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v38

    .line 597
    .local v38, "disableLocation":Z
    const-string/jumbo v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    .line 598
    .local v49, "disableSystemUI":Z
    const-string/jumbo v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v42

    .line 599
    .local v42, "disableNonCoreServices":Z
    const-string/jumbo v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    .line 600
    .local v40, "disableNetwork":Z
    const-string/jumbo v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    .line 601
    .local v41, "disableNetworkTime":Z
    const-string/jumbo v4, "config.disable_rtt"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v44

    .line 602
    .local v44, "disableRtt":Z
    const-string/jumbo v4, "config.disable_mediaproj"

    .line 603
    const/4 v5, 0x0

    .line 602
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    .line 604
    .local v39, "disableMediaProjection":Z
    const-string/jumbo v4, "config.disable_serial"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v47

    .line 605
    .local v47, "disableSerial":Z
    const-string/jumbo v4, "config.disable_searchmanager"

    .line 606
    const/4 v5, 0x0

    .line 605
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    .line 607
    .local v46, "disableSearchManager":Z
    const-string/jumbo v4, "config.disable_trustmanager"

    .line 608
    const/4 v5, 0x0

    .line 607
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v51

    .line 609
    .local v51, "disableTrustManager":Z
    const-string/jumbo v4, "config.disable_textservices"

    .line 610
    const/4 v5, 0x0

    .line 609
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v50

    .line 611
    .local v50, "disableTextServices":Z
    const-string/jumbo v4, "config.disable_samplingprof"

    .line 612
    const/4 v5, 0x0

    .line 611
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v45

    .line 613
    .local v45, "disableSamplingProfiler":Z
    const-string/jumbo v4, "config.disable_consumerir"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    .line 614
    .local v37, "disableConsumerIr":Z
    const-string/jumbo v4, "config.disable_vrmanager"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v52

    .line 615
    .local v52, "disableVrManager":Z
    const-string/jumbo v4, "config.disable_cameraservice"

    .line 616
    const/4 v5, 0x0

    .line 615
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    .line 618
    .local v36, "disableCameraService":Z
    const-string/jumbo v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    .line 619
    .local v67, "isEmulator":Z
    const-string/jumbo v4, "persist.wigig.enable"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    .line 621
    .local v58, "enableWigig":Z
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 622
    const v5, 0x3f060005

    .line 621
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v59

    .line 623
    .local v59, "externalServer":Ljava/lang/String;
    const-string/jumbo v4, "config.disable_atlas"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    .line 626
    .local v34, "disableAtlas":Z
    :try_start_0
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 629
    const-string/jumbo v4, "StartSchedulingPolicyService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 630
    const-string/jumbo v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 631
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 633
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 635
    const-string/jumbo v4, "StartTelephonyRegistry"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 636
    new-instance v96, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v96

    invoke-direct {v0, v6}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_38

    .line 637
    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v96, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v4, "telephony.registry"

    move-object/from16 v0, v96

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 638
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 640
    const-string/jumbo v4, "StartEntropyMixer"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 641
    new-instance v4, Lcom/android/server/EntropyMixer;

    invoke-direct {v4, v6}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 642
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 644
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 646
    if-nez v36, :cond_0

    .line 647
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Camera Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 652
    :cond_0
    const-string/jumbo v4, "StartAccountManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 654
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 656
    const-string/jumbo v4, "StartContentService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 658
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 660
    const-string/jumbo v4, "InstallSystemProviders"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 662
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 664
    const-string/jumbo v4, "StartVibratorService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 665
    new-instance v98, Lcom/android/server/VibratorService;

    move-object/from16 v0, v98

    invoke-direct {v0, v6}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_39

    .line 666
    .local v98, "vibrator":Lcom/android/server/VibratorService;
    :try_start_2
    const-string/jumbo v4, "vibrator"

    .end local v97    # "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v0, v98

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 667
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 669
    if-nez v37, :cond_1

    .line 670
    const-string/jumbo v4, "StartConsumerIrService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 671
    new-instance v30, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v30

    invoke-direct {v0, v6}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3a

    .line 672
    .local v30, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_3
    const-string/jumbo v4, "consumer_ir"

    .end local v29    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 673
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3b

    move-object/from16 v29, v30

    .line 676
    .end local v30    # "consumerIr":Lcom/android/server/ConsumerIrService;
    :cond_1
    :try_start_4
    const-string/jumbo v4, "StartAlarmManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 677
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 678
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 680
    const-string/jumbo v4, "InitWatchdog"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 681
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v100

    .line 682
    .local v100, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v100

    invoke-virtual {v0, v6, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 683
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 685
    const-string/jumbo v4, "StartInputManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 686
    new-instance v66, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v66

    invoke-direct {v0, v6}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3a

    .line 687
    .local v66, "inputManager":Lcom/android/server/input/InputManagerService;
    const-wide/32 v4, 0x80000

    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 689
    .end local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    const-string/jumbo v4, "StartWindowManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 691
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_41

    const/4 v4, 0x1

    move v5, v4

    .line 692
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-eqz v4, :cond_42

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v107, v0

    .line 690
    move-object/from16 v0, v66

    move/from16 v1, v107

    invoke-static {v6, v0, v5, v4, v1}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v106

    .line 693
    .local v106, "wm":Lcom/android/server/wm/WindowManagerService;
    const-string/jumbo v4, "window"

    move-object/from16 v0, v106

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 694
    const-string/jumbo v4, "input"

    move-object/from16 v0, v66

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 695
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 697
    if-nez v52, :cond_2

    .line 698
    const-string/jumbo v4, "StartVrManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 699
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 700
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 703
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v106

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 705
    invoke-virtual/range {v106 .. v106}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v66

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 706
    invoke-virtual/range {v66 .. v66}, Lcom/android/server/input/InputManagerService;->start()V

    .line 709
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 714
    if-eqz v67, :cond_43

    .line 715
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :goto_2
    const-string/jumbo v4, "ConnectivityMetricsLoggerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 729
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 731
    const-string/jumbo v4, "IpConnectivityMetrics"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 733
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 735
    const-string/jumbo v4, "PinnerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PinnerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 737
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    move-object/from16 v95, v96

    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v95, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v65, v66

    .end local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v65, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v97, v98

    .line 743
    .end local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v98    # "vibrator":Lcom/android/server/VibratorService;
    .end local v100    # "watchdog":Lcom/android/server/Watchdog;
    .end local v106    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_3
    const/16 v92, 0x0

    .line 744
    .local v92, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v86, 0x0

    .line 745
    .local v86, "notification":Landroid/app/INotificationManager;
    const/16 v68, 0x0

    .line 746
    .local v68, "location":Lcom/android/server/LocationManagerService;
    const/16 v31, 0x0

    .line 747
    .local v31, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v70, 0x0

    .line 749
    .local v70, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v72, 0x0

    .line 750
    .local v72, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v60, 0x0

    .line 751
    .local v60, "gestureService":Lcom/android/server/gesture/GestureService;
    const/16 v56, 0x0

    .line 754
    .local v56, "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 755
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/InputMethodManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 757
    const-string/jumbo v4, "StartAccessibilityManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 759
    :try_start_6
    const-string/jumbo v4, "accessibility"

    .line 760
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    .line 759
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 764
    :goto_4
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 768
    :cond_3
    :try_start_7
    invoke-virtual/range {v106 .. v106}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 773
    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    .line 774
    if-nez v48, :cond_4

    .line 775
    const-string/jumbo v4, "0"

    const-string/jumbo v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 792
    .end local v77    # "mountService":Landroid/os/storage/IMountService;
    :cond_4
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 794
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_5

    .line 795
    const-string/jumbo v4, "UpdatePackagesIfNeeded"

    const-wide/32 v108, 0x80000

    move-wide/from16 v0, v108

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 797
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 801
    :goto_7
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 804
    :cond_5
    const-string/jumbo v4, "PerformFstrimIfNeeded"

    const-wide/32 v108, 0x80000

    move-wide/from16 v0, v108

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 806
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    .line 810
    :goto_8
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 812
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_34

    .line 813
    if-nez v42, :cond_7

    .line 814
    const-string/jumbo v4, "StartLockSettingsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 816
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.LockSettingsService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 818
    const-string/jumbo v4, "lock_settings"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 817
    invoke-static {v4}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    move-result-object v70

    .line 822
    .end local v70    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :goto_9
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 824
    const-string/jumbo v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 825
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 828
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 832
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 835
    :cond_7
    if-nez v49, :cond_8

    .line 836
    const-string/jumbo v4, "StartStatusBarManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 838
    :try_start_b
    new-instance v93, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v93

    move-object/from16 v1, v106

    invoke-direct {v0, v6, v1}, Lcom/android/server/statusbar/FlymeExtStatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_7

    .line 839
    .end local v92    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v93, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_c
    const-string/jumbo v4, "statusbar"

    move-object/from16 v0, v93

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeStatusBarManagerService()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_37

    move-object/from16 v92, v93

    .line 843
    .end local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_a
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 846
    :cond_8
    if-nez v42, :cond_9

    .line 847
    const-string/jumbo v4, "StartClipboardService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 849
    :try_start_d
    const-string/jumbo v4, "clipboard"

    .line 850
    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v6}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    .line 849
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8

    .line 854
    :goto_b
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 857
    :cond_9
    if-nez v40, :cond_a

    .line 858
    const-string/jumbo v4, "StartNetworkManagementService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 860
    :try_start_e
    invoke-static {v6}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v78

    .line 861
    .local v78, "networkManagement":Lcom/android/server/NetworkManagementService;
    const-string/jumbo v4, "network_management"

    move-object/from16 v0, v78

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer$FlymeInjector;->addNetworkManagementServiceFlyme(Lcom/android/server/SystemServer;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_9

    .line 865
    .end local v78    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_c
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 868
    :cond_a
    if-nez v42, :cond_b

    if-eqz v50, :cond_48

    .line 872
    :cond_b
    :goto_d
    if-nez v40, :cond_10

    .line 873
    const-string/jumbo v4, "StartNetworkScoreService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 875
    :try_start_f
    new-instance v82, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v82

    invoke-direct {v0, v6}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_a

    .line 876
    .end local v81    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v82, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_10
    const-string/jumbo v4, "network_score"

    move-object/from16 v0, v82

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_36

    move-object/from16 v81, v82

    .line 880
    .end local v82    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_e
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 882
    const-string/jumbo v4, "StartNetworkStatsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 884
    :try_start_11
    move-object/from16 v0, v78

    invoke-static {v6, v0}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v83

    .line 885
    .local v83, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const-string/jumbo v4, "netstats"

    move-object/from16 v0, v83

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_b

    .line 889
    .end local v83    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_f
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 891
    const-string/jumbo v4, "StartNetworkPolicyManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 893
    :try_start_12
    new-instance v80, Lcom/android/server/net/NetworkPolicyManagerService;

    .line 894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 893
    move-object/from16 v0, v80

    move-object/from16 v1, v83

    move-object/from16 v2, v78

    invoke-direct {v0, v6, v4, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_c

    .line 895
    .end local v79    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v80, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_13
    const-string/jumbo v4, "netpolicy"

    move-object/from16 v0, v80

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_35

    move-object/from16 v79, v80

    .line 899
    .end local v80    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_10
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 901
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.wifi.nan"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 902
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.nan.WifiNanService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 906
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 907
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 908
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 909
    const-string/jumbo v5, "com.android.server.wifi.scanner.WifiScanningService"

    .line 908
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 911
    if-nez v44, :cond_c

    .line 912
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 915
    :cond_c
    if-eqz v58, :cond_d

    .line 917
    :try_start_14
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Wigig Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    new-instance v102, Ldalvik/system/PathClassLoader;

    const-string/jumbo v4, "/system/framework/wigig-service.jar"

    .line 920
    const-string/jumbo v5, "/system/lib64:/system/vendor/lib64"

    .line 921
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v107

    invoke-virtual/range {v107 .. v107}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v107

    .line 919
    move-object/from16 v0, v102

    move-object/from16 v1, v107

    invoke-direct {v0, v4, v5, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 923
    .local v102, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v4, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    .line 922
    move-object/from16 v0, v102

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v103

    .line 924
    .local v103, "wigigP2pClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v107, 0x0

    aput-object v5, v4, v107

    move-object/from16 v0, v103

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v33

    .line 925
    .local v33, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v104

    .line 926
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const-string/jumbo v5, "wigigp2p"

    move-object/from16 v0, v104

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 930
    const-string/jumbo v4, "com.qualcomm.qti.server.wigig.WigigService"

    .line 929
    move-object/from16 v0, v102

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v101

    .line 931
    .local v101, "wigigClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v107, 0x0

    aput-object v5, v4, v107

    move-object/from16 v0, v101

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v33

    .line 932
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v105

    .line 933
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Successfully loaded WigigService class"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const-string/jumbo v5, "wigig"

    move-object/from16 v0, v105

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_d

    .line 940
    .end local v33    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v101    # "wigigClass":Ljava/lang/Class;
    .end local v102    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    .end local v103    # "wigigP2pClass":Ljava/lang/Class;
    .end local v104    # "wigigP2pService":Ljava/lang/Object;
    .end local v105    # "wigigService":Ljava/lang/Object;
    :cond_d
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 941
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 940
    if-eqz v4, :cond_f

    .line 942
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 945
    :cond_f
    const-string/jumbo v4, "StartConnectivityService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 947
    :try_start_15
    new-instance v27, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v27

    move-object/from16 v1, v78

    move-object/from16 v2, v83

    move-object/from16 v3, v79

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_e

    .line 949
    .end local v26    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v27, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_16
    const-string/jumbo v4, "connectivity"

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 950
    move-object/from16 v0, v83

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 951
    move-object/from16 v0, v79

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_34

    move-object/from16 v26, v27

    .line 955
    .end local v27    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_13
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 957
    const-string/jumbo v4, "StartNsdService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 959
    :try_start_17
    invoke-static {v6}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v91

    .line 961
    .local v91, "serviceDiscovery":Lcom/android/server/NsdService;
    const-string/jumbo v4, "servicediscovery"

    .line 960
    move-object/from16 v0, v91

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_f

    .line 965
    .end local v91    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_14
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 968
    :cond_10
    if-nez v42, :cond_11

    .line 969
    const-string/jumbo v4, "StartUpdateLockService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 971
    :try_start_18
    const-string/jumbo v4, "updatelock"

    .line 972
    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v6}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    .line 971
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_10

    .line 976
    :goto_15
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 979
    :cond_11
    if-nez v42, :cond_12

    .line 980
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 988
    :cond_12
    if-eqz v77, :cond_13

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-eqz v4, :cond_4a

    .line 997
    :cond_13
    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 999
    const-string/jumbo v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 998
    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v86

    .line 1000
    .local v86, "notification":Landroid/app/INotificationManager;
    move-object/from16 v0, v79

    move-object/from16 v1, v86

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1004
    if-nez v38, :cond_14

    .line 1005
    const-string/jumbo v4, "StartLocationManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1007
    :try_start_19
    new-instance v69, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v69

    invoke-direct {v0, v6}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_12

    .line 1008
    .end local v68    # "location":Lcom/android/server/LocationManagerService;
    .local v69, "location":Lcom/android/server/LocationManagerService;
    :try_start_1a
    const-string/jumbo v4, "location"

    move-object/from16 v0, v69

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_33

    move-object/from16 v68, v69

    .line 1012
    .end local v69    # "location":Lcom/android/server/LocationManagerService;
    :goto_17
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1014
    const-string/jumbo v4, "StartCountryDetectorService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1016
    :try_start_1b
    new-instance v32, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v32

    invoke-direct {v0, v6}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_13

    .line 1017
    .end local v31    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v32, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_1c
    const-string/jumbo v4, "country_detector"

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_32

    move-object/from16 v31, v32

    .line 1021
    .end local v32    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :goto_18
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1024
    :cond_14
    if-nez v42, :cond_15

    if-eqz v46, :cond_4b

    .line 1034
    :cond_15
    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    if-nez v42, :cond_16

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:bool@config_enableWallpaperService#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    if-eqz v4, :cond_4c

    :cond_16
    :goto_1a
    const-string v4, "StartAudioService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1045
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1047
    if-nez v42, :cond_17

    .line 1048
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1050
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.type.watch"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1055
    :cond_17
    const-string/jumbo v4, "StartWiredAccessoryManager"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1059
    :try_start_1d
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v65

    invoke-direct {v4, v6, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 1058
    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_15

    .line 1063
    :goto_1b
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1065
    if-nez v42, :cond_1c

    .line 1066
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.midi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1068
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1071
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 1072
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1073
    const-string/jumbo v5, "android.hardware.usb.accessory"

    .line 1072
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 1071
    if-eqz v4, :cond_1a

    .line 1075
    :cond_19
    const-string/jumbo v4, "StartUsbService"

    const-wide/32 v108, 0x80000

    move-wide/from16 v0, v108

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1077
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1080
    :cond_1a
    if-nez v47, :cond_1b

    .line 1081
    const-string/jumbo v4, "StartSerialService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1084
    :try_start_1e
    new-instance v89, Lcom/android/server/SerialService;

    move-object/from16 v0, v89

    invoke-direct {v0, v6}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_16

    .line 1085
    .end local v88    # "serial":Lcom/android/server/SerialService;
    .local v89, "serial":Lcom/android/server/SerialService;
    :try_start_1f
    const-string/jumbo v4, "serial"

    move-object/from16 v0, v89

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_31

    move-object/from16 v88, v89

    .line 1089
    .end local v89    # "serial":Lcom/android/server/SerialService;
    :goto_1c
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1093
    :cond_1b
    const-string/jumbo v4, "StartHardwarePropertiesManagerService"

    .line 1092
    const-wide/32 v108, 0x80000

    move-wide/from16 v0, v108

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1095
    :try_start_20
    new-instance v63, Lcom/android/server/HardwarePropertiesManagerService;

    move-object/from16 v0, v63

    invoke-direct {v0, v6}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_17

    .line 1096
    .end local v62    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v63, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_21
    const-string/jumbo v4, "hardware_properties"

    move-object/from16 v0, v63

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_30

    move-object/from16 v62, v63

    .line 1101
    .end local v63    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_1d
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1104
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1106
    invoke-static {v6}, Lcom/android/internal/app/NightDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1107
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/NightDisplayService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1110
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1112
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1114
    if-nez v42, :cond_23

    .line 1115
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1116
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1119
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 1120
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:bool@config_enableAppWidgetService#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 1119
    if-eqz v4, :cond_20

    .line 1121
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    if-eqz v4, :cond_4d

    .line 1125
    :cond_20
    :goto_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1126
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1129
    :cond_21
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1130
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Gesture Launcher Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1133
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1134
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1137
    :cond_23
    const-string/jumbo v4, "StartDiskStatsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1139
    :try_start_22
    const-string/jumbo v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v6}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_18

    .line 1143
    :goto_1f
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1145
    if-nez v45, :cond_24

    .line 1146
    const-string/jumbo v4, "StartSamplingProfilerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1152
    :try_start_23
    const-string/jumbo v4, "samplingprofiler"

    .line 1153
    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v6}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    .line 1152
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_19

    .line 1157
    :goto_20
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1160
    :cond_24
    if-nez v40, :cond_25

    if-eqz v41, :cond_4e

    .line 1171
    .end local v84    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_25
    :goto_21
    const-string/jumbo v4, "StartCommonTimeManagementService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1173
    :try_start_24
    new-instance v24, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_1b

    .line 1174
    .end local v23    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v24, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_25
    const-string/jumbo v4, "commontime_management"

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_2e

    move-object/from16 v23, v24

    .line 1178
    .end local v24    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_22
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1180
    if-nez v40, :cond_26

    .line 1181
    const-string/jumbo v4, "CertBlacklister"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1183
    :try_start_26
    new-instance v22, Lcom/android/server/CertBlacklister;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_1c

    .line 1187
    :goto_23
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1190
    :cond_26
    if-nez v40, :cond_27

    if-eqz v42, :cond_4f

    .line 1195
    :cond_27
    :goto_24
    if-nez v42, :cond_28

    .line 1197
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_28
    if-nez v42, :cond_29

    :cond_29
    if-nez v42, :cond_2a

    const-string v4, "graphicsstats"

    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v6}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_2a
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:bool@config_enableGestureService#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    :try_start_27
    const-string v4, "SystemServer"

    const-string v5, "Gesture Sensor Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v61, Lcom/android/server/gesture/GestureService;

    move-object/from16 v0, v61

    move-object/from16 v1, v65

    invoke-direct {v0, v6, v1}, Lcom/android/server/gesture/GestureService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_1d

    .line 1221
    .end local v60    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v61, "gestureService":Lcom/android/server/gesture/GestureService;
    :try_start_28
    const-string/jumbo v4, "gesture"

    move-object/from16 v0, v61

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_2d

    move-object/from16 v60, v61

    .line 1227
    .end local v61    # "gestureService":Lcom/android/server/gesture/GestureService;
    :cond_2b
    :goto_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1231
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1236
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1239
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1243
    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.picture_in_picture"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1244
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1247
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.leanback"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1251
    :cond_30
    if-nez v42, :cond_33

    .line 1252
    const-string/jumbo v4, "StartMediaRouterService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1254
    :try_start_29
    new-instance v73, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v73

    invoke-direct {v0, v6}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_1e

    .line 1255
    .end local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v73, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_2a
    const-string/jumbo v4, "media_router"

    move-object/from16 v0, v73

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_2c

    move-object/from16 v72, v73

    .line 1259
    .end local v73    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_26
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1261
    if-nez v51, :cond_31

    .line 1262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1265
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.fingerprint"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1266
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1269
    :cond_32
    const-string/jumbo v4, "StartBackgroundDexOptService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1271
    :try_start_2b
    invoke-static {v6}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_1f

    .line 1275
    :goto_27
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1278
    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1283
    :try_start_2c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "EdgeGesture service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    new-instance v57, Lcom/android/server/gesture/EdgeGestureService;

    move-object/from16 v0, v57

    move-object/from16 v1, v65

    invoke-direct {v0, v6, v1}, Lcom/android/server/gesture/EdgeGestureService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_20

    .line 1285
    .end local v56    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .local v57, "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    :try_start_2d
    const-string/jumbo v4, "edgegestureservice"

    move-object/from16 v0, v57

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_2b

    move-object/from16 v56, v57

    .line 1290
    .end local v57    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    :goto_28
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Starting PocketService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pocket/PocketService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:string@config_pocketBridgeSysfsInpocket#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_34

    .line 1294
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Starting PocketBridgeService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pocket/PocketBridgeService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1299
    .end local v86    # "notification":Landroid/app/INotificationManager;
    :cond_34
    if-nez v42, :cond_35

    if-eqz v39, :cond_50

    .line 1303
    :cond_35
    :goto_29
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.type.watch"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.bluetooth.WearBluetoothService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1306
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.wifi.WearWifiMediatorService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1307
    const-string/jumbo v4, "config.enable_cellmediator"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.cellular.WearCellularMediatorService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1310
    :cond_36
    if-nez v42, :cond_37

    .line 1311
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1316
    :cond_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "adb_port"

    .line 1317
    const-string/jumbo v107, "service.adb.tcp.port"

    const-string/jumbo v108, "-1"

    invoke-static/range {v107 .. v108}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v107

    invoke-static/range {v107 .. v107}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v107

    .line 1316
    move/from16 v0, v107

    invoke-static {v4, v5, v0}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 1321
    const-string/jumbo v5, "adb_port"

    invoke-static {v5}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1322
    new-instance v107, Lcom/android/server/SystemServer$AdbPortObserver;

    move-object/from16 v0, v107

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/SystemServer$AdbPortObserver;-><init>(Lcom/android/server/SystemServer;)V

    const/16 v108, 0x0

    .line 1320
    move/from16 v0, v108

    move-object/from16 v1, v107

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1326
    invoke-virtual/range {v106 .. v106}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v87

    .line 1327
    .local v87, "safeMode":Z
    if-eqz v87, :cond_51

    .line 1328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1330
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1337
    :goto_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v20

    .end local v20    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v20, Lcom/android/server/MmsServiceBroker;

    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_2e
    invoke-static/range {v59 .. v59}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v90

    .local v90, "serverClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v107, 0x0

    aput-object v5, v4, v107

    move-object/from16 v0, v90

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v28

    .line 1343
    .local v28, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1344
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const/16 v107, 0x0

    aput-object v5, v4, v107

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 1345
    .local v21, "baseObject":Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "run"

    const/16 v107, 0x0

    move/from16 v0, v107

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v107, v0

    move-object/from16 v0, v107

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v74

    .line 1346
    .local v74, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    move-object/from16 v0, v74

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1347
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v74

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2e .. :try_end_2e} :catch_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_2e .. :try_end_2e} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2e .. :try_end_2e} :catch_21
    .catch Ljava/lang/InstantiationException; {:try_start_2e .. :try_end_2e} :catch_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2e .. :try_end_2e} :catch_21

    .line 1357
    .end local v21    # "baseObject":Ljava/lang/Object;
    .end local v28    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v74    # "method":Ljava/lang/reflect/Method;
    .end local v90    # "serverClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "device_provisioned"

    const/16 v107, 0x0

    move/from16 v0, v107

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_38

    .line 1358
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v4

    .line 1357
    if-eqz v4, :cond_39

    .line 1359
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1364
    :cond_39
    const-string/jumbo v4, "MakeVibratorServiceReady"

    const-wide/32 v108, 0x80000

    move-wide/from16 v0, v108

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1366
    :try_start_2f
    invoke-virtual/range {v97 .. v97}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_22

    .line 1370
    :goto_2c
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1372
    const-string/jumbo v4, "MakeLockSettingsServiceReady"

    const-wide/32 v108, 0x80000

    move-wide/from16 v0, v108

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1373
    if-eqz v70, :cond_3a

    .line 1375
    :try_start_30
    invoke-interface/range {v70 .. v70}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_23

    .line 1380
    :cond_3a
    :goto_2d
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1385
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1387
    const-string/jumbo v4, "MakeWindowManagerServiceReady"

    const-wide/32 v108, 0x80000

    move-wide/from16 v0, v108

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1391
    if-eqz v58, :cond_3b

    .line 1393
    :try_start_31
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "calling onBootPhase for Wigig Services"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    invoke-virtual/range {v104 .. v104}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v103

    .line 1395
    .restart local v103    # "wigigP2pClass":Ljava/lang/Class;
    const-string/jumbo v4, "onBootPhase"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v107, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v108, 0x0

    aput-object v107, v5, v108

    move-object/from16 v0, v103

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v71

    .line 1396
    .local v71, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    .line 1397
    const/16 v107, 0x1f4

    .line 1396
    move/from16 v0, v107

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    const/16 v107, 0x0

    aput-object v5, v4, v107

    move-object/from16 v0, v71

    move-object/from16 v1, v104

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    invoke-virtual/range {v105 .. v105}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v101

    .line 1400
    .restart local v101    # "wigigClass":Ljava/lang/Class;
    const-string/jumbo v4, "onBootPhase"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v107, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v108, 0x0

    aput-object v107, v5, v108

    move-object/from16 v0, v101

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v71

    .line 1401
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    .line 1402
    const/16 v107, 0x1f4

    .line 1401
    move/from16 v0, v107

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    const/16 v107, 0x0

    aput-object v5, v4, v107

    move-object/from16 v0, v71

    move-object/from16 v1, v105

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_24

    .line 1409
    .end local v71    # "m":Ljava/lang/reflect/Method;
    .end local v101    # "wigigClass":Ljava/lang/Class;
    .end local v103    # "wigigP2pClass":Ljava/lang/Class;
    :cond_3b
    :goto_2e
    :try_start_32
    invoke-virtual/range {v106 .. v106}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_25

    .line 1413
    :goto_2f
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1415
    if-eqz v87, :cond_3c

    .line 1416
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1420
    :cond_3c
    invoke-virtual/range {v106 .. v106}, Lcom/android/server/wm/WindowManagerService;->detectDisableOverlays()Z

    move-result v43

    .line 1421
    .local v43, "disableOverlays":Z
    if-eqz v43, :cond_3d

    .line 1422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->disableOverlays()V

    .line 1428
    :cond_3d
    invoke-virtual/range {v106 .. v106}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    .line 1429
    .local v25, "config":Landroid/content/res/Configuration;
    new-instance v75, Landroid/util/DisplayMetrics;

    invoke-direct/range {v75 .. v75}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1430
    .local v75, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v4, "window"

    invoke-virtual {v6, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v99

    check-cast v99, Landroid/view/WindowManager;

    .line 1431
    .local v99, "w":Landroid/view/WindowManager;
    invoke-interface/range {v99 .. v99}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1432
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v25

    move-object/from16 v1, v75

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1435
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v94

    .line 1436
    .local v94, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v94 .. v94}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v4

    if-eqz v4, :cond_3e

    .line 1437
    invoke-virtual/range {v94 .. v94}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 1440
    :cond_3e
    const-string/jumbo v4, "MakePowerManagerServiceReady"

    const-wide/32 v108, 0x80000

    move-wide/from16 v0, v108

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1443
    :try_start_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V

    .line 1444
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_26

    .line 1448
    :goto_30
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1450
    const-string/jumbo v4, "MakePackageManagerServiceReady"

    const-wide/32 v108, 0x80000

    move-wide/from16 v0, v108

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1452
    :try_start_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_27

    .line 1456
    :goto_31
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1458
    const-string/jumbo v4, "MakeDisplayManagerServiceReady"

    const-wide/32 v108, 0x80000

    move-wide/from16 v0, v108

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1461
    :try_start_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v87

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_28

    .line 1465
    :goto_32
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1467
    if-eqz v60, :cond_3f

    .line 1469
    :try_start_36
    invoke-virtual/range {v60 .. v60}, Lcom/android/server/gesture/GestureService;->systemReady()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_29

    .line 1474
    :cond_3f
    :goto_33
    if-eqz v56, :cond_40

    .line 1476
    :try_start_37
    invoke-virtual/range {v56 .. v56}, Lcom/android/server/gesture/EdgeGestureService;->systemReady()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_2a

    .line 1483
    :cond_40
    :goto_34
    move-object/from16 v8, v78

    .line 1484
    .local v8, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v9, v83

    .line 1485
    .local v9, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v10, v79

    .line 1486
    .local v10, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v11, v26

    .line 1487
    .local v11, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v7, v81

    .line 1488
    .local v7, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v12, v68

    .line 1489
    .local v12, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v13, v31

    .line 1490
    .local v13, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v14, v84

    .line 1491
    .local v14, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v15, v23

    .line 748
    .local v15, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    const/16 v16, 0x0

    .line 1493
    .local v16, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v17, v65

    .line 1494
    .local v17, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v18, v95

    .line 1495
    .local v18, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v72

    .line 1496
    .local v19, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v76, v20

    .line 1503
    .local v76, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v107, v0

    new-instance v4, Lcom/android/server/SystemServer$2;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v20}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    move-object/from16 v0, v107

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 572
    return-void

    .line 691
    .end local v7    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v8    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v9    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v10    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v12    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v13    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v14    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v15    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v16    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v17    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v18    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v19    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v25    # "config":Landroid/content/res/Configuration;
    .end local v43    # "disableOverlays":Z
    .end local v75    # "metrics":Landroid/util/DisplayMetrics;
    .end local v76    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v87    # "safeMode":Z
    .end local v94    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v99    # "w":Landroid/view/WindowManager;
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v23    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v26    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v62    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v77    # "mountService":Landroid/os/storage/IMountService;
    .local v78, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v79    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v81    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v83, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v84    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v88    # "serial":Lcom/android/server/SerialService;
    .local v91, "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v98    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v100    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v104    # "wigigP2pService":Ljava/lang/Object;
    .restart local v105    # "wigigService":Ljava/lang/Object;
    .local v106, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_41
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_0

    .line 692
    :cond_42
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 716
    .local v106, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_43
    :try_start_38
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_44

    .line 717
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_38} :catch_0

    goto/16 :goto_2

    .line 738
    .end local v106    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_0
    move-exception v54

    .local v54, "e":Ljava/lang/RuntimeException;
    move-object/from16 v95, v96

    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v65, v66

    .end local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v97, v98

    .line 739
    .end local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v98    # "vibrator":Lcom/android/server/VibratorService;
    .end local v100    # "watchdog":Lcom/android/server/Watchdog;
    :goto_35
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "************ Failure starting core service"

    move-object/from16 v0, v54

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 718
    .end local v54    # "e":Ljava/lang/RuntimeException;
    .restart local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v98    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v100    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v106    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_44
    :try_start_39
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 719
    const-string/jumbo v5, "android.hardware.bluetooth"

    .line 718
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 720
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 721
    :cond_45
    if-eqz v35, :cond_46

    .line 722
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 724
    :cond_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BluetoothService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_39
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_39} :catch_0

    goto/16 :goto_2

    .line 761
    .end local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v98    # "vibrator":Lcom/android/server/VibratorService;
    .end local v100    # "watchdog":Lcom/android/server/Watchdog;
    .end local v106    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v31    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v56    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v60    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v68    # "location":Lcom/android/server/LocationManagerService;
    .restart local v70    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v86, "notification":Landroid/app/INotificationManager;
    .restart local v92    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_1
    move-exception v55

    .line 762
    .local v55, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 769
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v55

    .line 770
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 781
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_47
    :try_start_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 783
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 782
    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_3

    move-result-object v77

    .local v77, "mountService":Landroid/os/storage/IMountService;
    goto/16 :goto_6

    .line 784
    .local v77, "mountService":Landroid/os/storage/IMountService;
    :catch_3
    move-exception v55

    .line 785
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 798
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v77    # "mountService":Landroid/os/storage/IMountService;
    :catch_4
    move-exception v55

    .line 799
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "update packages"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 807
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v55

    .line 808
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "performing fstrim"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 819
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v55

    .line 820
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 840
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v70    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catch_7
    move-exception v55

    .line 841
    .end local v92    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_36
    const-string/jumbo v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 851
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v55

    .line 852
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 862
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v78    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catch_9
    move-exception v55

    .line 863
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 869
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_48
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/TextServicesManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_d

    .line 877
    :catch_a
    move-exception v55

    .line 878
    .end local v81    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_37
    const-string/jumbo v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 886
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v83    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_b
    move-exception v55

    .line 887
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 896
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v55

    .line 897
    .end local v79    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_38
    const-string/jumbo v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 904
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_49
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Wi-Fi NAN Service (NAN support Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 935
    .end local v104    # "wigigP2pService":Ljava/lang/Object;
    .end local v105    # "wigigService":Ljava/lang/Object;
    :catch_d
    move-exception v55

    .line 936
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WigigService"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 952
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v55

    .line 953
    .end local v26    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string/jumbo v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 962
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v91    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_f
    move-exception v55

    .line 963
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 973
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v55

    .line 974
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 989
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_4a
    const-string/jumbo v4, "WaitForAsecScan"

    const-wide/32 v108, 0x80000

    move-wide/from16 v0, v108

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 991
    :try_start_3b
    invoke-interface/range {v77 .. v77}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3b} :catch_11

    .line 994
    :goto_3a
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_16

    .line 992
    :catch_11
    move-exception v64

    .local v64, "ignored":Landroid/os/RemoteException;
    goto :goto_3a

    .line 1009
    .end local v64    # "ignored":Landroid/os/RemoteException;
    .local v86, "notification":Landroid/app/INotificationManager;
    :catch_12
    move-exception v55

    .line 1010
    .end local v68    # "location":Lcom/android/server/LocationManagerService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string/jumbo v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 1018
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v55

    .line 1019
    .end local v31    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string/jumbo v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 1025
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_4b
    const-string/jumbo v4, "StartSearchManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1027
    :try_start_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_14

    .line 1031
    :goto_3d
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_19

    .line 1028
    :catch_14
    move-exception v55

    .line 1029
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3d

    .line 1038
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_4c
    const-string/jumbo v4, "StartWallpaperManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1040
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_1a

    .line 1060
    :catch_15
    move-exception v55

    .line 1061
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 1086
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v55

    .line 1087
    .end local v88    # "serial":Lcom/android/server/SerialService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting SerialService"

    move-object/from16 v0, v55

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c

    .line 1098
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v55

    .line 1099
    .end local v62    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting HardwarePropertiesManagerService"

    move-object/from16 v0, v55

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    .line 1122
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_4d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    goto/16 :goto_1e

    .line 1140
    :catch_18
    move-exception v55

    .line 1141
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 1154
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v55

    .line 1155
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 1161
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_4e
    const-string/jumbo v4, "StartNetworkTimeUpdateService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1163
    :try_start_3d
    new-instance v85, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v85

    invoke-direct {v0, v6}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_1a

    .line 1164
    .end local v84    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v85, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :try_start_3e
    const-string/jumbo v4, "network_time_update_service"

    move-object/from16 v0, v85

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_2f

    move-object/from16 v84, v85

    .line 1168
    .end local v85    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :goto_40
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_21

    .line 1165
    .restart local v84    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_1a
    move-exception v55

    .line 1166
    .end local v84    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string/jumbo v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_40

    .line 1175
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v55

    .line 1176
    .end local v23    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string/jumbo v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 1184
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v55

    .line 1185
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 1192
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_24

    .line 1222
    :catch_1d
    move-exception v55

    .line 1223
    .end local v60    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting Gesture Sensor Service"

    move-object/from16 v0, v55

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .line 1256
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v55

    .line 1257
    .end local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_44
    const-string/jumbo v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 1272
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v55

    .line 1273
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 1286
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v55

    .line 1287
    .end local v56    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_45
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting EdgeGesture service"

    move-object/from16 v0, v55

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    .line 1300
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v86    # "notification":Landroid/app/INotificationManager;
    :cond_50
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_29

    .line 1333
    .restart local v87    # "safeMode":Z
    :cond_51
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_2a

    .line 1352
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    :catch_21
    move-exception v53

    .line 1353
    .local v53, "e":Ljava/lang/ReflectiveOperationException;
    const-string/jumbo v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v107, "Unable to start  "

    move-object/from16 v0, v107

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    const-string/jumbo v4, "SystemServer"

    move-object/from16 v0, v53

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b

    .line 1367
    .end local v53    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_22
    move-exception v55

    .line 1368
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1376
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v55

    .line 1377
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1403
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v55

    .line 1404
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "Wigig services ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1410
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v55

    .line 1411
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1445
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v25    # "config":Landroid/content/res/Configuration;
    .restart local v43    # "disableOverlays":Z
    .restart local v75    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v94    # "systemTheme":Landroid/content/res/Resources$Theme;
    .restart local v99    # "w":Landroid/view/WindowManager;
    :catch_26
    move-exception v55

    .line 1446
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1453
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v55

    .line 1454
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1462
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v55

    .line 1463
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1470
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v55

    .line 1471
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Gesture Sensor Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 1477
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v55

    .line 1478
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making EdgeGesture service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 1286
    .end local v25    # "config":Landroid/content/res/Configuration;
    .end local v43    # "disableOverlays":Z
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v75    # "metrics":Landroid/util/DisplayMetrics;
    .end local v87    # "safeMode":Z
    .end local v94    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v99    # "w":Landroid/view/WindowManager;
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v57    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v86    # "notification":Landroid/app/INotificationManager;
    :catch_2b
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v56, v57

    .end local v57    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .local v56, "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    goto/16 :goto_45

    .line 1256
    .end local v55    # "e":Ljava/lang/Throwable;
    .local v56, "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v73    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_2c
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v72, v73

    .end local v73    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v72, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_44

    .line 1222
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v61    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v72, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_2d
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v60, v61

    .end local v61    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v60, "gestureService":Lcom/android/server/gesture/GestureService;
    goto/16 :goto_43

    .line 1175
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v24    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v60, "gestureService":Lcom/android/server/gesture/GestureService;
    :catch_2e
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v23, v24

    .end local v24    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v23, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_42

    .line 1165
    .end local v55    # "e":Ljava/lang/Throwable;
    .local v23, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v85    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_2f
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v84, v85

    .end local v85    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v84, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    goto/16 :goto_41

    .line 1098
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v63    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v84, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_30
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v62, v63

    .end local v63    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v62, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    goto/16 :goto_3f

    .line 1086
    .end local v55    # "e":Ljava/lang/Throwable;
    .local v62, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v89    # "serial":Lcom/android/server/SerialService;
    :catch_31
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v88, v89

    .end local v89    # "serial":Lcom/android/server/SerialService;
    .local v88, "serial":Lcom/android/server/SerialService;
    goto/16 :goto_3e

    .line 1018
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v32    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v88, "serial":Lcom/android/server/SerialService;
    :catch_32
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v31, v32

    .end local v32    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v31, "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_3c

    .line 1009
    .end local v55    # "e":Ljava/lang/Throwable;
    .local v31, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v69    # "location":Lcom/android/server/LocationManagerService;
    :catch_33
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v68, v69

    .end local v69    # "location":Lcom/android/server/LocationManagerService;
    .local v68, "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_3b

    .line 952
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v27    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v68, "location":Lcom/android/server/LocationManagerService;
    .local v86, "notification":Landroid/app/INotificationManager;
    .restart local v91    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_34
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v26, v27

    .end local v27    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v26, "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_39

    .line 896
    .end local v55    # "e":Ljava/lang/Throwable;
    .local v26, "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v80    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v104    # "wigigP2pService":Ljava/lang/Object;
    .restart local v105    # "wigigService":Ljava/lang/Object;
    :catch_35
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v79, v80

    .end local v80    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v79, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_38

    .line 877
    .end local v55    # "e":Ljava/lang/Throwable;
    .local v79, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v82    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v83    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_36
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v81, v82

    .end local v82    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v81, "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_37

    .line 840
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v78    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v81, "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_37
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v92, v93

    .end local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v92, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_36

    .line 738
    .end local v31    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v56    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .end local v60    # "gestureService":Lcom/android/server/gesture/GestureService;
    .end local v68    # "location":Lcom/android/server/LocationManagerService;
    .end local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v86    # "notification":Landroid/app/INotificationManager;
    .end local v92    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v29    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v65, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v77    # "mountService":Landroid/os/storage/IMountService;
    .local v95, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v97    # "vibrator":Lcom/android/server/VibratorService;
    .local v106, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_38
    move-exception v54

    .restart local v54    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_35

    .end local v54    # "e":Ljava/lang/RuntimeException;
    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_39
    move-exception v54

    .restart local v54    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v95, v96

    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v95, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_35

    .end local v29    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v54    # "e":Ljava/lang/RuntimeException;
    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v97    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v98    # "vibrator":Lcom/android/server/VibratorService;
    :catch_3a
    move-exception v54

    .restart local v54    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v95, v96

    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v97, v98

    .end local v98    # "vibrator":Lcom/android/server/VibratorService;
    .local v97, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_35

    .end local v54    # "e":Ljava/lang/RuntimeException;
    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v97    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v30    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v98    # "vibrator":Lcom/android/server/VibratorService;
    :catch_3b
    move-exception v54

    .restart local v54    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v29, v30

    .end local v30    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v29, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v95, v96

    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v97, v98

    .end local v98    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v97    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_35
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1639
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1640
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 1641
    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    .line 1640
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1642
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1644
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1638
    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1648
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1649
    const-string/jumbo v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    return-void
.end method

.method flymeGetFieldPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method flymeGetFieldSystemContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method
