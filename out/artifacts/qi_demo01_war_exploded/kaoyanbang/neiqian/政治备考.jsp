<%@page import="java.sql.*" import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>考研政治备考</title>
<link href="css/yz.index.css" rel="stylesheet">
</head>
<body>
<%
List<String> list=new ArrayList<String>();
String[] arr=new String[36];

//try{

	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://mysql57.rdsm41ng7hujbhs.rds.bj.baidubce.com:3306/kaoyan?useUnicode=true&characterEncoding=utf8&useSSL=false&serverTimezone=GMT%2B8","lxy","lxy123456");
	Statement stat=con.createStatement();


	for(int i=1;i<25;i++){
		String str="SELECT title FROM article WHERE grade='"+i+"' ";
		ResultSet rs = stat.executeQuery(str);
		while(rs.next()){
			arr[i]=rs.getString(1);
		}
	}

stat.close();
con.close();
//}catch(Exception e){

//}

%>
<div class="w1000">
        <div class="zsLeft">
            <dl class="specialTitle" id="zhuanerTitle">
                <dt><strong><a href="政治备考.jsp" title="考研政治">政治</a></strong></dt>
                <dd>
                    <a href="数学备考.jsp" title="数学备考">数学备考</a></dd>
                <dd>
                    <a href="英语备考.jsp" title="英语备考">英语备考</a></dd>
                <dd>
                    <a href="专业课备考.jsp" title="专业课备考">专业课备考</a></dd>
            </dl>
        </div>
        <div class="zsRight">
            <div class="zyTitleBg">
               	 政治</div>
            <div class="zyFinalArea">
                <div class="zyFinalLeft">
                    <h2 class="zyheadline">
                        <!--part_28401--><li><a href="政治内容.html" title="2021考研:注意！复习政治前必看的八大问题！" target="_blank"><% out.print(arr[1]); %></a></li>

                    </h2>
                    <ul class="list zySubjectList f12 clear">
                        <!--part_28401--><li><a href="http://www.kaoyan.com/zhengzhi/jingyan/5e0d98a92e402.html" title="2021考研:政治备考那么难？掌握这六大方法，助你荣耀逆袭！" target="_blank"><% out.print(arr[2]); %></a></li>
<li><a href="http://www.kaoyan.com/zhengzhi/jingyan/5e0ae1bb4930e.html" title="<% out.print(arr[3]); %>" target="_blank"><% out.print(arr[3]); %></a></li>
<li><a href="http://www.kaoyan.com/zhengzhi/zhenti/5e005766940c9.html" title="2020年考研政治真题答案及解析(郑州新东方)" target="_blank"><% out.print(arr[4]); %></a></li>
<li><a href="http://www.kaoyan.com/zhengzhi/zhenti/5e0055ea31205.html" title="2020年考研政治试卷解析(长春新东方)" target="_blank"><% out.print(arr[5]); %></a></li>

                    </ul>
                    <p class="zycmdTitle">
                        推荐阅读</p>
                    <ul class="list">
                        <!--part_28401--><li><a href="http://www.kaoyan.com/zhengzhi/zhenti/5e0053f24f45a.html" title="2020年考研政治试卷整体评述(厦门新东方)" target="_blank"><% out.print(arr[6]); %></a></li>
<li><a href="http://www.kaoyan.com/zhengzhi/zhenti/5e0053aed5bb1.html" title="2020年考研政治真题选择题答案及解析(呼和浩特新东方)" target="_blank"><% out.print(arr[7]); %></a></li>
<li><a href="http://www.kaoyan.com/zhengzhi/zhenti/5dfed81449077.html" title="2020年考研政治试卷整体评述(吉林新东方)" target="_blank"><% out.print(arr[8]); %></a></li>
<li><a href="http://www.kaoyan.com/zhengzhi/zhenti/5dfed7c3188e9.html" title="2020年考研政治试卷整体评述(天津新东方)" target="_blank"><% out.print(arr[9]); %></a></li>

                    </ul>
                </div>

            </div>
            <div class="clear mb20">
                <div class="w390 fl">
                    <div class="bkbTt clear">
                        <strong class="bkbTitle">每日一练</strong> <span class="tabMore"><a href="lianxi/" target="_blank" rel="nofollow">更多</a></span>
                    </div>
                    <ul class="list">
                        <!--part_28402--><li><a href="http://xue.kaoyan.com/t/day/doday/41239" title="【每日一练】考研政治 近代史（2015.6.3）" target="_blank">【每日一练】考研政治 近代史（2015.6.3）</a></li>
