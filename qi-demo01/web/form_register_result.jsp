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
    String sex=request.getParameter("sex");
    String profession=request.getParameter("profession");
    String tel=request.getParameter("tel");
    String beizhu=request.getParameter("beizhu");
    String hobby0=null;
    String[] hobby=request.getParameterValues("hobby");


    for(int i=0;i<hobby.length;i++){
        hobby0=hobby0+";"+hobby[i];
    }

%>

<h2>欢迎<%=uname %></h2>
<h3>您的密码<%=upassword %></h3>
<h3>您的性别<%=sex %></h3>

<h3>您的专业<%=profession%></h3>
<h3>您的备注信息<%=beizhu %></h3>
<h3>您的联系电话有：<%=tel%></h3>
<h3>您的爱好有：<%=hobby0%></h3>


<%
    //与数据库建立连接
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/whm?useUnicode=true&characterEncoding=utf-8", "root", "123456");
    String sql="insert into uuser(uname,upassword,usex,hobby,profession,tel,beizhu)values(?,?,?,?,?,?,?)";
//String sql="insert into uuser(uname,upassword,tel)values(?,?,?)";
    PreparedStatement ps=conn.prepareStatement(sql);
    ps.setString(1, uname);
    ps.setString(2, upassword);
    ps.setString(3, sex);

    ps.setString(4, hobby0);
    ps.setString(5, profession);
    ps.setString(6, tel);
    ps.setString(7, beizhu);
    int i=ps.executeUpdate();
    out.print("有"+i+"行受影响");
    ps.close();
    conn.close();




%>
</body>
</html>