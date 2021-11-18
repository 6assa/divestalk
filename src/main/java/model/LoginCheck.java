package model;

public class LoginCheck {
//FIXME メールアドレスとパスワード
private final String SAMPLE_MAIL="example@Dmail.com";
private final String SAMPLE_PASSWORD="example";

public boolean check(String mailAddress,String password) {
	
	if(!(mailAddress.equals(SAMPLE_MAIL))||!(password.equals(SAMPLE_PASSWORD))) {
		//メールアドレスまたはパスワードが異なる場合
		return false;
	}
	
	
	return true;
}

}
