<%@ page import="util.ParamUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

  <!-- ※下記のコメントを参考に、必要に応じて処理を変更してください  -->
<%

    // 入力値を取得
  request.setCharacterEncoding("UTF-8");
  String product1Str = request.getParameter("product1");
  String product2Str = request.getParameter("product2");
  String amount1Str = request.getParameter("amount1");
  String amount2Str = request.getParameter("amount2");
  String btn = request.getParameter("btn");
  String rank = request.getParameter("rank");
 
    
  int amount1Int = 0;
  int amount2Int = 0;
  
  
    // 数値に変換
    if (!(ParamUtil.isNullOrEmpty(amount1Str))){
    	  amount1Int = Integer.parseInt(amount1Str);
    }
  if (!(ParamUtil.isNullOrEmpty(amount2Str))){
    	  amount2Int = Integer.parseInt(amount2Str);
    }
    // ポイントを定義
 double decimal=0;
    
    switch(rank){
    	case "1":
    	decimal =0.02;
    	break;
    	case "2":
    	decimal =0.03;
    	break;
    }
    
    
  
 // 数値に変換
   int point1  = 0;
   int point2  = 0;   

       
  
    // メソッドを呼んでポイントを取得
 if(rank.isEmpty()){
	point1 = ParamUtil.getPoint(amount1Int);
	point2 = ParamUtil.getPoint(amount2Int);
 }else{
	point1 = (int)ParamUtil.getPoint(amount1Int,decimal);
	point2 = (int)ParamUtil.getPoint(amount2Int,decimal);
 }

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題5(発展)</title>
<style>
.right {
  text-align: right;
}
</style>
</head>
<body>
  <h1>Java基礎 - 演習問題5(発展)</h1>

  <h2>計算結果</h2>

  <table border="1">
    <tr>
      <th>商品</th>
      <th>金額</th>
      <th>ポイント</th>
    </tr>
    <tr>
      <td><%=product1Str%></td>
      <td class="right"><%=amount1Str%></td>
      <td class="right"><%=point1%></td>
    </tr>
    <tr>
      <td><%=product2Str%></td>
      <td class="right"><%=amount2Str%></td>
      <td class="right"><%=point2%></td>
    </tr>
  </table>

  <a href="javaBasicDev5_input.jsp">戻る</a>
</body>
</html>