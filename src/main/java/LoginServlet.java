
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.LoginCheck;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("index.html").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// リクエスト元からフォーム情報取得
		String email = request.getParameter("mailAddress");// メールアドレス
		String password = request.getParameter("password");// パスワード

		// エラーメッセージ
		StringBuilder errormsg = new StringBuilder();
		if (email == null || email.length() == 0) {
			// メールアドレス未入力
			errormsg.append("メールアドレスが入力されていません。");
		}
		if (password == null || password.length() == 0) {
			// パスワード未入力
			errormsg.append("<br>パスワードが入力されていません。");
		}
		// ログインチェック準備
		LoginCheck loginCheck = new LoginCheck();
		if (!(loginCheck.check(email, password))) {
			// ログイン試行失敗
			errormsg.append("メールアドレスまたはパスワードが正しくありません。");
		}
		if (errormsg.length() > 0) {
			// エラーメッセージがある場合
			request.setAttribute("errorMsg", errormsg.toString());
			request.getRequestDispatcher("index.html").forward(request, response);
		}

		// 成功時
		response.sendRedirect("main.jsp");
	}

}
