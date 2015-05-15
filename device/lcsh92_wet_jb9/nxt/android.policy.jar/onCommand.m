.method public onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "para1"    # Ljava/lang/Double;
    .param p3, "para2"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string v0, "airplane"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    const/16 v1, 0x9

    # invokes: Lcom/android/internal/policy/impl/MiuiGlobalActions;->sendAction(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$000(Lcom/android/internal/policy/impl/MiuiGlobalActions;I)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string v0, "silent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    const/4 v1, 0x5

    # invokes: Lcom/android/internal/policy/impl/MiuiGlobalActions;->sendAction(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$000(Lcom/android/internal/policy/impl/MiuiGlobalActions;I)V

    goto :goto_0

    .line 120
    :cond_2
    const-string v0, "reboot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$100(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_3
    const-string v0, "recovery"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$100(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "recovery"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 120
    :cond_4
    const-string v0, "bootloader"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$100(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "bootloader"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 122
    :cond_5
    const-string v0, "shutdown"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 123
    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$1$1;

    const-string v1, "ShutdownThread"

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions$1$1;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions$1;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$1$1;->start()V

    goto :goto_0

    .line 133
    :cond_6
    const-string v0, "dismiss"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$200(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
