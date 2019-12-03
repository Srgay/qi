<%@ page import="java.sql.*" %>

<%
    String a="indexj";
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/dbase?useUnicode=true&characterEncoding=utf8&useSSL=false&serverTimezone=GMT%2B8","root","123456");
        Statement stat=con.createStatement();
        String str="select * from buyer";
        ResultSet i=stat.executeQuery(str);
        stat.close();
        con.close();
    }catch(Exception e){
        e.printStackTrace();
    }
%>

