.method public dismissKeyguardLw()V
    .locals 2

    .prologue
    .line 5151
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5152
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$27;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$27;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5164
    :cond_0
    return-void
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

.method HandleVolumeDoublePress(Landroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;
    .prologue

## If key down ##
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I
    move-result v0
    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumePressed:Z
    if-eqz v0, :cond_1

## 2nd time pressed. Checking timeout ##
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v3
    iget-wide v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumePressedTime:J
    sub-long/2addr v3, v5
    const-wide/16 v5, 0x12c
    cmp-long v0, v3, v5
    if-gez v0, :cond_0

##  Volume key double pressed ##

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

## Action ##
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
    move-result v0
    const/16 v1, 0x18
    if-ne v1, v0, :cond_3
    const/16 v1, 0x57 
    goto :goto_1

:cond_3  
    const/16 v1, 0x19
    if-ne v1, v0, :cond_0
    const/16 v1, 0x58

:goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendMediaButtonEvent(I)V
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumePressed:Z
    const/4 v2, 0x1
    goto :goto_0

:cond_0    ##  Time is out ##
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumePressed:Z
    const/4 v2, 0x0
    goto :goto_0


:cond_1    ##  Volume key 1st time pressed ##
    const/4 v0, 0x1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumePressed:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v3
    iput-wide v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumePressedTime:J
 
:cond_2
    const/4 v2, 0x0
:goto_0

    return v2
.end method
