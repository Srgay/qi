package baokaoservlet;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet("/kaoyanbang/neiqian/choosecity")
public class choosecity extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String a = "";
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            // 加载MYSQL JDBC驱动程序
            String url = "jdbc:mysql://mysql57.rdsm41ng7hujbhs.rds.bj.baidubce.com:3306/kaoyan?useUnicode=true&characterEncoding=utf8&useSSL=false&serverTimezone=GMT%2B8";
            conn = (Connection) DriverManager.getConnection(url, "lxy", "lxy123456");
            Statement stat = (Statement) conn.createStatement();
            String sql = "select city from ordercity";
            ResultSet rs = stat.executeQuery(sql);
            JSONArray jsonarray = new JSONArray();
            while (rs.next()) {
                JSONObject jsonobj = new JSONObject();
                jsonobj.put("city", rs.getString("city"));

                jsonarray.add(jsonobj);
            }
            System.out.println(jsonarray);
            a = JSONArray.toJSONString(jsonarray);
            stat.close();
            conn.close();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        response.setContentType("application/json; charset=utf-8");
        response.getWriter().write(a);
    }
}
