.class public Lmiui/resourcebrowser/view/ResourceOperationHandler;
.super Ljava/lang/Object;
.source "ResourceOperationHandler.java"

# interfaces
.implements Lmiui/resourcebrowser/IntentConstants;
.implements Lmiui/resourcebrowser/ResourceDownloadManager$ResourceDownloadListener;
.implements Lmiui/resourcebrowser/ResourceImportHandler$ResourceImportListener;
.implements Lmiui/resourcebrowser/controller/online/OnlineProtocolConstants;
.implements Lmiui/resourcebrowser/util/AnalyticsConstants;
.implements Lmiui/resourcebrowser/view/ResourceOperationView$ResourceOperationListener;
.implements Lmiui/resourcebrowser/widget/FragmentLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/resourcebrowser/view/ResourceOperationHandler$5;,
        Lmiui/resourcebrowser/view/ResourceOperationHandler$DownloadRightsTask;,
        Lmiui/resourcebrowser/view/ResourceOperationHandler$CheckRightsTask;,
        Lmiui/resourcebrowser/view/ResourceOperationHandler$LoadingStateInfo;
    }
.end annotation


# instance fields
.field private mCheckRightsCountDuringApplyEvent:I

.field protected mContext:Landroid/content/Context;

.field private mExchangeState:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mImportHandler:Lmiui/resourcebrowser/ResourceImportHandler;

.field private mIsLegal:Z

.field private mIsOnlinePage:Z

.field protected mIsTrialApply:Z

.field protected mLoadingInfo:Lmiui/resourcebrowser/view/ResourceOperationHandler$LoadingStateInfo;

.field protected mOperationView:Lmiui/resourcebrowser/view/ResourceOperationView;

.field private mPurchaseListener:Lmiui/resourcebrowser/controller/online/PurchaseManager$PurchaseListener;

.field protected mPurchaseManager:Lmiui/resourcebrowser/controller/online/PurchaseManager;

.field protected mResContext:Lmiui/resourcebrowser/ResourceContext;

.field protected mResController:Lmiui/resourcebrowser/controller/ResourceController;

.field protected mResResolver:Lmiui/resourcebrowser/model/ResourceResolver;

.field protected mResource:Lmiui/resourcebrowser/model/Resource;

.field protected mService:Lmiui/resourcebrowser/controller/online/DrmService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/resourcebrowser/ResourceContext;Lmiui/resourcebrowser/view/ResourceOperationView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resContext"    # Lmiui/resourcebrowser/ResourceContext;
    .param p3, "view"    # Lmiui/resourcebrowser/view/ResourceOperationView;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lmiui/resourcebrowser/view/ResourceOperationHandler$LoadingStateInfo;

    invoke-direct {v0}, Lmiui/resourcebrowser/view/ResourceOperationHandler$LoadingStateInfo;-><init>()V

    iput-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mLoadingInfo:Lmiui/resourcebrowser/view/ResourceOperationHandler$LoadingStateInfo;

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mCheckRightsCountDuringApplyEvent:I

    .line 96
    new-instance v0, Lmiui/resourcebrowser/view/ResourceOperationHandler$1;

    invoke-direct {v0, p0}, Lmiui/resourcebrowser/view/ResourceOperationHandler$1;-><init>(Lmiui/resourcebrowser/view/ResourceOperationHandler;)V

    iput-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mPurchaseListener:Lmiui/resourcebrowser/controller/online/PurchaseManager$PurchaseListener;

    .line 130
    if-nez p3, :cond_0

    .line 131
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operated view can not be null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iput-object p1, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mContext:Landroid/content/Context;

    .line 135
    iput-object p3, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mOperationView:Lmiui/resourcebrowser/view/ResourceOperationView;

    .line 136
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mOperationView:Lmiui/resourcebrowser/view/ResourceOperationView;

    invoke-virtual {v0, p0}, Lmiui/resourcebrowser/view/ResourceOperationView;->setResourceOperationHandler(Lmiui/resourcebrowser/view/ResourceOperationHandler;)V

    .line 137
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mHandler:Landroid/os/Handler;

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lmiui/resourcebrowser/view/ResourceOperationHandler;->resetResourceContext(Lmiui/resourcebrowser/ResourceContext;Lmiui/resourcebrowser/controller/ResourceController;)V

    .line 141
    invoke-virtual {p0}, Lmiui/resourcebrowser/view/ResourceOperationHandler;->getImportHandler()Lmiui/resourcebrowser/ResourceImportHandler;

    move-result-object v0

    iput-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mImportHandler:Lmiui/resourcebrowser/ResourceImportHandler;

    .line 142
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mImportHandler:Lmiui/resourcebrowser/ResourceImportHandler;

    invoke-virtual {v0, p0}, Lmiui/resourcebrowser/ResourceImportHandler;->setResourceImportListener(Lmiui/resourcebrowser/ResourceImportHandler$ResourceImportListener;)V

    .line 143
    return-void
