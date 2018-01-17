.class Lcom/android/server/policy/PhoneWindowManager$3;
.super Landroid/pocket/IPocketCallback$Stub;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 881
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/pocket/IPocketCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(ZI)V
    .locals 3
    .param p1, "isDeviceInPocket"    # Z
    .param p2, "reason"    # I

    .prologue
    const/4 v2, 0x0

    .line 885
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->-get3(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    .line 886
    .local v0, "wasDeviceInPocket":Z
    if-nez p2, :cond_1

    .line 887
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->-set1(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 891
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->-get3(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 892
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap16(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 884
    :cond_0
    return-void

    .line 889
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->-set1(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    goto :goto_0
.end method
