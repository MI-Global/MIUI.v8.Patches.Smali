.method playBatterySound(Landroid/net/Uri;)V
    .locals 4
    .param p1, "soundUri"    # Landroid/net/Uri;

    .prologue
    const-string v2, "ro.mi-global.mute.acpower"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 292
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 293
    .local v0, "cr":Landroid/content/ContentResolver;

    const-string v2, "charging_sounds"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0
			  
    .line 295
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 296
    .local v1, "sfx":Landroid/media/Ringtone;
    if-eqz v1, :cond_0

    .line 297
    invoke-virtual {v1, v3}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 298
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 302
    .end local v1    # "sfx":Landroid/media/Ringtone;
    :cond_0
    return-void
.end method