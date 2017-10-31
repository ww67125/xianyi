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
    <title>JSP Page</title>
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
       /* $(document).ready(function($){
            $('.grid-container').gridQuote();
        });*/

        $(function () {
            $("#head_photo").click(function(){
                $(".member").slideToggle(500);
            });
        });
    </script>
</head>

<body>

<%--<c:forEach items="${sessionScope.user}" var="user">
${user.userlist.username}
<a href="/usershare?userid=${user.userlist.userid}">123</a>
</c:forEach>--%>
<a href="/showtask">showtask</a>

${requestScope.shares}


<div id="bodyall">
    <!--导航栏-->
    <div class="navoutline">
        <div class="navout">
            <div class="navin">
                <div class="navindex"><a style="text-decoration: none;">首页</a></div>
                <div class="navgoin"><a style="text-decoration: none;" href="/man.jsp">进入</a></div>
                <div class="navtask"><a style="text-decoration: none;" href="/showtask">任务</a></div>
                <div class="navphoto" ><a href="/user/userinformation">${sessionScope.user.username}</a>，欢迎登陆,<a id="head_photo">头像</a></div>
                <div class="navbutton"><button style="width: 80px; height: 50px;font-size: 20px;"><a href="/user/logout">注销</a></button></div>
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
                            <p>Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
                        </div>
                    </div>
                </div>

                <div class="grid-container">
                    <div class="thumb-container" data-title="Optional Background Color" data-fontsize="27" data-bgcolor="green">
                        <img src="images/thumbnail1.png" alt="" class="grid-img">
                        <div class="quote-container">
                            <p>
                                <span class="date-info">11 Jun, 2013</span>
                                It&#39;s responsive, please try to resize your browser. Auto delay slideshow, optional hover to pause. You can put any content in this quote block. <br />Please click the same thumbnail again to close this panel.<br />
                                <span class="little-info">--- Link to my profile</span>
                            </p>
                        </div>
                    </div>

                    <div class="thumb-container" data-title="E. B. White">
                        <img src="images/white.jpg" alt="" class="grid-img">
                        <div class="quote-container">
                            <p>
                                <span class="date-info">Some other information here</span>
                                <br />I would feel more optimistic about a bright future for man if he spent less time proving that he can outwit Nature and more time tasting her sweetness and respecting her seniority.</p>
                        </div>
                    </div>
                    <div class="thumb-container" data-title="E. B. White">
                        <img src="images/white.jpg" alt="" class="grid-img">
                        <div class="quote-container">
                            <p>
                                <span class="date-info">Some other information here</span>
                                <br />I would feel more optimistic about a bright future for man if he spent less time proving that he can outwit Nature and more time tasting her sweetness and respecting her seniority.</p>
                        </div>
                    </div>
                    <div class="thumb-container" data-title="E. B. White">
                        <img src="images/white.jpg" alt="" class="grid-img">
                        <div class="quote-container">
                            <p>
                                <span class="date-info">Some other information here</span>
                                <br />I would feel more optimistic about a bright future for man if he spent less time proving that he can outwit Nature and more time tasting her sweetness and respecting her seniority.</p>
                        </div>
                    </div>
                    <div class="thumb-container" data-title="E. B. White">
                        <img src="images/white.jpg" alt="" class="grid-img">
                        <div class="quote-container">
                            <p>
                                <span class="date-info">Some other information here</span>
                                <br />I would feel more optimistic about a bright future for man if he spent less time proving that he can outwit Nature and more time tasting her sweetness and respecting her seniority.</p>
                        </div>
                    </div>
                    <div class="thumb-container" data-title="E. B. White">
                        <img src="images/white.jpg" alt="" class="grid-img">
                        <div class="quote-container">
                            <p>
                                <span class="date-info">Some other information here</span>
                                <br />I would feel more optimistic about a bright future for man if he spent less time proving that he can outwit Nature and more time tasting her sweetness and respecting her seniority.</p>
                        </div>
                    </div>
                    <div class="thumb-container" data-title="Paul Valery">
                        <img src="images/valery.jpg" alt="" class="grid-img">
                        <div class="quote-container">
                            <p>The folly of mistaking a paradox for a discovery, a metaphor for a proof, a torrent of verbiage for a spring of capital truths, and oneself for an oracle, is inborn in us.</p>
                        </div>
                    </div>
                    <div class="thumb-container" data-title="Daniel Webster, Address at the laying of the cornerstone of the bunker hill monument" data-fontsize="16">
                        <img src="images/webster.jpg" alt="" class="grid-img">
                        <div class="quote-container">
                            <p>Let us develop the resources of our land, call forth our powers, build up its institutions, promote all its great interests, and see whether we also, in our day and generation, may not perform something worthy to be remembered.</p>
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
                            <img src="img/01.jpg" alt="">
                            <div class="caption">
                                <h3>Thumbnail label</h3>
                                <p>我是任务我是任务我是任务我是任务我是任务我是任务我是任务我是任务我是任务我是任务我是任务我是任务</p>
                                <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <img src="img/01.jpg" alt="">
                            <div class="caption">
                                <h3>Thumbnail label</h3>
                                <p>我是任务我是任务我是任务我是任务我是任务我是任务</p>
                                <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <img src="img/01.jpg" alt="">
                            <div class="caption">
                                <h3>Thumbnail label</h3>
                                <p>我是任务我是任务我是任务我是任务我是任务我是任务</p>
                                <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
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
                        <div class="panel-body">
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
                        <div class="panel-body">
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
                        <div class="panel-body">
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
                                点击我进行展开，再次点击我进行折叠。第 4部分
                            </a>
                        </h4>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse">
                        <div class="panel-body">
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
                                点击我进行展开，再次点击我进行折叠。第 5部分
                            </a>
                        </h4>
                    </div>
                    <div id="collapseFive" class="panel-collapse collapse">
                        <div class="panel-body">
                            Nihil anim keffiyeh helvetica, craft beer labore wes anderson
                            cred nesciunt sapiente ea proident. Ad vegan excepteur butcher
                            vice lomo.
                        </div>
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
</div>
</body>

</html>