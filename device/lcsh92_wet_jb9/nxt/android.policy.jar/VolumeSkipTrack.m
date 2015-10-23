.method public finishLayoutLw()V
    .locals 0

    .prologue
    .line 3509
    return-void
.end method

.method VolumeLongPressedAction()V
    .locals 5
    .prologue

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumePressed:Z
    if-eqz v0, :cond_0

## Vibra ##
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;
    const-string v2, "vibrator"
    invoke-virtual/range {v1 .. v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/os/Vibrator;
    .local v0
       const-wide/16 v1, 0x64
       invoke-virtual/range {v0 .. v2}, Landroid/os/Vibrator;->vibrate(J)V
    .end local v0

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeKeyCode:I

## Volume UP ##
    const/16 v1, 0x18
    if-ne v1, v2, :cond_1
    const/16 v1, 0x57 
    goto :goto_10

:cond_1  ## Volume DOWN ##
    const/16 v1, 0x19
    if-ne v1, v2, :cond_0
    const/16 v1, 0x58

:goto_10
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendMediaButtonEvent(I)V

    const/4 v0, 0x1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeLongPressed:Z
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeLongPressed:Z
    goto :goto_0
.end method

.method protected sendMediaButtonEvent(I)V
    .locals 14
    .param p1, "keyCode"    # I

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v1
    .local v1, "eventtime":J
    new-instance v11, Landroid/content/Intent;
    const-string v4, "android.intent.action.MEDIA_BUTTON"
    const/4 v5, 0x0
    invoke-direct {v11, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    .local v11, "downIntent":Landroid/content/Intent;
    new-instance v0, Landroid/view/KeyEvent;
    const/4 v5, 0x0
    const/4 v7, 0x0
    move v6, p1
    move-wide v3, v1
    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V
    .local v0, "downEvent":Landroid/view/KeyEvent;
    const-string v4, "android.intent.extra.KEY_EVENT"
    invoke-virtual {v11, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;
    const/4 v5, 0x0
    invoke-virtual {v4, v11, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    new-instance v12, Landroid/content/Intent;
    const-string v4, "android.intent.action.MEDIA_BUTTON"
    const/4 v5, 0x0
    invoke-direct {v12, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    .local v12, "upIntent":Landroid/content/Intent;
    new-instance v3, Landroid/view/KeyEvent;
    const/4 v8, 0x1
    const/4 v10, 0x0
    move-wide v4, v1
    move-wide v6, v1
    move v9, p1
    invoke-direct/range {v3 .. v10}, Landroid/view/KeyEvent;-><init>(JJIII)V
    .local v3, "upEvent":Landroid/view/KeyEvent;
    const-string v4, "android.intent.extra.KEY_EVENT"
    invoke-virtual {v12, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;
    const/4 v5, 0x0
    invoke-virtual {v4, v12, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    return-void
.end method
