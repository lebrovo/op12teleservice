.class public Lcom/mediatek/op12/phone/Op12AccessibilitySettingsExt;
.super Lcom/mediatek/phone/ext/DefaultAccessibilitySettingsExt;
.source "Op12AccessibilitySettingsExt.java"


# static fields
.field private static final BUTTON_TTY_KEY:Ljava/lang/String; = "button_tty_mode_key"

.field private static final TAG:Ljava/lang/String; = "Op12AccessibilitySettingsExt"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0}, Lcom/mediatek/phone/ext/DefaultAccessibilitySettingsExt;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mediatek/op12/phone/Op12AccessibilitySettingsExt;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public handleCallStateChanged(Landroid/app/Fragment;III)V
    .locals 9
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "state"    # I
    .param p3, "resEntries"    # I
    .param p4, "resEntryValues"    # I

    .line 26
    const-string v0, "Op12AccessibilitySettingsExt"

    const-string v1, "handleCallStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    move-object v1, p1

    check-cast v1, Lcom/android/phone/settings/AccessibilitySettingsFragment;

    .line 28
    invoke-virtual {v1}, Lcom/android/phone/settings/AccessibilitySettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 29
    .local v1, "prefSet":Landroid/preference/PreferenceScreen;
    nop

    .line 30
    const-string v2, "button_tty_mode_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/settings/TtyModeListPreference;

    .line 32
    .local v2, "buttonTty":Lcom/android/phone/settings/TtyModeListPreference;
    invoke-virtual {p1}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 33
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "strEntries":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 35
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, "strEntryValues":[Ljava/lang/CharSequence;
    array-length v5, v3

    array-length v6, v4

    if-eq v5, v6, :cond_0

    .line 38
    const-string v5, "Resource entry count mismatch."

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void

    .line 42
    :cond_0
    invoke-virtual {v2}, Lcom/android/phone/settings/TtyModeListPreference;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p2, :cond_2

    .line 43
    const-string v5, "Will set new List values without TTY OFF"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 46
    .local v0, "entries":[Ljava/lang/CharSequence;
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [Ljava/lang/CharSequence;

    .line 48
    .local v5, "entriesValues":[Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_1

    .line 49
    add-int/lit8 v7, v6, -0x1

    aget-object v8, v3, v6

    aput-object v8, v0, v7

    .line 50
    add-int/lit8 v7, v6, -0x1

    aget-object v8, v4, v6

    aput-object v8, v5, v7

    .line 48
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 53
    .end local v6    # "i":I
    :cond_1
    invoke-virtual {v2, v0}, Lcom/android/phone/settings/TtyModeListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {v2, v5}, Lcom/android/phone/settings/TtyModeListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .end local v0    # "entries":[Ljava/lang/CharSequence;
    .end local v5    # "entriesValues":[Ljava/lang/CharSequence;
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {v2}, Lcom/android/phone/settings/TtyModeListPreference;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez p2, :cond_3

    .line 56
    const-string v5, "Will set new List values with TTY OFF"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {v2, v3}, Lcom/android/phone/settings/TtyModeListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v2, v4}, Lcom/android/phone/settings/TtyModeListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 55
    :cond_3
    :goto_1
    nop

    .line 61
    :goto_2
    return-void
.end method
