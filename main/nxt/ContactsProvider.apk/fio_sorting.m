.method public join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;
    .locals 9
    .param p1, "name"    # Lcom/android/providers/contacts/NameSplitter$Name;
    .param p2, "givenNameFirst"    # Z
    .param p3, "includePrefix"    # Z

    .prologue
    .line 522
    if-eqz p3, :cond_1

    iget-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 523
    .local v1, "prefix":Ljava/lang/String;
    :goto_0
    iget v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    packed-switch v0, :pswitch_data_0

    .line 535
    if-eqz p2, :cond_2

    .line 536
#######################################

    const-string v2, "ro.mi-global.sorting.fio"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

#######################################
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    .line 539
    :goto_1
    return-object v0
######################################
    :cond_0

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
#####################################
    .line 522
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 527
    .restart local v1    # "prefix":Ljava/lang/String;
    :pswitch_0
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 531
    :pswitch_1
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 539
    :cond_2
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 523
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method