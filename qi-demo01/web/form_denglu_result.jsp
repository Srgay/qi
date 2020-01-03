<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>form</title>
</head>

<body>
<%
    request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=utf-8");

    String uname=request.getParameter("uname");
    String upassword=request.getParameter("upassword");


%>


<%
    //与数据库建立连接
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/whm?useUnicode=true&characterEncoding=utf-8", "root", "123456");
    String sql="select uname,upassword from uuser where uname=?";
    PreparedStatement ps=conn.prepareStatement(sql);
    ps.setString(1, uname);
    ResultSet rs=ps.executeQuery();
//声明变量存放密码
    String dbpassword=null;
//out.print("rs.next()的值"+rs.next());
    if(rs.next()){

        dbpassword=rs.getString(2);
        //out.print(dbpassword);
        if(dbpassword.equals(upassword)){
            out.print("登录成功");


        }
        else{
            out.print("登录失败，密码不正确");
        }

    }else{
        out.print("用户不存在！");
    }

    ps.close();
    conn.close();
//设置cookie
    Cookie unameCookie=new Cookie("uname",uname);
    unameCookie.setMaxAge(600);
    response.addCookie(unameCookie);






%>
<a href="form_denglu_cookie.jsp">页面</a>
</body>
</html>