<li><a href="http://www.kaoyan.com/zhengzhi/lianxi/54cedc3bb9aa6.html" title="【每日一练】考研政治 狂做1100题（2015.2.2）" target="_blank">【每日一练】考研政治 狂做1100题（2015.2.2）</a></li>
<li><a href="http://www.kaoyan.com/zhengzhi/lianxi/54cd95c1938a8.html" title="【每日一练】考研政治 狂做1100题（2015.2.1）" target="_blank">【每日一练】考研政治 狂做1100题（2015.2.1）</a></li>
<li><a href="http://www.kaoyan.com/zhengzhi/lianxi/54cc3e4710153.html" title="【每日一练】考研政治 狂做1100题（2015.1.31）" target="_blank">【每日一练】考研政治 狂做1100题（2015.1.31）</a></li>
<li><a href="http://www.kaoyan.com/zhengzhi/lianxi/54cae1a16f835.html" title="【每日一练】考研政治 狂做1100题（2015.1.30）" target="_blank">【每日一练】考研政治 狂做1100题（2015.1.30）</a></li>

                    </ul>
                </div>
                <div class="w390 fr">
                    <div class="bkbTt clear">
                        <strong class="bkbTitle">考研资料</strong> <span class="tabMore"><a href="zhenti/" target="_blank" rel="nofollow">更多</a></span>
                    </div>
                    <ul class="list">
                        <!--part_28403--><li><a href="http://www.kaoyan.com/zhengzhi/zhenti/5df9f51ebb995.html" title="2020年考研政治真题答案及解析汇总" target="_blank"><% out.print(arr[10]); %></a></li>
<li><a href="http://www.kaoyan.com/zhengzhi/zhenti/5e005766940c9.html" title="2020年考研政治真题答案及解析(郑州新东方)" target="_blank"><% out.print(arr[11]); %></a></li>
<li><a href="http://www.kaoyan.com/zhengzhi/zhenti/5e0055ea31205.html" title="2020年考研政治试卷解析(长春新东方)" target="_blank"><% out.print(arr[12]); %></a></li>
<li><a href="http://www.kaoyan.com/zhengzhi/zhenti/5e0053f24f45a.html" title="2020年考研政治试卷整体评述(厦门新东方)" target="_blank"><% out.print(arr[13]); %></a></li>
<li><a href="http://www.kaoyan.com/zhengzhi/zhenti/5e0053aed5bb1.html" title="2020年考研政治真题选择题答案及解析(呼和浩特新东方)" target="_blank"><% out.print(arr[14]); %></a></li>

                    </ul>
                </div>
            </div>
            <div class="clear mb20">
                <div class="w390 fl">
                    <div class="bkbTt clear">
                        <strong class="bkbTitle">复习经验</strong> <span class="tabMore"><a href="jingyan/" target="_blank" rel="nofollow">更多</a></span>
                    </div>
                    <ul class="list">
                        <!--part_28586--><li><a href="http://www.kaoyan.com/zhengzhi/jingyan/5e0d9ed336a3f.html" title="2021考研:注意！复习政治前必看的八大问题！" target="_blank"><% out.print(arr[15]); %></a></li>
