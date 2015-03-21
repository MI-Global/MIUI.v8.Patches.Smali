.class public Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;
.super Lmiui/resourcebrowser/view/RecommendItemBaseFactory;
.source "RecommendItemMultipleButtonFactory.java"


# instance fields
.field protected mCornerIconView:Lmiui/resourcebrowser/view/CornerIconView;

.field private mImageDecoder:Lmiui/resourcebrowser/util/ImageDecoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/resourcebrowser/ResourceContext;Lmiui/resourcebrowser/util/ImageDecoder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resContext"    # Lmiui/resourcebrowser/ResourceContext;
    .param p3, "imageDecoder"    # Lmiui/resourcebrowser/util/ImageDecoder;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lmiui/resourcebrowser/view/RecommendItemBaseFactory;-><init>(Landroid/content/Context;Lmiui/resourcebrowser/ResourceContext;)V

    .line 32
    iput-object p3, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mImageDecoder:Lmiui/resourcebrowser/util/ImageDecoder;

    .line 33
    return-void
.end method

.method private setLocalCornelIconState()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mCornerIconView:Lmiui/resourcebrowser/view/CornerIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmiui/resourcebrowser/view/CornerIconView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/resourcebrowser/util/ResourceHelper;->writeLocalResUpdateInfo(Landroid/content/Context;IZ)V

    .line 92
    return-void
.end method


# virtual methods
.method protected createLocalCornerIconCount(Landroid/view/View;)V
    .locals 6
    .param p1, "localIconView"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v3, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiui/resourcebrowser/util/ResourceHelper;->readLocalResUpdateInfo(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v1

    .line 77
    .local v1, "updateInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 78
    .local v0, "canCornerIconViewShown":Z
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 79
    .local v2, "updateLocalResCnt":I
    if-lez v2, :cond_0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    new-instance v3, Lmiui/resourcebrowser/view/CornerIconView;

    iget-object v4, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p1}, Lmiui/resourcebrowser/view/CornerIconView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v3, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mCornerIconView:Lmiui/resourcebrowser/view/CornerIconView;

    .line 83
    iget-object v3, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mCornerIconView:Lmiui/resourcebrowser/view/CornerIconView;

    const v4, 0x7f020059

    invoke-virtual {v3, v4}, Lmiui/resourcebrowser/view/CornerIconView;->setBackgroundResource(I)V

    .line 84
    iget-object v3, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mCornerIconView:Lmiui/resourcebrowser/view/CornerIconView;

    invoke-virtual {v3, v2}, Lmiui/resourcebrowser/view/CornerIconView;->setCornerIconNumber(I)V

    .line 85
    iget-object v3, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mCornerIconView:Lmiui/resourcebrowser/view/CornerIconView;

    iget-object v4, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lmiui/resourcebrowser/view/CornerIconView;->setTextColor(I)V

    .line 86
    iget-object v3, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mCornerIconView:Lmiui/resourcebrowser/view/CornerIconView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmiui/resourcebrowser/view/CornerIconView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected getRecommendItemView(Lmiui/resourcebrowser/model/RecommendItem;I)Landroid/view/View;
    .locals 7
    .param p1, "item"    # Lmiui/resourcebrowser/model/RecommendItem;
    .param p2, "showType"    # I

    .prologue
    .line 37
    iget-object v4, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030030

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 39
    .local v2, "rootView":Landroid/view/View;
    const v4, 0x7f0e008a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/resourcebrowser/view/AsyncDecodeImageView;

    .line 40
    .local v1, "imageView":Lmiui/resourcebrowser/view/AsyncDecodeImageView;
    iget-object v4, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mImageDecoder:Lmiui/resourcebrowser/util/ImageDecoder;

    invoke-virtual {v1, v4}, Lmiui/resourcebrowser/view/AsyncDecodeImageView;->setDecoder(Lmiui/resourcebrowser/util/ImageDecoder;)V

    .line 41
    new-instance v0, Lmiui/resourcebrowser/util/ImageJobInfo;

    invoke-virtual {p1}, Lmiui/resourcebrowser/model/RecommendItem;->getLocalThumbnail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lmiui/resourcebrowser/model/RecommendItem;->getOnlineThumbnail()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lmiui/resourcebrowser/util/ImageJobInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .local v0, "decodeInfo":Lmiui/resourcebrowser/util/ImageJobInfo;
    invoke-virtual {v1, v0}, Lmiui/resourcebrowser/view/AsyncDecodeImageView;->setDecodeInfo(Lmiui/resourcebrowser/util/ImageJobInfo;)V

    .line 43
    const v4, 0x7f0e008b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

