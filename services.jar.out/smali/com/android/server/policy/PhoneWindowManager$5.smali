.class Lcom/android/server/policy/PhoneWindowManager$5;
.super Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;
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
    .line 1234
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEdgeGestureActivation(IILcom/android/internal/util/gesture/EdgeGesturePosition;I)V
    .locals 4
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I
    .param p3, "position"    # Lcom/android/internal/util/gesture/EdgeGesturePosition;
    .param p4, "flags"    # I

    .prologue
    const/4 v3, 0x1

    .line 1239
    const/4 v0, 0x0

    .line 1241
    .local v0, "target":Landroid/view/WindowManagerPolicy$WindowState;
    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->TOP:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    if-ne p3, v1, :cond_1

    .line 1242
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1251
    .end local v0    # "target":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 1252
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap23(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1253
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$5;->dropEventsUntilLift()Z

    .line 1254
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->-set0(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 1238
    :goto_1
    return-void

    .line 1243
    .restart local v0    # "target":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1
    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->BOTTOM:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    if-ne p3, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-nez v1, :cond_2

    .line 1244
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .local v0, "target":Landroid/view/WindowManagerPolicy$WindowState;
    goto :goto_0

    .line 1245
    .local v0, "target":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_2
    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->RIGHT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    if-ne p3, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v1, v3, :cond_3

    .line 1246
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .local v0, "target":Landroid/view/WindowManagerPolicy$WindowState;
    goto :goto_0

    .line 1247
    .local v0, "target":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_3
    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->LEFT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1248
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .local v0, "target":Landroid/view/WindowManagerPolicy$WindowState;
    goto :goto_0

    .line 1256
    .end local v0    # "target":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$5;->restoreListenerState()V

    goto :goto_1
.end method