<li><a href="http://www.kaoyan.com/zhengzhi/jingyan/5e0d98a92e402.html" title="2021考研:政治备考那么难？掌握这六大方法，助你荣耀逆袭！" target="_blank"><% out.print(arr[16]); %></a></li>
<li><a href="http://www.kaoyan.com/zhengzhi/jingyan/5e0ae1bb4930e.html" title="2021考研：政治寒假备考规划及作业" target="_blank"><% out.print(arr[17]); %></a></li>
<li><a href="http://www.kaoyan.com/zhengzhi/jingyan/5df98f8fefa3d.html" title="肖秀荣、徐涛、米鹏都说这些考点容易出题" target="_blank"><% out.print(arr[18]); %></a></li>
<li><a href="http://www.kaoyan.com/zhengzhi/jingyan/5df359142a1ec.html" title="考研政治\" 毛中特\"的六大文献以及二十一条"="" target="_blank"><% out.print(arr[19]); %></a></li>

                    </ul>
                </div>
                <div class="w390 fr">
                    <div class="bkbTt clear">
                        <strong class="bkbTitle">大纲解析</strong> <span class="tabMore"><a href="dagang/" target="_blank" rel="nofollow">更多</a></span>
                    </div>
                    <ul class="list">
                        <!--part_28587--><li><a href="http://www.kaoyan.com/zhengzhi/dagang/5d24515ba0991.html" title="2020考研政治大纲解析：思想道德修养与法律基础" target="_blank"><% out.print(arr[20]); %></a></li>
<li><a href="http://www.kaoyan.com/zhengzhi/dagang/5d244ab50ef9d.html" title="2020考研政治大纲史纲学科变动情况解析　" target="_blank"><% out.print(arr[21]); %>　</a></li>
<li><a href="http://www.kaoyan.com/zhengzhi/dagang/5d24493bb1a5e.html" title="2020考研政治大纲变动解析：毛中特" target="_blank"><% out.print(arr[22]); %></a></li>
<li><a href="http://www.kaoyan.com/zhengzhi/dagang/5d244891c2997.html" title="2020考研政治大纲马原变动解析及备考指南" target="_blank"><% out.print(arr[23]); %></a></li>
<li><a href="http://www.kaoyan.com/zhengzhi/dagang/5d2442372d916.html" title="20考研政治新大纲变动：听听名师怎么说！" target="_blank"><% out.print(arr[24]); %></a></li>

                    </ul>
                </div>
            </div>
            <div class="clear mb20">
                <div class="w390 fl">
                    <div class="bkbTt clear">
                        <strong class="bkbTitle">论坛精华</strong> <span class="tabMore"><a href="http://zhengzhi.bbs.kaoyan.com/" target="_blank" rel="nofollow">更多</a></span>
                    </div>
                    <ul class="list">
                        <li><span>2020-01-05</span><a target="_blank" href="http://bbs.kaoyan.com/t9809496p1">马原老师那个好</a></li>
                        <li><span>2020-01-05</span><a target="_blank" href="http://bbs.kaoyan.com/t9809464p1">求中大会展考研信息...</a></li>
                        <li><span>2020-01-04</span><a target="_blank" href="http://bbs.kaoyan.com/t9807718p1">求政治视频</a></li>
                        <li><span>2020-01-05</span><a target="_blank" href="http://bbs.kaoyan.com/t9804417p1">信徐之 明还是信其他人</a></li>
                        <li><span>2019-12-30</span><a target="_blank" href="http://bbs.kaoyan.com/t9803169p1">考研公共课政治</a></li>
                    </ul>
                </div>
                <div class="w390 fr">
                    <div class="bkbTt clear">
                        <strong class="bkbTitle">视频教程</strong> <span class="tabMore"><a href="shipin/" target="_blank" rel="nofollow">更多</a></span>
                    </div>
                    <ul class="list">
                        <!--part_28404--><li><a href="http://www.kaoyan.com/zhengzhi/shipin/55fbbf8241288.html" title="【视频】刘晓亮2016考研政治大纲变动详解及复习指导" target="_blank">【视频】刘晓亮2016考研政治大纲变动详解及复习指导</a></li>
<li><a href="http://www.kaoyan.com/zhengzhi/shipin/55fb841723d68.html" title="【视频】高浩峰2016考研政治大纲详解" target="_blank">【视频】高浩峰2016考研政治大纲详解</a></li>

                    </ul>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
