<%--
  Created by IntelliJ IDEA.
  User: wangz
  Date: 2017/10/23
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>


    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>主页</title>
    <link rel="stylesheet" type="text/css" href="css/indexcss/index.css" />
    <link rel="stylesheet" type="text/css" href="css/indexcss/fixed.css" />
    <link rel="stylesheet" type="text/css" href="css/indexcss/font-awesome.min.css" />
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <!--<link rel="stylesheet" href="css/resetzk.css">-->
    <link rel="stylesheet" href="css/indexcss/jquery.gridquote.css">

    <link href="css/indexcss/tou.css" type="text/css" rel="stylesheet"/>

    <script type="text/javascript" src="js/indexjs/jquery.js"></script>
    <script type="text/javascript" src="js/indexjs/jquery.gridquote.min.js"></script>
    <script type="text/javascript">
       $(document).ready(function($){
            $('.grid-container').gridQuote();
        });

        $(function () {
            $("#head_photo").click(function(){
                $(".member").slideToggle(500);
            });
        });
    </script>
    <style>
        body{
            background-image: url("img/indeximg/bg.png");

        }
    </style>
</head>

<body>

<div id="bodyall">

    <!--导航栏-->
    <div class="navoutline">
        <div class="navout">
            <div class="navin">
                <div class="navindex"><a style="text-decoration: none;color: white;">首页</a></div>
                <div class="navgoin">
                    <c:if test="${sessionScope.user.gender=='男'}">
                        <a style="text-decoration: none;color: white;" href="/man.jsp">进入领地</a>
                    </c:if>
                    <c:if test="${sessionScope.user.gender=='女'}">
                        <a style="text-decoration: none;color: white;" href="/woman.jsp">进入领地</a>
                    </c:if>
                </div>
                <div class="navtask"><a style="text-decoration: none;color: white;" href="/showtask">任务</a></div>
                <div class="navphoto" ><a href="/user/userinformation" style="text-decoration: none;color: white;" >${sessionScope.user.username}，欢迎登陆</a>
                    <a id="head_photo" style="text-decoration: none;color: white;">
                        <img src="${pageContext.request.contextPath}/photo/${sessionScope.user.photo}" width="50px" height=50px" style="border-radius: 25px"/>
                    </a></div>
                <div class="navcansel"><a href="/user/logout" style="text-decoration: none;color: white;">注销</a></div>
                <div class="show_container">
                    <div class="member">
                        <p>个人简介</p>
                        <ul>
                            <li><img src="img/huiyuan1.png" alt=""> <a
                                    href="login.html">用户姓名:${sessionScope.user.username }</a></li>
                            <li><img src="img/huiyuan1.png" alt=""> <a
                                    href="register.html">等级:${sessionScope.user.rank}</a></li>
                        </ul>
                    </div>

                </div>

            </div>
        </div>
    </div>
    <!--游戏-->
    <div class="game">
        <div class="divtitle">
            <h1><a href="#" style="text-decoration: none;">游戏/美食</a></h1>
            <hr style="height: 2px;border:none;border-top:2px solid #185598;" />
        </div>
        <div class="divcontent1">
            <div class="wrapper">
                <div class="popover top">
                  <div class="arrow"></div>
                    <div class="popover-inner">
                        <div class="popover-content">

                        </div>
                    </div>
                </div>

                <div class="grid-container">
                    <div class="thumb-container" data-title="《炉石传说》" data-fontsize="27" data-bgcolor="green">
                        <img src="img/indeximg/yx1.jpg" alt="" class="grid-img" style="height: 150px;width: 240px">
                        <div class="quote-container">
                            <p>
                                <span class="date-info">赛事资讯</span>
                                《炉石传说》黄金公开赛广州站将于 10月27日-10月29日 在广州体育馆2号馆举行。
                                “标准组”与“狂野组”分别拥有512个参赛名额。
                                <br />
                                10月27日-10月29日每天10:30，暴雪游戏频道将会带来本次比赛的精彩直播，欢迎届时收看。
                                <br />
                                本次广州站现场开放免费观战，但在场馆达到容纳上限后将限制进入，请玩家们合理安排出行计划。
                                <span class="little-info">--- 炉石官网</span>
                            </p>
                        </div>
                    </div>

                    <div class="thumb-container" data-title="古风韩式自助烧烤">
                        <img src="img/indeximg/ms1.jpg" alt="" class="grid-img" style="height: 150px;width: 240px">
                        <div class="quote-container">
                            <p>
                                <span class="date-info">美食资讯</span>
                                每一片烤肉，都是对味觉的奖赏 要经过层层的筛选，细心的清洁 切成最薄的片
                                <br />
                                才能充分吸收铁板的热 在韩古风，只有最新鲜的肉，才有资格摆在岛柜区。
                            </p>
                        </div>
                    </div>
                    <div class="thumb-container" data-title="《王者荣耀》">
                        <img src="img/indeximg/yx4.jpg" alt="" class="grid-img" style="height: 150px;width: 240px">
                        <div class="quote-container">
                            <p>
                                <span class="date-info">新版本资讯</span>
                                原大厨海鲜自助升级改造，全新的环境，综合性自助，烤涮一体，  <br />
                                聚盛源自助烤涮城成立于2003年，以时尚、营养、健康、价格亲民、标准化操作为经营理念。  <br />
                                底料为火锅店厨师自配秘方，幽香回肠，让人流连忘返。<br/>
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="thumb-container" data-title="《尼尔机械纪元》" >
                        <img src="img/indeximg/yx3.jpg" alt="" class="grid-img" style="height: 150px;width: 240px">
                        <div class="quote-container">
                            <p>
                                <span class="date-info">最新动态</span>
                                原大厨海鲜自助升级改造，全新的环境，综合性自助，烤涮一体，  <br />
                                聚盛源自助烤涮城成立于2003年，以时尚、营养、健康、价格亲民、标准化操作为经营理念。  <br />
                                底料为火锅店厨师自配秘方，幽香回肠，让人流连忘返。<br/>
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="thumb-container" data-title="新辣道鱼火锅">
                        <img src="img/indeximg/ms3.jpg" alt="" class="grid-img" style="height: 150px;width: 240px">
                        <div class="quote-container">
                            <p>
                                <span class="date-info">美食资讯</span>
                                原大厨海鲜自助升级改造，全新的环境，综合性自助，烤涮一体，  <br />
                                聚盛源自助烤涮城成立于2003年，以时尚、营养、健康、价格亲民、标准化操作为经营理念。  <br />
                                底料为火锅店厨师自配秘方，幽香回肠，让人流连忘返。<br/>
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="thumb-container" data-title="呷哺呷哺">
                        <img src="img/indeximg/ms2.jpg" alt="" class="grid-img" style="height: 150px;width: 240px">
                        <div class="quote-container">
                            <p>
                                <span class="date-info">美食资讯</span>
                                原大厨海鲜自助升级改造，全新的环境，综合性自助，烤涮一体，  <br />
                                聚盛源自助烤涮城成立于2003年，以时尚、营养、健康、价格亲民、标准化操作为经营理念。  <br />
                                底料为火锅店厨师自配秘方，幽香回肠，让人流连忘返。<br/>
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="thumb-container" data-title="QQ飞车">
                        <img src="img/indeximg/yx2.jpg" alt="" class="grid-img" style="height: 150px;width: 240px">
                        <div class="quote-container">
                            <p>
                                <span class="date-info">赛事资讯</span>
                                青岛分站决赛直播<<br/>
                                10月28日-10月29日 每天13点全程直播<<br/>
                                比赛地点：青岛市市南区山东路10号华润万象城B2层N次方公园内 TOP1电竞俱乐部
                            </p>
                        </div>
                    </div>
                    <div class="thumb-container" data-title="聚盛源自助烤涮城" data-fontsize="16">
                        <img src="img/indeximg/ms4.jpg" alt="" class="grid-img" style="height: 150px;width: 240px">
                        <div class="quote-container">
                            <p>
                                <span class="date-info">美食资讯</span>
                                原大厨海鲜自助升级改造，全新的环境，综合性自助，烤涮一体，
                                聚盛源自助烤涮城成立于2003年，以时尚、营养、健康、价格亲民、标准化操作为经营理念。
                                底料为火锅店厨师自配秘方，幽香回肠，让人流连忘返。<br/>
                            </p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!--任务-->
        <div class="taskdiv">
            <div class="divtitle">
                <h1><a href="#" style="text-decoration: none;">任务</a></h1>
                <hr style="height: 2px;border:none;border-top:2px solid #185598;" />
            </div>
            <div id="blockcontentout">
                <div class="row">
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <img src="img/indeximg/rw.PNG" alt="" style="width:340px;height:440px;">
                            <div class="caption">
                                <p><a href="/showtask" class="btn btn-primary" role="button">详情</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <img src="img/indeximg/rw.PNG" alt="" style="width:340px;height:440px;">
                            <div class="caption">
                                <p><a href="/showtask" class="btn btn-primary" role="button">详情</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <img src="img/indeximg/rw.PNG" alt="" style="width:340px;height:440px;">
                            <div class="caption">
                                <p><a href="/showtask" class="btn btn-primary" role="button">详情</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <!--段子-->
        <div class="smalldiv">
            <div class="divtitle">
                <h1><a href="#" style="text-decoration: none;">段子</a></h1>
                <hr style="height: 2px;border:none;border-top:2px solid #185598;" />
            </div>
            <!--点击展开-->
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseOne">
                                点击我进行展开，再次点击我进行折叠。第 1 部分
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body" style="color: black">
                            Nihil anim keffiyeh helvetica, craft beer labore wes anderson
                            cred nesciunt sapiente ea proident. Ad vegan excepteur butcher
                            vice lomo.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseTwo">
                                点击我进行展开，再次点击我进行折叠。第 2 部分
                            </a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse">
                        <div class="panel-body" style="color: black">
                            Nihil anim keffiyeh helvetica, craft beer labore wes anderson
                            cred nesciunt sapiente ea proident. Ad vegan excepteur butcher
                            vice lomo.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseThree">
                                点击我进行展开，再次点击我进行折叠。第 3 部分
                            </a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body" style="color: black">
                            Nihil anim keffiyeh helvetica, craft beer labore wes anderson
                            cred nesciunt sapiente ea proident. Ad vegan excepteur butcher
                            vice lomo.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseFour">
                                点击我进行展开，再次点击我进行折叠。第 4 部分
                            </a>
                        </h4>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse">
                        <div class="panel-body" style="color: black">
                            Nihil anim keffiyeh helvetica, craft beer labore wes anderson
                            cred nesciunt sapiente ea proident. Ad vegan excepteur butcher
                            vice lomo.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseFive">
                                点击我进行展开，再次点击我进行折叠。第 5 部分
                            </a>
                        </h4>
                    </div>
                    <div id="collapseFive" class="panel-collapse collapse">
                        <div class="panel-body" style="color: black">
                            Nihil anim keffiyeh helvetica, craft beer labore wes anderson
                            cred nesciunt sapiente ea proident. Ad vegan excepteur butcher
                            vice lomo.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseSix">
                                点击我进行展开，再次点击我进行折叠。第 6 部分
                            </a>
                        </h4>
                    </div>
                    <div id="collapseSix" class="panel-collapse collapse">
                        <div class="panel-body" style="color: black">
                            Nihil anim keffiyeh helvetica, craft beer labore wes anderson
                            cred nesciunt sapiente ea proident. Ad vegan excepteur butcher
                            vice lomo.
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>
<!--瀑布流-->
<div class="waterfulldiv">
    <div class="divtitle">
        <h1><a href="#" style="text-decoration: none;">gif</a></h1>
        <hr style="height: 2px;border:none;border-top:2px solid #185598;" />
    </div>
    <div class="watercon">
        <div id="div1">
        <c:forEach items="${sessionScope.gifs}" var="water">
            <div class="box"><img src="${water.photo}" alt=""></div>
        </c:forEach>
        </div>
    </div>

