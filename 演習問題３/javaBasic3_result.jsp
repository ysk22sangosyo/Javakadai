<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%--
String name = request.getParameter("name");

    // ※必要な処理を実装してください

    // 入力値取得

    // ロボットからの返信用メッセージ作成

  


    if(name.isEmpty()){
        System.out.println("こんにちは、名無しさん！");
    }
    else if(name=="ロボット"){
        System.out.println("こんにちは、"+name+"さん！私と同じ名前ですね！");

    }
    else{
        System.out.println("こんにちは、"+name+"さん！");
    }

--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3</title>
</head>
<body>
  <h1>Java基礎 - 演習問題3</h1>

  <h2>ロボットからの返信</h2>
  <div>
    <!-- 必要に応じて処理を変更してください  -->

     <p>    
     <%
     request.setCharacterEncoding("UTF-8");
     
String name = request.getParameter("name");

    // ※必要な処理を実装してください

    // 入力値取得

    // ロボットからの返信用メッセージ作成

    if(name.isEmpty()){
        out.println("こんにちは、名無しさん！");
    }
    else if(name=="ロボット"){
        out.println("こんにちは、"+name+"さん！私と同じ名前ですね！");

    }
    else{
        out.println("こんにちは、"+name+"さん！");
    }

%>
        </p>
<p><% 
String age = request.getParameter("age");
	    
if(age.isEmpty()||age==null){
	    	 out.println("0");
} else {
    int ageNumber = Integer.parseInt(age);
	if(ageNumber==20){
	    out.println("\""+"私と同い年なんですね！"+"\"");
	}
	else if(ageNumber>20){
	    out.println("\""+"私よりも"+(ageNumber-20)+"歳"+"\""+"年上ですね。"+"\"");
	}
	else{
	    out.println("\""+"私よりも"+(20-ageNumber)+"歳"+"\""+"年下ですね。"+"\"");
	}
}
%></p>


    <p><% String bloodType = request.getParameter("bloodType");

        switch(bloodType){
            case "typeA":
            out.println("私もA型です！");
            break;
            case "typeB":
            out.println("B型の人と話すのは初めてです。");
            break;
            case"typeAB":
            out.println("私の母がAB型です。");
            break;
            case"typeO":
            out.println("私の父がO型です");
            break;
        }%></p>
  </div>
  <a href="javaBasic3_input.jsp">戻る</a>
</body>
</html>