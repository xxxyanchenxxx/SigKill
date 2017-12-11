package demo;

import android.app.Application;
import android.content.pm.PackageManager;
import android.util.Log;

import com.yc.pm.SignatureKill;

/**
 * Created by yanchen on 17-12-11.
 */

public class App extends Application {

    @Override
    public void onCreate() {
        super.onCreate();
        try {
            Log.e("xxxxxx", "my real signature:" + getPackageManager().getPackageInfo(getPackageName(),
                    PackageManager.GET_SIGNATURES).signatures[0].hashCode());
        } catch (Exception e) {
            e.printStackTrace();
        }
        SignatureKill.kill();
    }
}
