.class public Lcom/mediatek/op12/phone/DisabledAppearancePreference;
.super Landroid/preference/CheckBoxPreference;
.source "DisabledAppearancePreference.java"


# instance fields
.field protected mEnabledAppearance:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/op12/phone/DisabledAppearancePreference;->mEnabledAppearance:Z

    .line 16
    return-void
.end method


# virtual methods
.method protected enableView(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 27
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 28
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 29
    .local v0, "grp":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/mediatek/op12/phone/DisabledAppearancePreference;->enableView(Landroid/view/View;Z)V

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    .end local v0    # "grp":Landroid/view/ViewGroup;
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 20
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 21
    iget-boolean v0, p0, Lcom/mediatek/op12/phone/DisabledAppearancePreference;->mEnabledAppearance:Z

    .line 22
    .local v0, "viewEnabled":Z
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/op12/phone/DisabledAppearancePreference;->enableView(Landroid/view/View;Z)V

    .line 23
    return-void
.end method

.method public setEnabledAppearance(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/mediatek/op12/phone/DisabledAppearancePreference;->mEnabledAppearance:Z

    .line 36
    invoke-virtual {p0}, Lcom/mediatek/op12/phone/DisabledAppearancePreference;->notifyChanged()V

    .line 37
    return-void
.end method
