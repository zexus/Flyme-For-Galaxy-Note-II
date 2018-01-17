.class final Lcom/android/server/pocket/PocketService$PocketServiceWrapper;
.super Landroid/pocket/IPocketService$Stub;
.source "PocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pocket/PocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PocketServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pocket/PocketService;


# direct methods
.method private constructor <init>(Lcom/android/server/pocket/PocketService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pocket/PocketService;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-direct {p0}, Landroid/pocket/IPocketService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pocket/PocketService;Lcom/android/server/pocket/PocketService$PocketServiceWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pocket/PocketService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;-><init>(Lcom/android/server/pocket/PocketService;)V

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/pocket/IPocketCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/pocket/IPocketCallback;

    .prologue
    .line 293
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 294
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 295
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 296
    iget-object v1, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v1}, Lcom/android/server/pocket/PocketService;->-get2(Lcom/android/server/pocket/PocketService;)Lcom/android/server/pocket/PocketService$PocketHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendMessage(Landroid/os/Message;)Z

    .line 292
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 338
    iget-object v2, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v2}, Lcom/android/server/pocket/PocketService;->-get1(Lcom/android/server/pocket/PocketService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: can\'t dump Pocket from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 341
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 340
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 342
    const-string/jumbo v3, ", uid="

    .line 340
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 342
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 340
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    return-void

    .line 346
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 348
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v2, p2}, Lcom/android/server/pocket/PocketService;->-wrap1(Lcom/android/server/pocket/PocketService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 337
    return-void

    .line 349
    :catchall_0
    move-exception v2

    .line 350
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 349
    throw v2
.end method

.method public isDeviceInPocket()Z
    .locals 3

    .prologue
    .line 325
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 327
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v2}, Lcom/android/server/pocket/PocketService;->-get4(Lcom/android/server/pocket/PocketService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v2}, Lcom/android/server/pocket/PocketService;->-get3(Lcom/android/server/pocket/PocketService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    iget-object v2, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v2}, Lcom/android/server/pocket/PocketService;->-wrap0(Lcom/android/server/pocket/PocketService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 332
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 330
    return v2

    .line 328
    :cond_0
    const/4 v2, 0x0

    .line 332
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 328
    return v2

    .line 331
    :catchall_0
    move-exception v2

    .line 332
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 331
    throw v2
.end method

.method public onInteractiveChanged(Z)V
    .locals 2
    .param p1, "interactive"    # Z

    .prologue
    .line 309
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 310
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 311
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 312
    iget-object v1, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v1}, Lcom/android/server/pocket/PocketService;->-get2(Lcom/android/server/pocket/PocketService;)Lcom/android/server/pocket/PocketService$PocketHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendMessage(Landroid/os/Message;)Z

    .line 308
    return-void

    .line 311
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeCallback(Landroid/pocket/IPocketCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/pocket/IPocketCallback;

    .prologue
    .line 301
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 302
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 303
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 304
    iget-object v1, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v1}, Lcom/android/server/pocket/PocketService;->-get2(Lcom/android/server/pocket/PocketService;)Lcom/android/server/pocket/PocketService$PocketHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendMessage(Landroid/os/Message;)Z

    .line 300
    return-void
.end method

.method public setListeningExternal(Z)V
    .locals 2
    .param p1, "listen"    # Z

    .prologue
    .line 317
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 318
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 319
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 320
    iget-object v1, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v1}, Lcom/android/server/pocket/PocketService;->-get2(Lcom/android/server/pocket/PocketService;)Lcom/android/server/pocket/PocketService$PocketHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendMessage(Landroid/os/Message;)Z

    .line 316
    return-void

    .line 319
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
