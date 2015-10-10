.method public interceptKeyBeforeQueueingInternal(Landroid/view/KeyEvent;IZ)I
    .locals 28
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 496
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_4

    const/4 v9, 0x1

    .line 497
    .local v9, "down":Z
    :goto_0
    const/high16 v24, 0x1000000

    and-int v24, v24, p2

    if-eqz v24, :cond_5

    const/4 v12, 0x1

    .line 499
    .local v12, "isInjected":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v15

    .line 500
    .local v15, "keyCode":I
    const/16 v24, 0x52

    move/from16 v0, v24

    if-ne v15, v0, :cond_0

    const/16 v15, 0xbb

    .line 502
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 503
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->resetKeyStatus()V

    .line 506
    :cond_1
    const/16 v24, 0x3

    move/from16 v0, v24

    if-ne v15, v0, :cond_2

    if-nez v9, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchIsJustTurnedOn:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 507
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchIsJustTurnedOn:Z

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    const-wide/16 v26, 0x7d0

    invoke-virtual/range {v24 .. v27}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 511
    :cond_2
    const/16 v24, 0x1a

    move/from16 v0, v24

    if-ne v15, v0, :cond_3

    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 512
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenOnFully:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 513
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchIsJustTurnedOn:Z

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 522
    :cond_3
    invoke-static {v15}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v14

    .line 523
    .local v14, "keyBitMask":I
    if-eqz v9, :cond_8

    .line 524
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    move/from16 v24, v0

    or-int v24, v24, v14

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    .line 525
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    move/from16 v24, v0

    or-int v24, v24, v14

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    .line 531
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->handleKeyCombination()V

    .line 533

    const/16 v24, 0x1a

    move/from16 v0, v24

    if-eq v0, v15, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->shouldBeBlocked(Landroid/view/KeyEvent;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->forceShow()V

    .line 536
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v24

    .line 704
    .end local v14    # "keyBitMask":I
    :goto_3
    return v24

    .line 496
    .end local v9    # "down":Z
    .end local v12    # "isInjected":Z
    .end local v15    # "keyCode":I
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 497
    .restart local v9    # "down":Z
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 517
    .restart local v12    # "isInjected":Z
    .restart local v15    # "keyCode":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    move/from16 v24, v0

    if-nez v24, :cond_7

    const/16 v24, 0x1

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->setTorch(Z)Z

    .line 518
    const/16 v24, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v24

    goto :goto_3

    .line 517
    :cond_7
    const/16 v24, 0x0

    goto :goto_4

    .line 528
    .restart local v14    # "keyBitMask":I
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    move/from16 v24, v0

    xor-int/lit8 v25, v14, -0x1

    and-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    goto :goto_2

    .line 539
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_a

    .line 540
    sparse-switch v15, :sswitch_data_0

    .line 550
    :cond_a
    if-nez v9, :cond_c

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    .line 562
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    move/from16 v24, v0

    if-eqz v24, :cond_e

    .line 563
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v24

    goto :goto_3

    .line 546
    :sswitch_0
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v24

    goto :goto_3

    .line 552
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v24

    if-nez v24, :cond_b

    .line 553
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    move/from16 v24, v0

    invoke-static {v15}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->send(I)V

    goto :goto_5

    .line 557
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    goto :goto_5

    .line 566
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    move-object/from16 v24, v0

    if-nez v24, :cond_10

    const/16 v16, 0x0

    .line 569
    .local v16, "keyguardActive":Z
    :goto_6
    if-nez p3, :cond_f

    if-eqz v12, :cond_12

    .line 571
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1f

    if-eqz v16, :cond_1f

    const/16 v24, 0x1b

    move/from16 v0, v24

    if-ne v15, v0, :cond_1f

    if-nez v9, :cond_1f

    .line 572
    const/16 v24, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v24

    goto/16 :goto_3

    .line 566
    .end local v16    # "keyguardActive":Z
    :cond_10
    if-eqz p3, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v16

    goto :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->isShowing()Z

    move-result v16

    goto :goto_6

    .line 575
    .restart local v16    # "keyguardActive":Z
    :cond_12
    const/4 v13, 0x1

    .line 576
    .local v13, "isWakeKey":Z
    const/4 v5, 0x0

    .line 579
    .local v5, "allowToWake":Z
    const-string v0, "persist.sys.off_gesture_switch"

    const/4 v1, 0x0

    invoke-static/range {v0 .. v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->isInCallScreenShowing()Z

    move-result v0

    if-nez v0, :cond_1a

    const/16 v0, 0x31

    if-ne v15, v0, :cond_13

    const-string v0, "persist.sys.off_gesture_u"

    const/16 v1, 0x0

    invoke-static/range {v0 .. v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v5, 0x1

#####################################################

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual/range {v1 .. v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .local v0    # "vib":Landroid/os/Vibrator;

    const-wide/16 v1, 0x14

    invoke-virtual/range {v0 .. v2}, Landroid/os/Vibrator;->vibrate(J)V

    .end local v0    # "vib":Landroid/os/Vibrator;

#####################################################

    goto/16 :goto_7

    :cond_13
    const/16 v0, 0x1f

    if-ne v15, v0, :cond_14

    const-string v0, "persist.sys.off_gesture_c"

    const/16 v1, 0x0

    invoke-static/range {v0 .. v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CAMERA_BUTTON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v5, 0x1

#####################################################

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual/range {v1 .. v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .local v0    # "vib":Landroid/os/Vibrator;

    const-wide/16 v1, 0x14

    invoke-virtual/range {v0 .. v2}, Landroid/os/Vibrator;->vibrate(J)V

    .end local v0    # "vib":Landroid/os/Vibrator;

#####################################################

    goto/16 :goto_7

    :cond_14
    const/16 v0, 0x2b

    if-ne v15, v0, :cond_15

    const-string v0, "persist.sys.off_gesture_o"

    const/16 v1, 0x0

    invoke-static/range {v0 .. v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->dismiss()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v3, "input keyevent KEYCODE_CALL"

    invoke-virtual {v0, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    const/4 v5, 0x1

#####################################################

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual/range {v1 .. v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .local v0    # "vib":Landroid/os/Vibrator;

    const-wide/16 v1, 0x14

    invoke-virtual/range {v0 .. v2}, Landroid/os/Vibrator;->vibrate(J)V

    .end local v0    # "vib":Landroid/os/Vibrator;

#####################################################

    goto/16 :goto_7

    :cond_15
    const/16 v0, 0x13

    if-ne v15, v0, :cond_16

    const-string v0, "persist.sys.off_gesture_up"

    const/16 v1, 0x0

    invoke-static/range {v0 .. v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->dismiss()V

    const/4 v5, 0x1

#####################################################

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual/range {v1 .. v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .local v0    # "vib":Landroid/os/Vibrator;

    const-wide/16 v1, 0x14

    invoke-virtual/range {v0 .. v2}, Landroid/os/Vibrator;->vibrate(J)V

    .end local v0    # "vib":Landroid/os/Vibrator;

#####################################################

    goto :goto_7

    :cond_16
    const/16 v0, 0x21

    if-ne v15, v0, :cond_17

    const-string v0, "persist.sys.off_gesture_e"

    const/16 v1, 0x0

    invoke-static/range {v0 .. v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->dismiss()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v3, "input keyevent KEYCODE_ASSIST"

    invoke-virtual {v0, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    const/4 v5, 0x1

#####################################################

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual/range {v1 .. v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .local v0    # "vib":Landroid/os/Vibrator;

    const-wide/16 v1, 0x14

    invoke-virtual/range {v0 .. v2}, Landroid/os/Vibrator;->vibrate(J)V

    .end local v0    # "vib":Landroid/os/Vibrator;

#####################################################

    goto :goto_7

    :cond_17

##############################
    const/16 v0, 0x14

    if-ne v15, v0, :cond_18

    const-string v0, "persist.sys.off_gesture_down"

    const/16 v1, 0x0

    invoke-static/range {v0 .. v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v3, "input keyevent KEYCODE_MEDIA_PLAY_PAUSE"

    invoke-virtual {v0, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    goto :goto_80
####################################

    :cond_18
    const/16 v0, 0x15

    if-ne v15, v0, :cond_19

    const-string v0, "persist.sys.off_gesture_left"

    const/16 v1, 0x0

    invoke-static/range {v0 .. v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v3, "input keyevent KEYCODE_MEDIA_PREVIOUS"

    invoke-virtual {v0, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    goto :goto_80

    :cond_19
    const/16 v0, 0x16

    if-ne v15, v0, :cond_1a

    const-string v0, "persist.sys.off_gesture_right"

    const/16 v1, 0x0

    invoke-static/range {v0 .. v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v3, "input keyevent KEYCODE_MEDIA_NEXT"

    invoke-virtual {v0, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
#######################
    :goto_80

#####################################################

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual/range {v1 .. v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .local v0    # "vib":Landroid/os/Vibrator;

    const-wide/16 v1, 0x14

    invoke-virtual/range {v0 .. v2}, Landroid/os/Vibrator;->vibrate(J)V

    .end local v0    # "vib":Landroid/os/Vibrator;

#####################################################

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/16 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v24

    goto :goto_3
####################
    :cond_1a
    sparse-switch v15, :sswitch_data_1

    .line 600
    const/4 v13, 0x0

    .line 603
    :cond_1b
    :goto_7
    if-eqz v13, :cond_1f

    .line 604
    if-eqz v5, :cond_1e

    .line 605
    if-eqz v9, :cond_1c

    .line 607
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v24

    goto/16 :goto_3

    .line 581
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    .line 582
    goto :goto_7

    .line 585
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    .line 586
    goto :goto_7

    .line 590
    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->screenOffBecauseOfProxSensor()Z

    move-result v24

    if-eqz v24, :cond_1b

    .line 595
    const/4 v5, 0x0

    goto :goto_7

    .line 610
    :cond_1c
    if-eqz v16, :cond_1d

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    move-object/from16 v24, v0

    const/16 v25, 0x1a

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->onWakeKeyWhenKeyguardShowingTq(IZ)Z

    .line 613
    :cond_1d
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v24

    goto/16 :goto_3

    .line 616
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getWakePolicyFlag()I

    move-result v24

    xor-int/lit8 v24, v24, -0x1

    and-int p2, p2, v24

    .line 620
    .end local v5    # "allowToWake":Z
    .end local v13    # "isWakeKey":Z
    :cond_1f
    const/16 v24, 0x4f

    move/from16 v0, v24

    if-ne v15, v0, :cond_21

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "enable_mikey_mode"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v10

    .line 626
    .local v10, "enabled":Z
    if-eqz v10, :cond_21

    .line 627
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v24

    if-nez v24, :cond_20

    .line 628
    new-instance v17, Landroid/content/Intent;

    const-string v24, "miui.intent.action.MIKEY_BUTTON"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 629
    .local v17, "mikeyIntent":Landroid/content/Intent;
    const-string v24, "com.xiaomi.miclick"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    const-string v24, "key_action"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 631
    const-string v24, "key_event_time"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-wide/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 635
    .end local v17    # "mikeyIntent":Landroid/content/Intent;
    :cond_20
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v24

    goto/16 :goto_3

    .line 639
    .end local v10    # "enabled":Z
    :cond_21
    if-eqz v9, :cond_2e

    .line 641
    const/16 v24, 0x1a

    move/from16 v0, v24

    if-ne v15, v0, :cond_29

    const/16 v22, 0x1

    .line 642
    .local v22, "stopNotification":Z
    :goto_8
    if-nez v22, :cond_23

    .line 643
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getWindownManagerService()Landroid/view/IWindowManager;

    move-result-object v23

    .line 644
    .local v23, "wm":Landroid/view/IWindowManager;
    if-eqz v23, :cond_23

    invoke-interface/range {v23 .. v23}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v24

    if-eqz v24, :cond_23

    .line 645
    const/16 v24, 0x19

    move/from16 v0, v24

    if-eq v15, v0, :cond_22

    const/16 v24, 0x18

    move/from16 v0, v24

    if-eq v15, v0, :cond_22

    const/16 v24, 0xa4

    move/from16 v0, v24

    if-ne v15, v0, :cond_23

    .line 648
    :cond_22
    const/16 v22, 0x1

    .line 653
    .end local v23    # "wm":Landroid/view/IWindowManager;
    :cond_23
    if-eqz v22, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSystemReady:Z

    move/from16 v24, v0

    if-eqz v24, :cond_24

    .line 654
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v21

    .line 655
    .local v21, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v21, :cond_24

    .line 656
    invoke-interface/range {v21 .. v21}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed()V

    .line 660
    .end local v21    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_24
    const/16 v24, 0x1a

    move/from16 v0, v24

    if-eq v15, v0, :cond_25

    const/16 v24, 0x19

    move/from16 v0, v24

    if-eq v15, v0, :cond_25

    const/16 v24, 0xa4

    move/from16 v0, v24

    if-ne v15, v0, :cond_26
    .line 663
    :cond_25
    new-instance v11, Landroid/content/Intent;

    const-string v24, "android.intent.action.KEYCODE_MUTE"

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 664
    .local v11, "i":Landroid/content/Intent;
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 668
    .end local v11    # "i":Landroid/content/Intent;
    :cond_26
    const/16 v24, 0x19

    move/from16 v0, v24

    if-eq v15, v0, :cond_27

    const/16 v24, 0x18

    move/from16 v0, v24

    if-ne v15, v0, :cond_2b

    .line 670
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 671
    .local v8, "cr":Landroid/content/ContentResolver;
    const-string v24, "remote_control_proc_name"

    move-object/from16 v0, v24

    invoke-static {v8, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 672
    .local v19, "proc":Ljava/lang/String;
    const-string v24, "remote_control_pkg_name"

    move-object/from16 v0, v24

    invoke-static {v8, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 674
    .local v18, "pkg":Ljava/lang/String;
    if-eqz v19, :cond_2b

    if-eqz v18, :cond_2b

    .line 675
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 676
    .local v6, "c":J
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->checkProcessRunning(Ljava/lang/String;)Z

    move-result v20

    .line 677
    .local v20, "running":Z
    sget-boolean v24, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->DEBUG:Z

    if-eqz v24, :cond_28

    .line 678
    const-string v24, "WindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "find remote control receiver time "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v6

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_28
    if-eqz v20, :cond_2a

    .line 681
    new-instance v11, Landroid/content/Intent;

    const-string v24, "miui.intent.action.REMOTE_CONTROL"

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    .restart local v11    # "i":Landroid/content/Intent;
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 684
    const-string v24, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 686
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v24

    goto/16 :goto_3

    .line 641
    .end local v6    # "c":J
    .end local v8    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "i":Landroid/content/Intent;
    .end local v18    # "pkg":Ljava/lang/String;
    .end local v19    # "proc":Ljava/lang/String;
    .end local v20    # "running":Z
    .end local v22    # "stopNotification":Z
    :cond_29
    const/16 v22, 0x0

    goto/16 :goto_8

    .line 688
    .restart local v6    # "c":J
    .restart local v8    # "cr":Landroid/content/ContentResolver;
    .restart local v18    # "pkg":Ljava/lang/String;
    .restart local v19    # "proc":Ljava/lang/String;
    .restart local v20    # "running":Z
    .restart local v22    # "stopNotification":Z
    :cond_2a
    const-string v24, "remote_control_proc_name"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 689
    const-string v24, "remote_control_pkg_name"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    .end local v6    # "c":J
    .end local v8    # "cr":Landroid/content/ContentResolver;
    .end local v18    # "pkg":Ljava/lang/String;
    .end local v19    # "proc":Ljava/lang/String;
    .end local v20    # "running":Z
    .end local v22    # "stopNotification":Z
    :cond_2b
    :goto_9
    if-eqz v9, :cond_2d

    const/16 v24, 0x18

    move/from16 v0, v24

    if-eq v0, v15, :cond_2c

    const/16 v24, 0x19

    move/from16 v0, v24

    if-ne v0, v15, :cond_2d

    .line 702
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    move-object/from16 v24, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_2d
    invoke-virtual/range {p0 .. p3}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v24

    goto/16 :goto_3

    .line 696
    :cond_2e
    const/16 v24, 0x1a

    move/from16 v0, v24

    if-ne v15, v0, :cond_2b

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    new-instance v25, Landroid/content/Intent;

    const-string v26, "android.intent.action.KEYCODE_POWER_UP"

    invoke-direct/range {v25 .. v26}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_9

    .line 693
    .restart local v22    # "stopNotification":Z
    :catch_0
    move-exception v24

    goto :goto_9

    .line 540
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
        0xbb -> :sswitch_0
    .end sparse-switch

    .line 579
    :sswitch_data_1
    .sparse-switch
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_2
        0x110 -> :sswitch_1
    .end sparse-switch
.end method
