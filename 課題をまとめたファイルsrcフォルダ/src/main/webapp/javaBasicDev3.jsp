<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String num1 = request.getParameter("num1");
String num2 = request.getParameter("num2");
int num1Number = 0;
int num2Number = 0;
String operator = null;
String inputSpring = "数値を入力してください";
int answer = 0;
if (num1.isEmpty() || num1 == null || num2.isEmpty() || num2 == null) {

} else {
	String Operator = request.getParameter("operator");

	num1Number = Integer.parseInt(num1);
	num2Number = Integer.parseInt(num2);
	switch (Operator) {
	case "add":
		operator = "+";
		answer = num1Number + num2Number;
		break;
	case "sub":
		operator = "-";
		answer = num1Number - num2Number;
		break;
	case "mul":
		operator = "×";
		answer = num1Number * num2Number;
		break;
	case "div":
		operator = "÷";
		answer = num1Number / num2Number;
		break;
	}
	inputSpring = num1Number + operator + num2Number + "=" + answer;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3(発展)</title>
<style>
.number {
    width: 80px;
}
</style>
</head>
<body>

  <h1>Java基礎 - 演習問題3(発展)</h1>
  <h2>四則演算</h2>

  <p>
    <!-- メッセージの表示  --> <%
 if (num1.isEmpty() && num2.isEmpty()) {
 	out.println("数値が両方とも未入力です");
 } else if (num1.isEmpty() || num2.isEmpty()) {
 	out.println("数値を入力してください");
 } else {
 	out.println(inputSpring);

 }
 %>
  </p>

  <form action="javaBasicDev3.jsp" method="post">
    <input type="number" min="1" max="999999" class="number" name="num1">
    <select name="operator">
      <option value="add">＋</option>
      <option value="sub">ー</option>
      <option value="mul">×</option>
      <option value="div">÷</option>
    </select> <input type="number" min="1" max="999999" class="number"
      name="num2">
    <button type="submit">計算</button>

  </form>
</body>
</html>