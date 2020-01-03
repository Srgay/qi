<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <title>登录</title>
</head>
<body>
<%
    String uname=null;
    Cookie[] unameCookies=request.getCookies();
    for(int i=0;i<unameCookies.length;i++){
        if(unameCookies[i].getName().equals("uname")){
            uname=unameCookies[i].getValue();
            break;
        }
    }
%>
<h1><%=uname %>在线</h1>
</form>
</div>
</body>
</html>