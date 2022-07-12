package com.mediatek.op12.phone;

import android.content.Context;
import android.util.Log;
import com.mediatek.phone.ext.IAccessibilitySettingsExt;
import com.mediatek.phone.ext.ICallFeaturesSettingExt;
import com.mediatek.phone.ext.IEmergencyDialerExt;
import com.mediatek.phone.ext.ISCBMHelperExt;
import com.mediatek.phone.ext.OpPhoneCustomizationFactoryBase;

public class Op12PhoneCustomizationFactory extends OpPhoneCustomizationFactoryBase {
    private Context mContext;

    public Op12PhoneCustomizationFactory(Context context) {
        this.mContext = context;
    }

    public IAccessibilitySettingsExt makeAccessibilitySettingsExt() {
        return new Op12AccessibilitySettingsExt(this.mContext);
    }

    public IEmergencyDialerExt makeEmergencyDialerExt() {
        Log.i("Op12EmergencyDialerExt", "makeEmergencyDialerExt");
        return new Op12EmergencyDialerExt(this.mContext);
    }

    public ICallFeaturesSettingExt makeCallFeaturesSettingExt() {
        Log.i("Op12PhoneCustomizationFactory: ", "Op12CallFeaturesSettingExt");
        return new Op12CallFeaturesSettingExt(this.mContext);
    }

    public ISCBMHelperExt makeSCBMHelperExt() {
        Log.i("OP12PhoneCustomizationFactory", "makeSCBMHelperExt");
        return new Op12SCBMHelperExt(this.mContext);
    }
}
