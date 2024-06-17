<%@page contentType="text/html; charset=UTF-8"%>

<%
String message = (String) request.getAttribute("message");
String userid = "";
String password = "";

%>
<%--
Cookie[] userCookie = request.getCookies(); //Cookieの取得

//Cookieがあるかの判定
if (userCookie != null) {
	for (int i = 0; i < userCookie.length; i++) {
		//CookieからユーザーIDの取得
		if (userCookie[i].getName().equals("userid")) {
	userid = userCookie[i].getValue();
		}
		//Cookieからパスワードの取得
		if (userCookie[i].getName().equals("password")) {
	password = userCookie[i].getValue();
		}
	}

}
--%>

<html>
<title>フリマサイトログイン画面</title>
<%--@include file="../common/header.jsp"--%>
<body>

	<table style="margin: auto; width: 850px">
		<tr>
			<td style="text-align: center; width: 100%; font-size: 24px;">フリマサイト</td>
			<td style="width: 80px">&nbsp;</td>
			<td style="width: 80px">&nbsp;</td>
		</tr>
	</table>
	<hr
		style="text-align: center; height: 2px; background-color: black; width: 950px">

	<div style="margin-bottom: 350px">
		<form action="<%=request.getContextPath()%>/login" method="post">
			<table style="margin: auto">
				<tr>
					<td style="width: 80px">ユーザーID</td>
					<td><input type="text" size="20" name="userid"
						value=<%=userid%>></input></td>
				</tr>
				<tr>
					<td style="width: 100px">パスワード</td>
					<td><input type="password" size="20" name="password"
						value=<%=password%>></input></td>
				</tr>
				<br>
				<br>
				<tr>
					<td colspan=2 style="text-align: center"><input type="submit"
						value="ログイン"></td>
				</tr>
				<%
				if (message == null) {
					message = "";
				%>
				<%
				} else {
				%>
				<tr>
					<p style="text-align: center"><%=message%></p>
				</tr>
				<%
				}
				%>
			</table>
		</form>
		<br> <br>
		<table style="margin: auto;">
			<tr>
				<td style="width: 100px"><a
					href="<%=request.getContextPath()%>/MemberRegistration.jsp">新規会員登録</a>
				</td>
			</tr>
		</table>

	</div>
	<%--@include file="../common/footer.jsp"--%>
	</table>
</body>
</html>