######################
#     return-object v2
######################
   move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 44
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {p1}, Lmiui/resourcebrowser/model/RecommendItem;->getTitle()Ljava/lang/String;

    move-result-object v4

#    invoke-static {v4}, Lmiui/resourcebrowser/view/TranslateTabs;->getTranslatedTab(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4}, Lcom/bormental/thememanager/TranslateTabs;->getTranslatedTab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v4, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    invoke-virtual {v4}, Lmiui/resourcebrowser/ResourceContext;->getResourceFormat()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {p1}, Lmiui/resourcebrowser/model/RecommendItem;->getItemType()Lmiui/resourcebrowser/model/RecommendItem$RecommendType;

    move-result-object v4

    sget-object v5, Lmiui/resourcebrowser/model/RecommendItem$RecommendType;->LOCAL:Lmiui/resourcebrowser/model/RecommendItem$RecommendType;

    if-ne v4, v5, :cond_0

    .line 48
    invoke-virtual {p0, v1}, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->createLocalCornerIconCount(Landroid/view/View;)V

    .line 51
    :cond_0
    return-object v2
.end method

.method protected openForwardActivity(Landroid/view/View;Lmiui/resourcebrowser/model/RecommendItem;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lmiui/resourcebrowser/model/RecommendItem;

    .prologue
    .line 56
    iget-object v4, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mCornerIconView:Lmiui/resourcebrowser/view/CornerIconView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    invoke-virtual {v4}, Lmiui/resourcebrowser/ResourceContext;->getResourceFormat()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {p2}, Lmiui/resourcebrowser/model/RecommendItem;->getItemType()Lmiui/resourcebrowser/model/RecommendItem$RecommendType;

    move-result-object v4

    sget-object v5, Lmiui/resourcebrowser/model/RecommendItem$RecommendType;->LOCAL:Lmiui/resourcebrowser/model/RecommendItem$RecommendType;

    if-ne v4, v5, :cond_0

    .line 58
    invoke-direct {p0}, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->setLocalCornelIconState()V

    .line 61
    :cond_0
    new-instance v4, Lmiui/resourcebrowser/model/RecommendItemResolver;

    iget-object v5, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    invoke-direct {v4, p2, v5}, Lmiui/resourcebrowser/model/RecommendItemResolver;-><init>(Lmiui/resourcebrowser/model/RecommendItem;Lmiui/resourcebrowser/ResourceContext;)V

    invoke-virtual {v4}, Lmiui/resourcebrowser/model/RecommendItemResolver;->getForwardIntent()Landroid/content/Intent;

    move-result-object v1

    .line 62
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lmiui/resourcebrowser/view/RecommendItemMultipleButtonFactory;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    invoke-virtual {v4}, Lmiui/resourcebrowser/ResourceContext;->getResourceStamp()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "resourceStamp":Ljava/lang/String;
    invoke-virtual {p2}, Lmiui/resourcebrowser/model/RecommendItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "title":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "title"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v4, "category"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v4, "jump_to_same_designer_page"

    invoke-static {v4, v0}, Lmiui/resourcebrowser/util/AnalyticsHelper;->traceClickEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 68
    if-eqz v1, :cond_1

    .line 69
    invoke-static {p1, p2}, Lmiui/resourcebrowser/util/AnalyticsHelper;->initAnalyticsInfoBeforeStartActivityFromBanner(Landroid/view/View;Lmiui/resourcebrowser/model/RecommendItem;)V

    .line 71
    :cond_1
    invoke-super {p0, p1, p2}, Lmiui/resourcebrowser/view/RecommendItemBaseFactory;->openForwardActivity(Landroid/view/View;Lmiui/resourcebrowser/model/RecommendItem;)V

    .line 72
    return-void
.end method
