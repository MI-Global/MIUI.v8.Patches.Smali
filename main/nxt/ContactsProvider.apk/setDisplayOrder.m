.method public setDisplayOrder(I)V
    .locals 2
    .param p1, "displayOrder"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    .line 114
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.contacts.DISPLAY_ORDER"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

################
    const/16 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v1, "false"

    goto :goto_1

    :cond_1

    const-string v1, "true"

    :goto_1

    const-string v0, "persist.sys.fio.sorting"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
################

    return-void
.end method