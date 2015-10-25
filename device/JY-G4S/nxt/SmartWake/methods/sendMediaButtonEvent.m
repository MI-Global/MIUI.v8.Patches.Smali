.method protected isInLockTaskMode()Z
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x0

    return v0
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

