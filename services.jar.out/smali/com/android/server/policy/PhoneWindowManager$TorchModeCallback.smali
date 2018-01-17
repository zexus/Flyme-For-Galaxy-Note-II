.class Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TorchModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 9637
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 9640
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-get6(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 9641
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0, p2}, Lcom/android/server/policy/PhoneWindowManager;->-set3(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 9642
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-get7(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9643
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap8(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 9639
    :cond_1
    return-void
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 9649
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-get6(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 9650
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-set3(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 9651
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap8(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 9648
    return-void
.end method
