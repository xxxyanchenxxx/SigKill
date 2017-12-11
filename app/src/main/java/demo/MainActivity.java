package demo;

import android.content.pm.PackageManager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;

import com.yc.pm.R;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        try {
            Log.e("xxxxxx", "get my signature again:" + getPackageManager().getPackageInfo(getPackageName(),
                    PackageManager.GET_SIGNATURES).signatures[0].hashCode());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