</div>
<!--悬浮导航栏-->
<div class="rightnav">
    <ul class="indexFloat">
        <li class="animate f1">
            <span style="color: white;">游戏/美食</span>
        </li>
        <li class="animate f2">

            <span style="color: white;">任务</span>
        </li>
        <li class="animate f3">

            <span style="color: white;">段子</span>
        </li>
        <li class="animate f4">

            <span style="color: white;">Gif</span>
        </li>

    </ul>
</div>
        </div>

    <!--<script src="http://www.jq22.com/jquery/1.7.2/jquery.min.js"></script>-->
<script type="text/javascript" src="js/indexjs/jquery.js" ></script>
<script src="js/indexjs/jquery.waterfall.js"></script>
<script src="js/indexjs/fl.js"></script>
<!--<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>-->
<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script>
    $("#div1").waterfall({
        itemClass: ".box",
        minColCount: 2,
        spacingHeight: 10,
        resizeable: true,
        ajaxCallback: function(success, end) {
            var data = {
                "data": [{
                    "src": "03.jpg"
                }, {
                    "src": "04.jpg"
                }, {
                    "src": "02.jpg"
                }, {
                    "src": "05.jpg"
                }, {
                    "src": "01.jpg"
                }, {
                    "src": "06.jpg"
                }]
            };
            var str = "";
            var templ = '<div class="box" style="opacity:0;filter:alpha(opacity=0);"><div class="pic"><img src="img/{{src}}" /></div></div>'

            for(var i = 0; i < data.data.length; i++) {
                str += templ.replace("{{src}}", data.data[i].src);
            }
            $(str).appendTo($("#div1"));
            success();
            end();
        }
    });
    $(document).ready(function() {
        $("#floata1").mouseover(function() {
            $("#floata1").animate({
                right: "100px"
            });
        });
    });

    $(function() {
        var speed = 600; //滑动的速度
        $(".f1").click(function() {
            $('body,html').animate({
                scrollTop: 274
            }, speed);
        })
        $(".f2").click(function() {
            $('body,html').animate({
                scrollTop: 1203
            }, speed);
        })
        $(".f3").click(function() {
            $('body,html').animate({
                scrollTop: 1859
            }, speed);
        })
        $(".f4").click(function() {
            $('body,html').animate({
                scrollTop: 2514
            }, speed);
        })

        $(window).scroll(function() {
            var st = $(this).scrollTop();

            if(st >= 260 && st < 1150) {
                $(".f1").addClass("active");
            } else {
                $(".f1").removeClass("active");
            }

            if(st >= 1150 && st < 1800) {
                $(".f2").addClass("active");
            } else {
                $(".f2").removeClass("active");
            }

            if(st >= 1800 && st < 2500) {
                $(".f3").addClass("active");
            } else {
                $(".f3").removeClass("active");
            }

            if(st >= 2500) {
                $(".f4").addClass("active");
            } else {
                $(".f4").removeClass("active");
            }

        });
    });
</script>
</body>

</html>