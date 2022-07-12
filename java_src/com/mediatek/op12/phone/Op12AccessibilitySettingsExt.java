package com.mediatek.op12.phone;

import android.app.Fragment;
import android.content.Context;
import android.util.Log;
import com.android.phone.settings.AccessibilitySettingsFragment;
import com.android.phone.settings.TtyModeListPreference;
import com.mediatek.phone.ext.DefaultAccessibilitySettingsExt;

public class Op12AccessibilitySettingsExt extends DefaultAccessibilitySettingsExt {
    private static final String BUTTON_TTY_KEY = "button_tty_mode_key";
    private static final String TAG = "Op12AccessibilitySettingsExt";
    private Context mContext;

    public Op12AccessibilitySettingsExt(Context context) {
        this.mContext = context;
    }

    public void handleCallStateChanged(Fragment fragment, int state, int resEntries, int resEntryValues) {
        Log.d(TAG, "handleCallStateChanged");
        TtyModeListPreference buttonTty = ((AccessibilitySettingsFragment) fragment).getPreferenceScreen().findPreference(BUTTON_TTY_KEY);
        CharSequence[] strEntries = fragment.getContext().getResources().getStringArray(resEntries);
        CharSequence[] strEntryValues = fragment.getContext().getResources().getStringArray(resEntryValues);
        if (strEntries.length != strEntryValues.length) {
            Log.e(TAG, "Resource entry count mismatch.");
        } else if (buttonTty.isEnabled() && state != 0) {
            Log.d(TAG, "Will set new List values without TTY OFF");
            CharSequence[] entries = new CharSequence[(strEntries.length - 1)];
            CharSequence[] entriesValues = new CharSequence[(strEntryValues.length - 1)];
            for (int i = 1; i < strEntries.length; i++) {
                entries[i - 1] = strEntries[i];
                entriesValues[i - 1] = strEntryValues[i];
            }
            buttonTty.setEntries(entries);
            buttonTty.setEntryValues(entriesValues);
        } else if (buttonTty.isEnabled() && state == 0) {
            Log.d(TAG, "Will set new List values with TTY OFF");
            buttonTty.setEntries(strEntries);
            buttonTty.setEntryValues(strEntryValues);
        }
    }
}
