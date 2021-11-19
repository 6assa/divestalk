package model;

public class Dial {
	Uri uri = Uri.parse(“tel:1111111111”); //ここに、call.jspで入力された電話番号を代入するようにしたい
	Intent i = new Intent(Intent.ACTION_CALL,uri);//android.permission.CALL_PHONEをeclipseで設定すれば動くらしい
	startActivity(i);
}
