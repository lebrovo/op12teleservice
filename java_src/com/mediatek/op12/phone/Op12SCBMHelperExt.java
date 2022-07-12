package com.mediatek.op12.phone;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.android.internal.telephony.Phone;
import com.android.internal.telephony.PhoneFactory;
import com.mediatek.phone.ext.DefaultSCBMHelperExt;

public class Op12SCBMHelperExt extends DefaultSCBMHelperExt {
    private static final String TAG = "Op12SCBMHelperExt";
    Context mContext;
    private Phone phoneInScm;

    public Op12SCBMHelperExt(Context context) {
        this.mContext = context;
        Log.d(TAG, "OP12SCBMHelperExt created");
    }

    public void handleSCBMChanged(Context context, int phoneId, boolean isScmState) {
        this.phoneInScm = PhoneFactory.getPhone(phoneId);
        Log.d(TAG, "handleSCBMChanged. phoneId:" + phoneId);
        if (this.phoneInScm != null) {
            Log.d(TAG, "handleSCBMChanged. isScmState:" + isScmState);
            if (isScmState) {
                this.mContext.startForegroundService(new Intent(this.mContext, Op12SCBMService.class));
            } else {
                this.phoneInScm = null;
            }
        } else {
            Log.w(TAG, "phoneInScm is null.");
        }
    }

    public Phone getPhoneInScm() {
        return this.phoneInScm;
    }
}