.end method

.method static synthetic access$002(Lmiui/resourcebrowser/view/ResourceOperationHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/resourcebrowser/view/ResourceOperationHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mIsLegal:Z

    return p1
.end method

.method static synthetic access$104(Lmiui/resourcebrowser/view/ResourceOperationHandler;)I
    .locals 1
    .param p0, "x0"    # Lmiui/resourcebrowser/view/ResourceOperationHandler;

    .prologue
    .line 57
    iget v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mCheckRightsCountDuringApplyEvent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mCheckRightsCountDuringApplyEvent:I

    return v0
.end method

.method private checkTrialLoginStatus()V
    .locals 3

    .prologue
    .line 463
    new-instance v0, Lmiui/resourcebrowser/view/ResourceOperationHandler$2;

    invoke-direct {v0, p0}, Lmiui/resourcebrowser/view/ResourceOperationHandler$2;-><init>(Lmiui/resourcebrowser/view/ResourceOperationHandler;)V

    .line 480
    .local v0, "callback":Lmiui/resourcebrowser/LoginManager$LoginCallback;
    invoke-static {}, Lmiui/resourcebrowser/AppInnerContext;->getInstance()Lmiui/resourcebrowser/AppInnerContext;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/resourcebrowser/AppInnerContext;->getLoginManager()Lmiui/resourcebrowser/LoginManager;

    move-result-object v2

    iget-object v1, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1, v0}, Lmiui/resourcebrowser/LoginManager;->login(Landroid/app/Activity;Lmiui/resourcebrowser/LoginManager$LoginCallback;)V

    .line 481
    return-void
.end method

