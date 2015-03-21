.class public Lcom/bormental/thememanager/TranslateTabs;
.super Ljava/lang/Object;
.source "TranslateTabs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTranslatedTab(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\u6392\u884c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

#    invoke-static {}, Landroid/app/PatchApiHelper;->currentApplication()Landroid/app/Application;
				 



    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;
    move-result-object v0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    sget v1, Lcom/android/thememanager/R$string;->resource_title_rank:I
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object p0


#    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

#    move-result-object v0

#    iget v1, p0, Lcom/android/thememanager/R$string;->resource_title_rank:I

#    const v1, 0x7f0600b9

#    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

#    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "\u5206\u7c7b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;
    move-result-object v0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    sget v1, Lcom/android/thememanager/R$string;->resource_title_category:I
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object p0


#    invoke-static {}, Landroid/app/PatchApiHelper;->currentApplication()Landroid/app/Application;

#    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

#    move-result-object v0

#    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

#    move-result-object v0

#    iget v1, p0, Lcom/android/thememanager/R$string;->resource_title_category:I

#    const v1, 0x7f0600ba

#    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

#    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v0, "\u4e13\u9898"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;
    move-result-object v0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    sget v1, Lcom/android/thememanager/R$string;->resource_title_subject:I
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object p0

#    invoke-static {}, Landroid/app/PatchApiHelper;->currentApplication()Landroid/app/Application;

#    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

#    move-result-object v0

#    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

#    move-result-object v0

#    iget v1, p0, Lcom/android/thememanager/R$string;->resource_title_subject:I

#    const v1, 0x7f0600bb

#    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

#    move-result-object p0

    goto :goto_0

    :cond_3
    const-string v0, "\u6df7\u642d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;
    move-result-object v0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    sget v1, Lcom/android/thememanager/R$string;->theme_multiple_button_title_customize:I
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object p0


#    invoke-static {}, Landroid/app/PatchApiHelper;->currentApplication()Landroid/app/Application;

#    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

#    move-result-object v0

#    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

#    move-result-object v0

#    iget v1, p0, Lcom/android/thememanager/R$string;->theme_multiple_button_title_customize:I

#    const v1, 0x7f0600f7

#    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

#    move-result-object p0

    goto :goto_0

    :cond_4
    const-string v0, "\u672c\u5730"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;
    move-result-object v0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    sget v1, Lcom/android/thememanager/R$string;->resource_title_local:I
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object p0

#    invoke-static {}, Landroid/app/PatchApiHelper;->currentApplication()Landroid/app/Application;

#    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

#    move-result-object v0

#    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

#    move-result-object v0

#    iget v1, p0, Lcom/android/thememanager/R$string;->resource_title_local:I

#    const v1, 0x7f0600bc

#    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

#    move-result-object p0

    goto :goto_0
.end method
