.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0
    .line 3296
    const-string v0, "PowerManagerService"

    const-string v1, "BootCompletedReceiver."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3304
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->startWatchingForBootAnimationFinished()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;)V

    .line 3305
    const-string v0, "persist.sys.off_gesture_switch"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 3335
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->writeOffScreenGestureState(I)V
    invoke-static {v0, v3}, Lcom/android/server/power/PowerManagerService;->access$2101(Lcom/android/server/power/PowerManagerService;I)V

    .line 3341
    :goto_0
    return-void

    .line 3337
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->writeOffScreenGestureState(I)V
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$2101(Lcom/android/server/power/PowerManagerService;I)V

    goto :goto_0
.end method