.method private downloadResource()V
    .locals 4

    .prologue
    .line 271
    new-instance v1, Lmiui/resourcebrowser/view/ResourceOperationHandler$DownloadRightsTask;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lmiui/resourcebrowser/view/ResourceOperationHandler$DownloadRightsTask;-><init>(Lmiui/resourcebrowser/view/ResourceOperationHandler;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lmiui/resourcebrowser/view/ResourceOperationHandler$DownloadRightsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 272
    new-instance v0, Lmiui/resourcebrowser/util/AnalyticsHelper$AnalyticsInfo;

    invoke-direct {v0}, Lmiui/resourcebrowser/util/AnalyticsHelper$AnalyticsInfo;-><init>()V

    .line 273
    .local v0, "info":Lmiui/resourcebrowser/util/AnalyticsHelper$AnalyticsInfo;
    invoke-virtual {p0}, Lmiui/resourcebrowser/view/ResourceOperationHandler;->isOldResource()Z

    move-result v1

    iput-boolean v1, v0, Lmiui/resourcebrowser/util/AnalyticsHelper$AnalyticsInfo;->update:Z

    .line 274
    invoke-static {}, Lmiui/resourcebrowser/util/AnalyticsHelper;->getForegroundFromType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/resourcebrowser/util/AnalyticsHelper$AnalyticsInfo;->fromType:Ljava/lang/String;

    .line 275
    invoke-static {}, Lmiui/resourcebrowser/util/AnalyticsHelper;->getForegroundEntryType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/resourcebrowser/util/AnalyticsHelper$AnalyticsInfo;->entryType:Ljava/lang/String;

    .line 276
    invoke-static {}, Lmiui/resourcebrowser/AppInnerContext;->getInstance()Lmiui/resourcebrowser/AppInnerContext;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/resourcebrowser/AppInnerContext;->getResourceDownloadManager()Lmiui/resourcebrowser/ResourceDownloadManager;

    move-result-object v1

    iget-object v2, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResource:Lmiui/resourcebrowser/model/Resource;

    iget-object v3, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    invoke-virtual {v1, v2, v3, v0}, Lmiui/resourcebrowser/ResourceDownloadManager;->downloadResource(Lmiui/resourcebrowser/model/Resource;Lmiui/resourcebrowser/ResourceContext;Lmiui/resourcebrowser/util/AnalyticsHelper$AnalyticsInfo;)V

    .line 277
    iget-object v1, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mOperationView:Lmiui/resourcebrowser/view/ResourceOperationView;

    invoke-virtual {v1}, Lmiui/resourcebrowser/view/ResourceOperationView;->updateStatus()V

    .line 278
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mIsLegal:Z

    .line 187
    return-void
.end method

.method private updateOperViewStatus(Lmiui/resourcebrowser/model/Resource;)V
    .locals 2
    .param p1, "resource"    # Lmiui/resourcebrowser/model/Resource;

    .prologue
    .line 643
    invoke-virtual {p1}, Lmiui/resourcebrowser/model/Resource;->getAssemblyId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmiui/resourcebrowser/model/Resource;->getAssemblyId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResource:Lmiui/resourcebrowser/model/Resource;

    invoke-virtual {v1}, Lmiui/resourcebrowser/model/Resource;->getAssemblyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmiui/resourcebrowser/view/ResourceOperationHandler$4;

    invoke-direct {v1, p0}, Lmiui/resourcebrowser/view/ResourceOperationHandler$4;-><init>(Lmiui/resourcebrowser/view/ResourceOperationHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 660
    :cond_0
    return-void
.end method


# virtual methods
.method protected applyResource()V
    .locals 3

    .prologue
    .line 492
    invoke-static {}, Lmiui/resourcebrowser/AppInnerContext;->getInstance()Lmiui/resourcebrowser/AppInnerContext;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/resourcebrowser/AppInnerContext;->getResourceTrialManager()Lmiui/resourcebrowser/ResourceTrialManager;

    move-result-object v0

    .line 493
    .local v0, "trial":Lmiui/resourcebrowser/ResourceTrialManager;
    invoke-virtual {p0}, Lmiui/resourcebrowser/view/ResourceOperationHandler;->isLegal()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmiui/resourcebrowser/view/ResourceOperationHandler;->isPermanentRights()Z

    move-result v1

    if-nez v1, :cond_0

    .line 494
    const-string v1, "trial_apply"

    invoke-static {v1}, Lmiui/resourcebrowser/util/AnalyticsHelper;->traceClickEvent(Ljava/lang/String;)V

    .line 495
    iget-object v1, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    iget-object v2, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResource:Lmiui/resourcebrowser/model/Resource;

    invoke-virtual {v0, v1, v2}, Lmiui/resourcebrowser/ResourceTrialManager;->startTrial(Lmiui/resourcebrowser/ResourceContext;Lmiui/resourcebrowser/model/Resource;)V

    .line 500
    :goto_0
    return-void

    .line 497
    :cond_0
    invoke-virtual {v0}, Lmiui/resourcebrowser/ResourceTrialManager;->cancelTimer()V

    .line 498
    iget-object v1, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lmiui/resourcebrowser/ResourceTrialManager;->cancelOnTrialNotification(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected checkResourceRights()V
    .locals 2

    .prologue
    .line 484
    invoke-virtual {p0}, Lmiui/resourcebrowser/view/ResourceOperationHandler;->isLegal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {p0}, Lmiui/resourcebrowser/view/ResourceOperationHandler;->applyResource()V

    .line 489
    :goto_0
    return-void

    .line 487
    :cond_0
    new-instance v0, Lmiui/resourcebrowser/view/ResourceOperationHandler$CheckRightsTask;

    invoke-direct {v0, p0}, Lmiui/resourcebrowser/view/ResourceOperationHandler$CheckRightsTask;-><init>(Lmiui/resourcebrowser/view/ResourceOperationHandler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmiui/resourcebrowser/view/ResourceOperationHandler$CheckRightsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getDownloadingText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 226
    invoke-static {}, Lmiui/resourcebrowser/AppInnerContext;->getInstance()Lmiui/resourcebrowser/AppInnerContext;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/resourcebrowser/AppInnerContext;->getResourceDownloadManager()Lmiui/resourcebrowser/ResourceDownloadManager;

    move-result-object v1

    iget-object v2, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResource:Lmiui/resourcebrowser/model/Resource;

    invoke-virtual {v1, v2}, Lmiui/resourcebrowser/ResourceDownloadManager;->getDownloadingText(Lmiui/resourcebrowser/model/Resource;)I

    move-result v0

    .line 227
    .local v0, "textId":I
    if-lez v0, :cond_0

    .line 228
    iget-object v1, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getImportHandler()Lmiui/resourcebrowser/ResourceImportHandler;
    .locals 2

    .prologue
    .line 639
    new-instance v0, Lmiui/resourcebrowser/ResourceImportHandler;

    iget-object v1, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/resourcebrowser/ResourceImportHandler;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getLoadingStateInfo()Lmiui/resourcebrowser/view/ResourceOperationHandler$LoadingStateInfo;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mLoadingInfo:Lmiui/resourcebrowser/view/ResourceOperationHandler$LoadingStateInfo;

    return-object v0
.end method

.method public getPrice()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResource:Lmiui/resourcebrowser/model/Resource;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/Resource;->getProductPrice()I

    move-result v0

    return v0
.end method

.method public getResource()Lmiui/resourcebrowser/model/Resource;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResource:Lmiui/resourcebrowser/model/Resource;

    return-object v0
.end method

.method protected getWhiteList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleDownloadComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "downloadPath"    # Ljava/lang/String;
    .param p2, "assemblyId"    # Ljava/lang/String;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "downloadSuccess"    # Z

    .prologue
    .line 554
    if-nez p4, :cond_0

    .line 555
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResource:Lmiui/resourcebrowser/model/Resource;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/Resource;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f060034

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 557
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mOperationView:Lmiui/resourcebrowser/view/ResourceOperationView;

    invoke-virtual {v0}, Lmiui/resourcebrowser/view/ResourceOperationView;->updateStatus()V

    .line 560
    :cond_0
    return-void
.end method

.method public handleDownloadProgressUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "downloadPath"    # Ljava/lang/String;
    .param p2, "assemblyId"    # Ljava/lang/String;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "currBytes"    # I
    .param p5, "totalBytes"    # I

    .prologue
    .line 569
    return-void
.end method

.method public handleDownloadStatusChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "downloadPath"    # Ljava/lang/String;
    .param p2, "assemblyId"    # Ljava/lang/String;
    .param p3, "extraData"    # Ljava/lang/String;

    .prologue
    .line 564
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mOperationView:Lmiui/resourcebrowser/view/ResourceOperationView;

    invoke-virtual {v0}, Lmiui/resourcebrowser/view/ResourceOperationView;->updateStatus()V

    .line 565
    return-void
.end method

.method public init(Lmiui/resourcebrowser/controller/ResourceController;Z)V
    .locals 0
    .param p1, "resController"    # Lmiui/resourcebrowser/controller/ResourceController;
    .param p2, "isOnlinePage"    # Z

    .prologue
    .line 162
    iput-object p1, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResController:Lmiui/resourcebrowser/controller/ResourceController;

    .line 163
    iput-boolean p2, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mIsOnlinePage:Z

    .line 164
    return-void
.end method

.method public isAuthorizedResource()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isComment()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public isDeletable()Z
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lmiui/resourcebrowser/view/ResourceOperationHandler;->isLocalResource()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResResolver:Lmiui/resourcebrowser/model/ResourceResolver;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceResolver;->getMetaPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/resourcebrowser/util/ResourceHelper;->isSystemResource(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResResolver:Lmiui/resourcebrowser/model/ResourceResolver;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/ResourceResolver;->getMetaPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/resourcebrowser/util/ResourceHelper;->isDataResource(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloading()Z
    .locals 2

    .prologue
    .line 222
    invoke-static {}, Lmiui/resourcebrowser/AppInnerContext;->getInstance()Lmiui/resourcebrowser/AppInnerContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/resourcebrowser/AppInnerContext;->getResourceDownloadManager()Lmiui/resourcebrowser/ResourceDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResource:Lmiui/resourcebrowser/model/Resource;

    invoke-virtual {v0, v1}, Lmiui/resourcebrowser/ResourceDownloadManager;->isDownloadingDeprecated(Lmiui/resourcebrowser/model/Resource;)Z

    move-result v0

    return v0
.end method

.method public isExchangeState()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mExchangeState:Z

    return v0
.end method

.method public isFavorited()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public isImporting()Z
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mImportHandler:Lmiui/resourcebrowser/ResourceImportHandler;

    iget-object v1, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResource:Lmiui/resourcebrowser/model/Resource;

    invoke-virtual {v0, v1}, Lmiui/resourcebrowser/ResourceImportHandler;->isResourceImporting(Lmiui/resourcebrowser/model/Resource;)Z

    move-result v0

    return v0
.end method

.method protected isLegal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLocalResource()Z
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResController:Lmiui/resourcebrowser/controller/ResourceController;

    invoke-virtual {v0}, Lmiui/resourcebrowser/controller/ResourceController;->getResourceDataManager()Lmiui/resourcebrowser/controller/ResourceDataManager;

    move-result-object v0

    iget-object v1, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResource:Lmiui/resourcebrowser/model/Resource;

    invoke-virtual {v0, v1}, Lmiui/resourcebrowser/controller/ResourceDataManager;->isLocalResource(Lmiui/resourcebrowser/model/Resource;)Z

    move-result v0

    return v0
.end method

.method public isOldResource()Z
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResController:Lmiui/resourcebrowser/controller/ResourceController;

    invoke-virtual {v0}, Lmiui/resourcebrowser/controller/ResourceController;->getResourceDataManager()Lmiui/resourcebrowser/controller/ResourceDataManager;

    move-result-object v0

    iget-object v1, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResource:Lmiui/resourcebrowser/model/Resource;

    invoke-virtual {v0, v1}, Lmiui/resourcebrowser/controller/ResourceDataManager;->isOldResource(Lmiui/resourcebrowser/model/Resource;)Z

    move-result v0

    return v0
.end method

.method public isOnlinePage()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mIsOnlinePage:Z

    return v0
.end method

.method public isPermanentRights()Z
    .locals 1

    const/4 v0, 0x1

    return v0

.end method

.method public isPicker()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    invoke-virtual {v0}, Lmiui/resourcebrowser/ResourceContext;->isPicker()Z

    move-result v0

    return v0
.end method

.method public isSharable()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResource:Lmiui/resourcebrowser/model/Resource;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/Resource;->getOnlineId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrialable()Z
    .locals 4

    .prologue
    .line 243
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    invoke-virtual {v0}, Lmiui/resourcebrowser/ResourceContext;->isTrialSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResource:Lmiui/resourcebrowser/model/Resource;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/Resource;->getTrialTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 610
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 602
    return-void
.end method

.method public final onApplyEventPerformed()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 449
    iput v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mCheckRightsCountDuringApplyEvent:I

    .line 450
    iput-boolean v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mIsTrialApply:Z

    .line 451
    invoke-virtual {p0}, Lmiui/resourcebrowser/view/ResourceOperationHandler;->checkResourceRights()V

    .line 452
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 606
    return-void
.end method

.method public onBuyEventPerformed()V
    .locals 4

    .prologue
    .line 504
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResource:Lmiui/resourcebrowser/model/Resource;

    invoke-virtual {v0}, Lmiui/resourcebrowser/model/Resource;->getOnlineId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/resourcebrowser/util/AnalyticsHelper;->setForegroundModuleId(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mPurchaseManager:Lmiui/resourcebrowser/controller/online/PurchaseManager;

    iget-object v1, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResource:Lmiui/resourcebrowser/model/Resource;

    invoke-virtual {v1}, Lmiui/resourcebrowser/model/Resource;->getProductId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    sget-object v3, Lmiui/resourcebrowser/controller/online/PurchaseManager$ProductType;->SINGLE:Lmiui/resourcebrowser/controller/online/PurchaseManager$ProductType;

    invoke-virtual {v0, v1, v2, v3}, Lmiui/resourcebrowser/controller/online/PurchaseManager;->purchase(Ljava/lang/String;Lmiui/resourcebrowser/ResourceContext;Lmiui/resourcebrowser/controller/online/PurchaseManager$ProductType;)V

    .line 506
    return-void
.end method

.method public onCommentEventPerformed()V
    .locals 0

    .prologue
    .line 546
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 573
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 598
    return-void
.end method

.method public onDownloadEventPerformed()V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0}, Lmiui/resourcebrowser/view/ResourceOperationHandler;->downloadResource()V

    .line 529
    return-void
.end method

.method public onExchangeEventPerformed()V
    .locals 0

    .prologue
    .line 510
    return-void
.end method

.method public onFavoriteEventPerformed()V
    .locals 0

    .prologue
    .line 550
    return-void
.end method

.method public onImportFailed(Lmiui/resourcebrowser/model/Resource;)V
    .locals 0
    .param p1, "resource"    # Lmiui/resourcebrowser/model/Resource;

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lmiui/resourcebrowser/view/ResourceOperationHandler;->updateOperViewStatus(Lmiui/resourcebrowser/model/Resource;)V

    .line 632
    return-void
.end method

.method public onImportProgressUpdated(Lmiui/resourcebrowser/model/Resource;II)V
    .locals 0
    .param p1, "resource"    # Lmiui/resourcebrowser/model/Resource;
    .param p2, "downloadBytes"    # I
    .param p3, "totalBytes"    # I

    .prologue
    .line 636
    return-void
.end method

.method public onImportStart(Lmiui/resourcebrowser/model/Resource;)V
    .locals 2
    .param p1, "resource"    # Lmiui/resourcebrowser/model/Resource;

    .prologue
    .line 614
    invoke-virtual {p1}, Lmiui/resourcebrowser/model/Resource;->getAssemblyId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmiui/resourcebrowser/model/Resource;->getAssemblyId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResource:Lmiui/resourcebrowser/model/Resource;

    invoke-virtual {v1}, Lmiui/resourcebrowser/model/Resource;->getAssemblyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/resourcebrowser/view/ResourceOperationHandler$3;

    invoke-direct {v1, p0}, Lmiui/resourcebrowser/view/ResourceOperationHandler$3;-><init>(Lmiui/resourcebrowser/view/ResourceOperationHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 622
    :cond_0
    return-void
.end method

.method public onImportSuccessful(Lmiui/resourcebrowser/model/Resource;)V
    .locals 0
    .param p1, "resource"    # Lmiui/resourcebrowser/model/Resource;

    .prologue
    .line 626
    invoke-direct {p0, p1}, Lmiui/resourcebrowser/view/ResourceOperationHandler;->updateOperViewStatus(Lmiui/resourcebrowser/model/Resource;)V

    .line 627
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mImportHandler:Lmiui/resourcebrowser/ResourceImportHandler;

    invoke-virtual {v0}, Lmiui/resourcebrowser/ResourceImportHandler;->unregisterImportReceiver()V

    .line 589
    invoke-static {}, Lmiui/resourcebrowser/AppInnerContext;->getInstance()Lmiui/resourcebrowser/AppInnerContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/resourcebrowser/AppInnerContext;->getResourceDownloadManager()Lmiui/resourcebrowser/ResourceDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/resourcebrowser/ResourceDownloadManager;->removeResourceDownloadListener(Lmiui/resourcebrowser/ResourceDownloadManager$ResourceDownloadListener;)V

    .line 590
    return-void
.end method

.method public onPickEventPerformed()V
    .locals 5

    .prologue
    .line 514
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 515
    .local v2, "resultIntent":Landroid/content/Intent;
    iget-object v3, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResResolver:Lmiui/resourcebrowser/model/ResourceResolver;

    invoke-virtual {v3}, Lmiui/resourcebrowser/model/ResourceResolver;->getContentPath()Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, "localPath":Ljava/lang/String;
    const-string v3, "RESPONSE_PICKED_RESOURCE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    const-string v3, "RESPONSE_TRACK_ID"

    iget-object v4, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    invoke-virtual {v4}, Lmiui/resourcebrowser/ResourceContext;->getTrackId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    iget-object v3, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    invoke-virtual {v3}, Lmiui/resourcebrowser/ResourceContext;->getResourceFormat()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 519
    const-string v3, "android.intent.extra.ringtone.PICKED_URI"

    invoke-static {v1}, Lmiui/resourcebrowser/util/Utils;->getUriByPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 521
    :cond_0
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 522
    .local v0, "activity":Landroid/app/Activity;
    const/4 v3, -0x1

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 523
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 524
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 581
    invoke-static {}, Lmiui/resourcebrowser/AppInnerContext;->getInstance()Lmiui/resourcebrowser/AppInnerContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/resourcebrowser/AppInnerContext;->getResourceDownloadManager()Lmiui/resourcebrowser/ResourceDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/resourcebrowser/ResourceDownloadManager;->addResourceDownloadListener(Lmiui/resourcebrowser/ResourceDownloadManager$ResourceDownloadListener;)V

    .line 582
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mImportHandler:Lmiui/resourcebrowser/ResourceImportHandler;

    invoke-virtual {v0}, Lmiui/resourcebrowser/ResourceImportHandler;->registerImportReceiver()V

    .line 583
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mOperationView:Lmiui/resourcebrowser/view/ResourceOperationView;

    invoke-virtual {v0}, Lmiui/resourcebrowser/view/ResourceOperationView;->updateStatus()V

    .line 584
    return-void
.end method

.method public onShareEventPerformed()V
    .locals 0

    .prologue
    .line 542
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 577
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 594
    return-void
.end method

.method public onTrialEventPerformed()V
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    iput v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mCheckRightsCountDuringApplyEvent:I

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mIsTrialApply:Z

    .line 458
    const-string v0, "trial_download"

    invoke-static {v0}, Lmiui/resourcebrowser/util/AnalyticsHelper;->traceClickEvent(Ljava/lang/String;)V

    .line 459
    invoke-direct {p0}, Lmiui/resourcebrowser/view/ResourceOperationHandler;->checkTrialLoginStatus()V

    .line 460
    return-void
.end method

.method public onUpdateEventPerformed()V
    .locals 0

    .prologue
    .line 533
    invoke-direct {p0}, Lmiui/resourcebrowser/view/ResourceOperationHandler;->downloadResource()V

    .line 534
    return-void
.end method

.method public onUpdateStatus()V
    .locals 0

    .prologue
    .line 538
    return-void
.end method

.method public resetResourceContext(Lmiui/resourcebrowser/ResourceContext;Lmiui/resourcebrowser/controller/ResourceController;)V
    .locals 2
    .param p1, "resContext"    # Lmiui/resourcebrowser/ResourceContext;
    .param p2, "resController"    # Lmiui/resourcebrowser/controller/ResourceController;

    .prologue
    .line 149
    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    if-eq p1, v0, :cond_0

    .line 150
    iput-object p1, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    .line 151
    new-instance v0, Lmiui/resourcebrowser/controller/online/DrmService;

    iget-object v1, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    invoke-direct {v0, v1}, Lmiui/resourcebrowser/controller/online/DrmService;-><init>(Lmiui/resourcebrowser/ResourceContext;)V

    iput-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mService:Lmiui/resourcebrowser/controller/online/DrmService;

    .line 152
    new-instance v0, Lmiui/resourcebrowser/controller/online/PurchaseManager;

    iget-object v1, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/resourcebrowser/controller/online/PurchaseManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mPurchaseManager:Lmiui/resourcebrowser/controller/online/PurchaseManager;

    .line 153
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mPurchaseManager:Lmiui/resourcebrowser/controller/online/PurchaseManager;

    iget-object v1, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mPurchaseListener:Lmiui/resourcebrowser/controller/online/PurchaseManager$PurchaseListener;

    invoke-virtual {v0, v1}, Lmiui/resourcebrowser/controller/online/PurchaseManager;->setPurchaseListener(Lmiui/resourcebrowser/controller/online/PurchaseManager$PurchaseListener;)V

    .line 154
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mService:Lmiui/resourcebrowser/controller/online/DrmService;

    invoke-virtual {p0}, Lmiui/resourcebrowser/view/ResourceOperationHandler;->getWhiteList()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/resourcebrowser/controller/online/DrmService;->setWhiteList(Ljava/util/Set;)V

    .line 156
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResController:Lmiui/resourcebrowser/controller/ResourceController;

    if-eq p2, v0, :cond_1

    .line 157
    iput-object p2, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResController:Lmiui/resourcebrowser/controller/ResourceController;

    .line 159
    :cond_1
    return-void
.end method

.method public setExchangeState(Z)V
    .locals 0
    .param p1, "exchange"    # Z

    .prologue
    .line 190
    iput-boolean p1, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mExchangeState:Z

    .line 191
    return-void
.end method

.method public setResource(Lmiui/resourcebrowser/model/Resource;)V
    .locals 3
    .param p1, "resource"    # Lmiui/resourcebrowser/model/Resource;

    .prologue
    .line 179
    iput-object p1, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResource:Lmiui/resourcebrowser/model/Resource;

    .line 180
    new-instance v0, Lmiui/resourcebrowser/model/ResourceResolver;

    iget-object v1, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResource:Lmiui/resourcebrowser/model/Resource;

    iget-object v2, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    invoke-direct {v0, v1, v2}, Lmiui/resourcebrowser/model/ResourceResolver;-><init>(Lmiui/resourcebrowser/model/Resource;Lmiui/resourcebrowser/ResourceContext;)V

    iput-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mResResolver:Lmiui/resourcebrowser/model/ResourceResolver;

    .line 181
    invoke-direct {p0}, Lmiui/resourcebrowser/view/ResourceOperationHandler;->reset()V

    .line 182
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mOperationView:Lmiui/resourcebrowser/view/ResourceOperationView;

    invoke-virtual {v0}, Lmiui/resourcebrowser/view/ResourceOperationView;->updateStatus()V

    .line 183
    return-void
.end method

.method public supportExtraOperation()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public updateLoadingState(ILjava/lang/String;)V
    .locals 1
    .param p1, "delay"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mLoadingInfo:Lmiui/resourcebrowser/view/ResourceOperationHandler$LoadingStateInfo;

    iput p1, v0, Lmiui/resourcebrowser/view/ResourceOperationHandler$LoadingStateInfo;->delayTime:I

    .line 266
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mLoadingInfo:Lmiui/resourcebrowser/view/ResourceOperationHandler$LoadingStateInfo;

    iput-object p2, v0, Lmiui/resourcebrowser/view/ResourceOperationHandler$LoadingStateInfo;->title:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lmiui/resourcebrowser/view/ResourceOperationHandler;->mOperationView:Lmiui/resourcebrowser/view/ResourceOperationView;

    invoke-virtual {v0}, Lmiui/resourcebrowser/view/ResourceOperationView;->updateStatus()V

    .line 268
    return-void
.end method
