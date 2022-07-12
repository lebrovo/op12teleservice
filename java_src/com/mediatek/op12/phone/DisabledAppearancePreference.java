package com.mediatek.op12.phone;

import android.content.Context;
import android.preference.CheckBoxPreference;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

public class DisabledAppearancePreference extends CheckBoxPreference {
    protected boolean mEnabledAppearance = false;

    public DisabledAppearancePreference(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    /* access modifiers changed from: protected */
    public void onBindView(View view) {
        super.onBindView(view);
        enableView(view, this.mEnabledAppearance);
    }

    /* access modifiers changed from: protected */
    public void enableView(View view, boolean enabled) {
        view.setEnabled(enabled);
        if (view instanceof ViewGroup) {
            ViewGroup grp = (ViewGroup) view;
            for (int index = 0; index < grp.getChildCount(); index++) {
                enableView(grp.getChildAt(index), enabled);
            }
        }
    }

    public void setEnabledAppearance(boolean enabled) {
        this.mEnabledAppearance = enabled;
        notifyChanged();
    }
}
