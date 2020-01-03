<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <title>登录</title>
</head>
<body>
<div align="center">
    <img src="images/zua.png" width="300px" height="300px"><br>
    <form action="form_denglu_result.jsp" method="post">
        用户：<input type="text" name="uname"><br>
        密码：<input type="password" name="upassword"><br>
        <input type="submit" value="登录">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="form_register.jsp">注册</a>
    </form>
</div>
</body>
</html>