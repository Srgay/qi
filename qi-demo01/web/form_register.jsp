<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>form</title>
</head>
<script type="text/javascript" >
    function check(){

        var psw=document.getElementById("password").value;
        var psw2=document.getElementById("password2").value;
        if(psw!=psw2){
            document.getElementById("tishi").innerHTML="两次密码不一样";
        }
        else{
            document.getElementById("tishi").innerHTML="两次密码一样";
        }
    }
</script>
<body>
<div align="center">
    <form action="form_register_result.jsp" method="post">
        <table >
            <!-- rowspan或colspan实习跨行或跨列 -->
            <tr><td colspan="2"><img  src="images/zua.png" width="300px" height="300px"> </td></tr>
            <tr><td>用户名：</td><td><input type="text" name="uname"></td></tr>
            <tr><td>密码：</td><td><input type="password" name="upassword" id="password" placeholder="输入字符密码 " pattern="[a-zA-Z]+$"></td></tr>
            <tr><td>确认密码：</td><td><input type="password" name="psw2" id="password2" onblur="check()" ><span id="tishi"></span></td></tr>
            <tr><td>性别：</td><td><input type="radio" name="sex" value="男" checked>男<input type="radio" name="sex" value="女">女</td></tr>
            <tr><td>爱好：</td><td><input type="checkbox" name="hobby" value="运动">运动
                <input type="checkbox" name="hobby" value="音乐">音乐
                <input type="checkbox" name="hobby" value="阅读">阅读
                <input type="checkbox" name="hobby" value="购物">购物
            </td></tr>
            <tr><td>专业：</td><td><select name="profession">
                <option value="软件工程" selected>软件工程</option>
                <option value="计算机科学与技术">计算机科学与技术</option>
                <option value="网络工程">网络工程</option>
                <option value="物联网">物联网</option>
            </select></td><tr>


            <tr><td>联系电话：</td><td><input type='text' name='tel'></td></tr>
            <tr><td>备注：</td><td><textarea  name="beizhu" cols="50" rows="10">输入补充内容</textarea></td></tr>
            <tr><td><input type="submit" value="注册"></td><td><input type="reset" value="重置"></td></tr>
        </table>
    </form>
</div>
</body>
</html>