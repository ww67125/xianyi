<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>展示界面</title>
   		<link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
    	<script type="text/javascript" src="js/jquery.js" ></script>
    	<link rel="stylesheet" href="user/css/shareblockcss/shareblock.css" />
		<link rel="stylesheet" href="user/css/mancss/man.css">
		<style>
			body{
				background-image: url("user/img/indeximg/bg.png");
				background-repeat: no-repeat;
			}
		</style>
    </head>
    <body>
    	<form method="post">
    		<table class="table table-striped" style="background-color: #d9edf7; width: 1000px; ">
    			<thead>
		    		<tr>
						<td>添加图片</td>
		    			<td>分享所在地址</td>
						<td>分享原因/特点</td>
		    			<td>分享内容</td>
		    			<td>分享用户</td>
						<td>添加时间</td>
		    		</tr>
	    		</thead>
	    		<tbody>
					<c:forEach items="${requestScope.shares}" var="showall">
						<tr>
							<td>${showall.photo}</td>
							<td>${showall.address}</td>
							<td>${showall.sharename}</td>
							<td>${showall.content}</td>
							<td>${showall.user.username}</td>
							<td><fmt:formatDate value="${showall.addtime}" pattern="yyyy年MM月dd日 HH时mm分ss秒"/></td>
						</tr>
					</c:forEach>
	    		</tbody>
    		</table>
    	</form>
    	<div class="igdiv">
			<a href="addshare.jsp" style="color: rosybrown;font-size: 40px;"><img class="ig" src="user/img/manimg/yuan.png"/>点击添加</a>
			<a href="/user/backself" style="color: rosybrown;font-size: 40px;">返回评论</a>
		</div>
    	<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
 	</body>
</html>