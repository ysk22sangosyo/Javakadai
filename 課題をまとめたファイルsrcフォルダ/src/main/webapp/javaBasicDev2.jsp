<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
    // １月２月３月の文字列を配列に入れる
   
 
    String[] month={"１月","２月","３月"};

    // 食品と食料の文字列を配列に入れる
   
    String[] productClass={"食品","飲料"};

//左の[]は食品、食料の要素数、右は月
int[][] amount;
amount = new int[2][11];
amount[0][0]=352000; //１月の食品の売り上げ
amount[0][1]=442000; //２月の食品の売り上げ
amount[0][2]=520000; //３月の食品の売り上げ
amount[1][0]=278000; //１月の飲料の売り上げ
amount[1][1]=342600; //２月の飲料の売り上げ
amount[1][2]=380500; //３月の飲料の売り上げ
    
   //合計の文字列表示のための変数
    String sumTitle ="合計";
    // 月ごとの合計金額
  int sumMonthAmount[] ={amount[0][0]+amount[1][0],amount[0][1]+amount[1][1],amount[0][2]+amount[1][2]};
    // 商品分類ごとの合計金額
  int[] sumProductAmount={amount[0][0]+amount[0][1]+amount[0][2],amount[1][0]+amount[1][1]+amount[1][2]};
   
  //総合計金額
int total=sumProductAmount[0]+sumProductAmount[1];
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題2</title>
<style>
table {
  border-collapse: collapse;
}

table th, table td {
  border: solid 1px black;
}
</style>

</head>
<body>
 
  <h1>Java基礎 - 演習問題2(発展)</h1>
  <h2>売上一覧</h2>
  <table>
    <tr>
      <th></th>
      <th><%out.println(month[0]);%></th>
      <th><%out.println(month[1]);%></th>
      <th><%out.println(month[2]);%></th>
      <th><%out.println(sumTitle);%></th>
    </tr>
    <tr>
      <td><%out.println(productClass[0]);%></td>
      <td><%out.println(amount[0][0]);%></td>
      <td><%out.println(amount[0][1]);%></td>
      <td><%out.println(amount[0][2]);%></td>
      <td><%out.println(sumProductAmount[0]);%></td>
    </tr>
    <tr>
      <td><%out.println(productClass[1]);%></td>
      <td><%out.println(amount[1][0]);%></td>
      <td><%out.println(amount[1][1]);%></td>
      <td><%out.println(amount[1][2]);%></td>
      <td><%out.println(sumProductAmount[1]);%></td>
    </tr>
    <tr>
        <td> <%out.println(sumTitle);%></td>
        <td><%out.println(sumMonthAmount[0]);%></td>
        <td><%out.println(sumMonthAmount[1]);%></td>
        <td><%out.println(sumMonthAmount[2]);%></td>
        <td><%out.println(total);%></td>
      </tr>
   
  </table>