.class Lcom/android/server/pocket/PocketService$PocketObserver;
.super Landroid/database/ContentObserver;
.source "PocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pocket/PocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PocketObserver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/server/pocket/PocketService;


# direct methods
.method public constructor <init>(Lcom/android/server/pocket/PocketService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pocket/PocketService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/server/pocket/PocketService$PocketObserver;->this$0:Lcom/android/server/pocket/PocketService;

    .line 164
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 163
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/server/pocket/PocketService$PocketObserver;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v1}, Lcom/android/server/pocket/PocketService;->-get1(Lcom/android/server/pocket/PocketService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 170
    const-string/jumbo v2, "pocket_judge"

    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 169
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 170
    const/4 v2, 0x1

    .line 169
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 171
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/pocket/PocketService$PocketObserver;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v1, v0}, Lcom/android/server/pocket/PocketService;->-wrap12(Lcom/android/server/pocket/PocketService;Z)V

    .line 168
    return-void

    .line 169
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method public register()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 175
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService$PocketObserver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/server/pocket/PocketService$PocketObserver;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v0}, Lcom/android/server/pocket/PocketService;->-get1(Lcom/android/server/pocket/PocketService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 177
    const-string/jumbo v1, "pocket_judge"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 176
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 178
    iput-boolean v2, p0, Lcom/android/server/pocket/PocketService$PocketObserver;->mRegistered:Z

    .line 174
    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService$PocketObserver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/server/pocket/PocketService$PocketObserver;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v0}, Lcom/android/server/pocket/PocketService;->-get1(Lcom/android/server/pocket/PocketService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pocket/PocketService$PocketObserver;->mRegistered:Z

    .line 182
    :cond_0
    return-void
.end method
