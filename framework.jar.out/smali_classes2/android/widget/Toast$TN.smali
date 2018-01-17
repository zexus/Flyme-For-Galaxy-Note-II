.class Landroid/widget/Toast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TN"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toast$TN$1;,
        Landroid/widget/Toast$TN$2;
    }
.end annotation


# static fields
.field private static final CANCEL:I = 0x2

.field private static final HIDE:I = 0x1

.field static final LONG_DURATION_TIMEOUT:J = 0x3e8L

.field static final SHORT_DURATION_TIMEOUT:J = 0x1388L

.field private static final SHOW:I


# instance fields
.field mDuration:I

.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field final mHide:Ljava/lang/Runnable;

.field mHorizontalMargin:F

.field mNextView:Landroid/view/View;

.field mPackageName:Ljava/lang/String;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field mWM:Landroid/view/WindowManager;

.field mX:I

.field mY:I


# direct methods
.method static synthetic -get0(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x2

    .line 386
    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    .line 329
    new-instance v1, Landroid/widget/Toast$TN$1;

    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$1;-><init>(Landroid/widget/Toast$TN;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    .line 335
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 340
    new-instance v1, Landroid/widget/Toast$TN$2;

    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$2;-><init>(Landroid/widget/Toast$TN;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    .line 389
    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 390
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 391
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 392
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 393
    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 394
    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 395
    const-string/jumbo v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 396
    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 400
    iput-object p1, p0, Landroid/widget/Toast$TN;->mPackageName:Ljava/lang/String;

    .line 386
    return-void
.end method

.method private trySendAccessibilityEvent()V
    .locals 3

    .prologue
    .line 489
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 490
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 491
    return-void

    .line 496
    :cond_0
    const/16 v2, 0x40

    .line 495
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 497
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Landroid/widget/Toast$TN;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 500
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 487
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 421
    return-void
.end method

.method public handleHide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 505
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 514
    :cond_0
    iput-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 503
    :cond_1
    return-void
.end method

.method public handleShow(Landroid/os/IBinder;)V
    .locals 13
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    .line 429
    iget-object v9, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v10, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    if-eq v9, v10, :cond_5

    .line 431
    invoke-virtual {p0}, Landroid/widget/Toast$TN;->handleHide()V

    .line 432
    iget-object v9, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    iput-object v9, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 433
    iget-object v9, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 434
    .local v3, "context":Landroid/content/Context;
    iget-object v9, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 435
    .local v7, "packageName":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 436
    iget-object v9, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 439
    :cond_0
    iget-object v9, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    const v10, 0x1020006

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 440
    .local v1, "appIcon":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 441
    const-string/jumbo v10, "toast_icon"

    .line 440
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v11, :cond_1

    .line 442
    if-eqz v1, :cond_1

    .line 444
    const-string/jumbo v9, "activity"

    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 445
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->isPackageInForeground(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 446
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 447
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .line 449
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 453
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 457
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    const-string/jumbo v9, "window"

    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    iput-object v9, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    .line 460
    iget-object v9, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 461
    .local v2, "config":Landroid/content/res/Configuration;
    iget v9, p0, Landroid/widget/Toast$TN;->mGravity:I

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v10

    invoke-static {v9, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    .line 462
    .local v5, "gravity":I
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 463
    and-int/lit8 v9, v5, 0x7

    const/4 v10, 0x7

    if-ne v9, v10, :cond_2

    .line 464
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v12, v9, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 466
    :cond_2
    and-int/lit8 v9, v5, 0x70

    const/16 v10, 0x70

    if-ne v9, v10, :cond_3

    .line 467
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v12, v9, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 469
    :cond_3
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, p0, Landroid/widget/Toast$TN;->mX:I

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 470
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, p0, Landroid/widget/Toast$TN;->mY:I

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 471
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, p0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 472
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, p0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 473
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v7, v9, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 474
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, p0, Landroid/widget/Toast$TN;->mDuration:I

    if-ne v10, v11, :cond_6

    .line 475
    const-wide/16 v10, 0x3e8

    .line 474
    :goto_1
    iput-wide v10, v9, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 476
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p1, v9, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 477
    iget-object v9, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 479
    iget-object v9, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v10, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v9, v10}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 482
    :cond_4
    iget-object v9, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v10, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v11, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v9, v10, v11}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    invoke-direct {p0}, Landroid/widget/Toast$TN;->trySendAccessibilityEvent()V

    .line 426
    .end local v1    # "appIcon":Landroid/widget/ImageView;
    .end local v2    # "config":Landroid/content/res/Configuration;
    .end local v3    # "context":Landroid/content/Context;
    .end local v5    # "gravity":I
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_5
    return-void

    .line 450
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v1    # "appIcon":Landroid/widget/ImageView;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0

    .line 475
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "config":Landroid/content/res/Configuration;
    .restart local v5    # "gravity":I
    :cond_6
    const-wide/16 v10, 0x1388

    goto :goto_1
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 416
    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 409
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 407
    return-void
.end method
