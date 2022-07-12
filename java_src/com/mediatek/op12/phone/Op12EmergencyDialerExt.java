package com.mediatek.op12.phone;

import android.content.Context;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import com.mediatek.internal.telephony.IMtkTelephonyEx;
import com.mediatek.phone.ext.DefaultEmergencyDialerExt;

public class Op12EmergencyDialerExt extends DefaultEmergencyDialerExt {
    public static final int EXIT_ECM_DIALOG = 2;
    private static final String TAG = "Op12EmergencyDialerExt";
    private Context mContext;

    public Op12EmergencyDialerExt(Context context) {
        this.mContext = context;
    }

    public String getDialogText(Object phoneObj, int dialogType, long millisUntilFinished) {
        Log.d(TAG, "getDialogText");
        String dialogMsg = null;
        int minutes = (int) (millisUntilFinished / 60000);
        String time = String.format("%d:%02d", Integer.valueOf(minutes), Long.valueOf((millisUntilFinished % 60000) / 1000));
        IMtkTelephonyEx iTelEx = IMtkTelephonyEx.Stub.asInterface(ServiceManager.getService("phoneEx"));
        if (iTelEx != null) {
            try {
                boolean ecc_ims = iTelEx.getIsLastEccIms();
                Log.d(TAG, "Last ECC call on IMS:" + ecc_ims);
                if (ecc_ims) {
                    if (dialogType != 2) {
                        dialogMsg = null;
                    } else {
                        dialogMsg = String.format(this.mContext.getResources().getQuantityText(R.plurals.alert_dialog_exit_ecm, minutes).toString(), time);
                    }
                }
            } catch (RemoteException e) {
                Log.e(TAG, "RemoteException getIsLastEccIms()");
            }
        }
        Log.d(TAG, "ECBM dialogMsg:" + dialogMsg);
        return dialogMsg;
    }
}
