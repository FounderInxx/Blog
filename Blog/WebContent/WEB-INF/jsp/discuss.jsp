<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 标准标签库，包括通用标签、流程控制标签、循环控制标签 -->

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- 日期、数字格式化 -->
<!DOCTYPE html>
<html lang="zh-CN">

<head>
	<meta charset="utf-8" />
	<!--meta标签表示页面里的元信息标签，搜索引擎抓取网页时会分析此标签。-->
	<meta name="auther" content="Founder|方正" />
	<!--content的取值为webkit,ie-comp,ie-stand之一，区分大小写，分别代表用webkit内核，IE兼容内核，IE标准内核。-->
	<meta name="renderer" content="webkit" />
	<!--该meta标签的作用是让当前viewport的宽度等于设备的宽度。也许允不允许用户缩放不同的网站有不同的要求，
		但让viewport的宽度等于设备的宽度，这个应该是大家都想要的效果，如果你不这样的设定的话，
		那就会使用那个比屏幕宽的默认viewport，也就是说会出现横向滚动条。		
        width	设置layout viewport  的宽度，为一个正整数，或字符串"width-device"。
        initial-scale	设置页面的初始缩放值，为一个数字，可以带小数。
        minimum-scale	允许用户的最小缩放值，为一个数字，可以带小数。
        maximum-scale	允许用户的最大缩放值，为一个数字，可以带小数。
        height	设置layout viewport  的高度，这个属性对我们并不重要，很少使用。
        user-scalable	是否允许用户进行缩放，值为"no"或"yes", no 代表不允许，yes代表允许。
        -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!--可以改变访问网站时手机状态栏的颜色，默认是白色，你可以修改这个颜色让状态栏变色。-->
	<meta name="theme-color" content="#ffffff">
	<!--以上代码IE=edge告诉IE使用最新的引擎渲染网页，chrome=1则可以激活Chrome Frame。-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
	<!--站点自己做好PC与手机之间的适配，以及手机各个版式之间的适配。当手机用户通过百度移动搜索或者其他方式访问站点的PC页（首页或者内容页）时，站点将其自动适配到该PC页面对应的手机页，并为之选择合适的页面版本。
        name="mobile-agent"：为更新后的meta声明，建议使用。原有meta规则http-equiv="mobile-agent"能够兼容并继续生效，已标注过的无需修改。
        format=html5：根据手机页的协议语言，选择中的一种。（包括wml|xhtml|html5）
        url=/m：代表当前PC页所对应的手机页/m，两者必须是一一对应关系（而不是统一对应至手机站首页）
        -->
	<meta http-equiv="mobile-agent" content="format=html5; url=http://www.founder.ink/">
	<title>Founder 方正</title>
	<!-- Bootstrap 4.0.0 Alpha 6 -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<!-- FancyBox 3.1.20 弹出框插件 -->
	<link rel="stylesheet" href="assets/css/jquery.fancybox.min.css">
	<!-- Animate.css 3.5.1 -->
	<link rel="stylesheet" href="assets/css/animate.min.css">
	<link rel="stylesheet" href="assets/css/discuss.css">
	<link rel="stylesheet" href="assets/css/topic.css">
	<!--第一，使用Canonical标签使网址规范化。
 		第二，避免内容重复页面，搜索引擎收录更准确。
 		第三，集中传递页面权重。
	-->
	<link rel="canonical" href="/">
	<link rel="shortcut icon" href="assets/img/favicon.ico">
	<!-- jQuery -->
	<script src="assets/js/jquery.min.js"></script>
</head>

<body>
	<header id="navigation-wrapper" style="height: 58px !important;">
		<div class="fixed">
			<nav class="navbar navbar-fixed-top navbar-toggleable-sm navbar-inverse">
				<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar-nav" aria-controls="navbar-nav"
				 aria-expanded="false" aria-label="Toggle Navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<a class="navbar-brand" href="index.html">澈澈</a>
				<div id="navbar-nav" class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li class="nav-item">
							<a class="nav-link" href="sortPages.html">专题广场</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="martix.html">Matrix</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="itools.html">工具箱</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="discuss.html">兴趣小组</a>
						</li>
						<li class="nav-item dropdown">
							<a id="navbar-dropdownmenu" class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">更多</a>
							<div class="dropdown-menu" aria-labelledby="navbar-dropdownmenu">
								<a class="dropdown-item" href="https://segmentfault.com/u/ichi" target="_blank">Segmentfault</a>
								<a class="dropdown-item" href="https://github.com/FounderInxx" target="_blank">GitHub</a>
							</div>
						</li>
					</ul>
				</div>
			</nav>
		</div>
	</header>

	<div class="g-bd">
		<div class="g-bdc">
			<div class="g-mn" id="main">
				<h2 style="font-size: 22px;margin-top: 20px;margin-bottom: 10px;font-family: inherit;font-weight: 500;line-height: 1.2;">游乐场</h2>
				<textarea class="mono form-control wmd-input tabIndent" style="height: 120px;" placeholder="麻烦把手头的事先放一放 开始喜欢我"></textarea>
				<button class="publishBtn f-noselect f-commonicon ztag" hidefocus="true">
					<span class="ztag">留 言</span>
				</button>
				<div class="w-load2" id="loadfirst" style="display: none;">
					<div class="load">加载中</div>
				</div>

				<c:forEach items="${discussList }" var="discussList">
					<div class="m-mlist" id="m-mlist_${discussList.discussId }" style="margin-top:55px;">
						<div class="mlistimg js-380829">
							<div class="w-img" style="z-index:1;">
								<a href="http://diesel2b.lofter.com/" target="_blank">
									<img class="js-380829" src="${discussList.discussUserpic }">
								</a>
							</div>
						</div>
						<div class="mlistcnt">
							<div class="isay">
								<div class="isayt">
									<a class="isayc" href="http://drawingmovie.lofter.com/post/dfb92_112c66c3" title="查看全文 - 2小时前" target="_blank">打开新页</a>
									<span class="isayc" style="display:none;"></span>
								</div>
								<div class="isaym">
									<div>
										<div class="m-icnt">
											<div class="cnt">
												<div class="txt">
													<blockquote>
														${discussList.discussCommentinfo }
													</blockquote>
												</div>
											</div>
										</div>
									</div>
									<div class="w-opt">
										<span class="opti">
											<a title="日志在该标签下列为精选" class="w-jing" href="http://www.lofter.com/tag/%E6%91%84%E5%BD%B1%E6%95%99%E7%A8%8B?first=3764b1_11bad2cd">
												<span>${discussList.discussCommentdate }</span>
											</a>
										</span>
										<div class="optb">
											<span class="opti">
												<a href="#" hidefocus="true">评论(${discussList.discussNum })</a>
												<span class="opticrt"></span>
											</span>
										</div>
										<input type="hidden" value="${discussList.discussId }" class="commentId">
									</div>
								</div>
								<div class="a-isaym2">
									<div class="isaym2 isaym2-open" style="margin-top:-81px;">111111</div>
								</div>
								<div class="a-isaym2 a-isaym2-do" style="display: none;">
									<div class="isaym2 isaym2-open js-309149" style="margin-top: 0px;">
										<div>
											<div class="shadow"></div>
											<div class="isaymin">
												<div class="isayi add">
													<div contenteditable="true" class="w-inputxt xtag noshortkey" maxlength="200"></div>
													<button class="w-bbtn xtag w-bbtn-0">冒 泡</button>
												</div>
												<div class="m-cmt">
													<div class="a-show a-show-cmtul a-show-do">
														<ul class="xtag">



														</ul>
													</div>
												</div>
												<div class="isayi xtag" style="display: none;">
													<div class="more">
														<div class="w-load">正在载入中...</div>
													</div>
												</div>
												<div class="isayi">
													<a class="w-more2 xtag" href="#" style="display: none;">
														<span>查看更多</span>
													</a>
												</div>
												<div class="more">
													<div class="isayi">
														<a class="w-more w-more-close xtag" href="#">收起</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="isayb"></div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<footer id="footer-wrapper" class="container" style="clear: both;">
		<div class="footer-logo">
			<svg width="128px" height="128px" viewBox="0 0 128 128" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
			 xmlns:cc="https://creativecommons.org/licenses/by-nc-nd/4.0/">
				<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
					<g id="logo-system01" class="logo-system">
						<g transform="translate(17, 8)">
							<circle class="logo-orbit" stroke="#404040" stroke-width="0.5" cx="52" cy="56" r="52"></circle>
							<circle class="logo-planet" fill="#404040" cx="52" cy="4" r="4"></circle>
							<circle class="logo-gbp" cx="52" cy="108" r="4"></circle>
						</g>
					</g>
					<g id="logo-system02" class="logo-system">
						<g transform="translate(61, 60) rotate(-120) translate(-61, -60) translate(9, 4)">
							<circle class="logo-orbit" stroke="#404040" stroke-width="0.5" cx="52" cy="56" r="52"></circle>
							<circle class="logo-planet" fill="#404040" cx="52" cy="4" r="4"></circle>
							<circle class="logo-gbp" cx="52" cy="108" r="4"></circle>
						</g>
					</g>
					<g id="logo-system03" class="logo-system">
						<g transform="translate(65, 68) rotate(-240) translate(-65, -68) translate(13, 12)">
							<circle class="logo-orbit" stroke="#404040" stroke-width="0.5" cx="52" cy="56" r="52"></circle>
							<circle class="logo-planet" fill="#404040" cx="52" cy="4" r="4"></circle>
							<circle class="logo-gbp" cx="52" cy="108" r="4"></circle>
						</g>
					</g>
					<path id="logo-spacekid" d="M33.0882861,72.6012144 C33.0882861,69.5610435 32.6082591,67.5769319 31.5842015,64.376752 C31.3281871,63.576707 30.9121637,62.5206477 30.6561493,61.8166081 C29.9841115,59.9285019 28.960054,57.368358 28.960054,55.1282321 C28.960054,52.7921007 29.4720828,51.960054 30.5281421,51.960054 C31.6802069,51.960054 32.0642285,52.9201079 32.0642285,54.7762123 L32.0642285,57.7523796 L32.9922807,57.7523796 L32.9922807,54.7442105 C32.9922807,52.5040846 32.3522447,51 30.5601439,51 C29.0880612,51 28,52.1840666 28,55.0322267 C28,57.3043544 28.6720378,59.0004498 29.7280972,62.0726225 C29.8881061,62.5526495 30.4001349,63.8647232 30.6561493,64.6647682 C31.7442105,67.8649481 32.0962303,69.4330363 32.0962303,72.7292216 C32.0962303,75.3213673 31.4561943,75.9294015 30.5281421,75.9294015 C29.5360864,75.9294015 29.0560594,75.3533691 29.0560594,73.7532792 L29.0560594,70.2970849 L28.1280072,70.2970849 L28.1280072,74.1693025 C28.1280072,75.8333961 29.0240576,76.8574537 30.5281421,76.8574537 C31.9042195,76.8574537 33.0882861,75.9614033 33.0882861,72.6012144 L33.0882861,72.6012144 Z M42.9128384,58.3604138 C42.9128384,55.1282321 42.6248222,53.0481151 42.2408006,52.3760774 C41.7927754,51.5760324 41.3127484,51.0960054 40.416698,51.0960054 L38.3685829,51.0960054 L38.3685829,76.6974447 L39.2966351,76.6974447 L39.2966351,65.5928204 C39.2966351,65.5928204 39.8726675,65.6248222 40.3846963,65.5608186 C41.2487448,65.4328114 41.8247772,64.9847862 42.2728024,64.2487448 C42.816833,63.3206927 42.9128384,61.5605937 42.9128384,58.3604138 L42.9128384,58.3604138 Z M41.9207826,58.3604138 C41.9207826,61.4325865 41.7607736,63.0646783 41.4727574,63.736716 C41.2487448,64.2487448 40.7687178,64.6327664 39.9686729,64.6647682 L39.2966351,64.6647682 L39.2966351,51.9920558 L40.0326765,51.9920558 C40.4486998,51.9920558 41.056734,52.2160684 41.376752,52.8561043 C41.6327664,53.3361313 41.9207826,55.2882411 41.9207826,58.3604138 L41.9207826,58.3604138 Z M48.1931352,70.5530992 L50.94529,70.5530992 L51.3613133,76.6974447 L52.2893655,76.6974447 L50.3372558,51.0960054 L49.3131982,51.0960054 L46.7210525,76.6974447 L47.6491046,76.6974447 L48.1931352,70.5530992 Z M50.9132882,69.7210525 L48.225137,69.7210525 L49.4732072,56.9203328 L49.7292216,53.0801169 L49.9212324,56.9523346 L50.9132882,69.7210525 Z M62.1779214,68.9530093 L61.2498693,68.9530093 L61.2498693,73.1132432 C61.2498693,75.5133781 60.4498243,75.9294015 59.6497793,75.9294015 C58.7537289,75.9294015 58.0816911,75.5133781 58.0496894,73.305254 C58.0496894,72.5692126 57.9856858,65.656824 57.9856858,63.7047142 C57.9856858,61.7846063 58.0176876,55.2882411 58.0176876,54.2001799 C58.0496894,52.760099 58.4337109,51.9280522 59.6177775,51.9280522 C60.7378405,51.9280522 61.1538639,52.6960954 61.1858657,53.9121637 C61.2178675,55.0002249 61.2178675,57.3363562 61.2178675,58.8404408 L62.1459196,58.8404408 L62.1459196,54.0721727 C62.1459196,52.3440756 61.4738819,51 59.7137829,51 C57.9216822,51 57.0576336,52.1520648 57.0576336,54.4881961 L57.0576336,63.6727124 C57.0576336,66.0408456 57.0576336,71.2891406 57.0896354,73.5932702 C57.1216372,75.7373907 57.9216822,76.8574537 59.6177775,76.8574537 C61.1858657,76.8574537 62.1779214,75.7693925 62.1779214,73.2092486 L62.1779214,68.9530093 Z M71.8744666,76.6974447 L71.8744666,75.8013943 L68.4822759,75.8013943 L68.4822759,64.1527394 L71.3624378,64.1527394 L71.3624378,63.2886909 L68.4822759,63.2886909 L68.4822759,51.9920558 L71.8424648,51.9920558 L71.8424648,51.0960054 L67.5542237,51.0960054 L67.5542237,76.6974447 L71.8744666,76.6974447 Z M82.1790459,76.6974447 L78.818857,62.4246423 L82.0190369,51.0960054 L81.1229865,51.0960054 L77.7627976,63.0966801 L77.7627976,51.0960054 L76.8347454,51.0960054 L76.8347454,76.6974447 L77.7627976,76.6974447 L77.7627976,65.7528294 L78.2748264,64.1207376 L81.2189919,76.6974447 L82.1790459,76.6974447 Z M87.8113625,76.6974447 L87.8113625,51.0960054 L86.8833103,51.0960054 L86.8833103,76.6974447 L87.8113625,76.6974447 Z M98.4999634,74.0092935 C98.563967,72.6972198 98.5319652,64.9207826 98.5319652,63.3206927 C98.5319652,61.7206027 98.563967,54.9362213 98.4999634,53.9121637 C98.3719562,52.2160684 97.5399094,51.0960054 95.7478087,51.0960054 L93.7316953,51.0960054 L93.7316953,76.6974447 L96.0358249,76.6974447 C98.0199364,76.6974447 98.4359598,75.2573637 98.4999634,74.0092935 L98.4999634,74.0092935 Z M97.5719112,74.2333061 C97.5399094,75.3853709 96.8998735,75.8013943 96.2598375,75.8013943 L94.6597475,75.8013943 L94.6597475,51.9920558 L95.8758159,51.9920558 C96.8038681,51.9920558 97.5079076,52.8561043 97.5719112,54.3601889 C97.603913,55.3202429 97.603913,62.3286369 97.603913,63.2886909 C97.603913,64.2487448 97.603913,73.2092486 97.5719112,74.2333061 L97.5719112,74.2333061 Z"
					 fill="#404040"></path>
				</g>
			</svg>
		</div>
		<div class="footer-meta">
			<div>
				<p>
					&copy; 2018 方正的小站
					<br>
				</p>
			</div>
			<div class="text-75">
				<a href="https://creativecommons.org/licenses/by-nc-nd/4.0" target="_blank">
					<img src="assets/img/by-nc-nd.svg" width="76" height="16" title="Creative Commons「署名 - 非商业性使用 - 禁止演绎 4.0」许可协议" />
				</a>
			</div>
		</div>
	</footer>
	<!-- Tether 1.4.0 -->
	<script src="assets/js/tether.min.js"></script>
	<!-- Bootstrap 4.0.0 Alpha 6 -->
	<script src="assets/js/bootstrap.min.js"></script>
	<!-- FancyBox 3.1.20 -->
	<script src="assets/js/jquery.fancybox.min.js"></script>
	<!-- Retina.js 2.1.2 -->
	<script src="//cdn.bootcss.com/retina.js/2.1.2/retina.min.js"></script>
	<!-- Retina.js CORS Workaround -->
	<script src="assets/js/retina.js"></script>
	<script src="assets/js/script.js"></script>
	<script type="text/javascript">
		$(function ($) {
			//去掉每条评论下最后一条回复的下边框
			$(".m-mlist .m-cmt li:last-child").css("border-bottom", "none");
			//留言
			$(".publishBtn").click(function () {
				var id = 7;

			})

			//点击展开回复
			$("#main").on("click", ".optb", function () {
				debugger;
				$(this).parents(".m-mlist").find(".a-isaym2-do").slideDown("slow");
				var id = $(this).siblings(".commentId").val();

				$.ajax({
					url: "discussAll.html",
					data: { discussId: id },
					type: "post",
					async: false,
					dataType: "json",//xml,html,script,jsonp,text
					success: function (result) {
						debugger;
						var html = '';
						for (var i = 0; i < result.length; i++) {
							if (result[i].type == 1) {
								html += '<li class="a-slide a-slide-do">\
                     		      <div class="cmti slide xtag" style="margin-top: 0px;">\
									  <div class="w-img2 w-img2-2 noshortkey">\
										  <a href="http://ashtrayvase.lofter.com" target="_blank" title="Ash - 4小时前">\
										  	  <img class="xtag" src='+ result[i].discussUserPhoto + '>\
										  </a>\
									  </div>\
									  <div class="cmtcnt">\
										  <div class="cmthot">\
											  <span class="cmtusr">\
											  	  <a href="http://ashtrayvase.lofter.com" target="_blank" class="s-fc4 xtag" title="Ash - 4小时前">吃瓜群众&nbsp;&nbsp;</a>\
											  	  <span class="xtag" style="display: none;">&nbsp;&nbsp;回复了&nbsp;&nbsp;\
											  	  	  <a class="s-fc4 xtag" target="_blank"></a>\
												  </span>\
											  </span>\
											  <span class="xtag">'+ result[i].discussCommentback + '</span>\
										  </div>\
										  <div class="cmtopt">\
											  <a href="#" class="s-fc4 xtag">'+ result[i].discussCommentbackdate + '</a>\
										  </div>\
									  </div>\
                     		      </div>\
							  </li>';
							} else {
								html += '<li class="a-slide a-slide-do">\
                     		      <div class="cmti slide xtag" style="margin-top: 0px;">\
									  <div class="w-img2 w-img2-2 noshortkey" style="float: right">\
										  <a href="http://ashtrayvase.lofter.com" target="_blank" title="Ash - 4小时前">\
										  	  <img class="xtag" src='+ result[i].discussUserPhoto + '>\
										  </a>\
									  </div>\
									  <div class="cmtcnt" style="float: left">\
									  	  <div class="cmtopt"  style="float: left">\
											  <a href="#" class="s-fc4 xtag">'+ result[i].discussCommentbackdate + '</a>\
										  </div>\
										  <div class="cmthot" style="float: right">\
											  <span class="cmtusr" style="float: right">\
											  	  <a href="http://ashtrayvase.lofter.com" style="float: right" target="_blank" class="s-fc4 xtag" title="Ash - 4小时前">&nbsp;&nbsp;澈澈</a>\
											  	  <span class="xtag" style="display: none;">&nbsp;&nbsp;回复了&nbsp;&nbsp;\
											  	  	  <a class="s-fc4 xtag" target="_blank"></a>\
												  </span>\
											  </span>\
											  <span class="xtag" style="float: right">'+ result[i].discussCommentback + '</span>\
										  </div>\
									  </div>\
                     		      </div>\
							  </li>';
							}

						}
						$("#m-mlist_" + id).find(".a-show-do ul").html(html);
					},
					error: function (a, b, c) {
					}

				});

			})

			//点击收回回复
			$("#main").on("click", ".w-more-close", function () {
				$(this).parents(".a-isaym2-do").slideUp("slow");
			})
			//留言
			$(".publishBtn").click(function () {
				/* 获取0-100的随机数 */
				var code = parseInt(100 * Math.random());
				if (code <= 10) {
					userpic = "assets/img/6c73eb5f2c67d167f54d09be4d653e39.jpg";
				} else if (code <= 20 && code > 10) {
					userpic = "assets/img/fc00cb95a9b74d9.jpg";
				} else if (code <= 30 && code > 20) {
					userpic = "assets/img/f627e4f9c03c16a9b4c4925745083b3b.jpg";
				} else if (code <= 40 && code > 30) {
					userpic = "assets/img/725653_1488337112561.png";
				} else if (code <= 50 && code > 40) {
					userpic = "assets/img/f6bf4d9bc82c50a06dc17fd4dfc921bb.png";
				} else if (code <= 60 && code > 50) {
					userpic = "assets/img/332638.jpg";
				} else if (code <= 70 && code > 60) {
					userpic = "assets/img/260068.png";
				} else if (code <= 80 && code > 70) {
					userpic = "assets/img/252290.jpg";
				} else if (code <= 90 && code > 80) {
					userpic = "assets/img/3408ee88f306c2c40bbba18421b7c6bf.jpg";
				} else if (code <= 100 && code > 90) {
					userpic = "assets/img/085a2a95-2a67-5ae9-501c-98927411a486.jpg";
				}
				var mono = $(".mono").val();
				var formData = {};
				// 			debugger;
				// 			formData['lines[0].discussId'] = '+${discussId}+';
				// 	       	formData['lines[0].discussCommentdate'] = '+${DiscussCommentdate}+'; 	       	
				formData['discussCommentinfo'] = mono;
				formData['discussUserpic'] = userpic;
				$.post("commentmain.html", formData, function (data) {

				})
				window.location.reload();
			})
			//冒泡
			$(".w-bbtn").click(function () {
				debugger;
				var parentId = $(this).parents(".m-mlist").find(".commentId").val();
				var mono = $(this).siblings(".w-inputxt").text();
				var code = parseInt(100 * Math.random());
				if (code <= 10) {
					userpic = "assets/img/6c73eb5f2c67d167f54d09be4d653e39.jpg";
				} else if (code <= 20 && code > 10) {
					userpic = "assets/img/fc00cb95a9b74d9.jpg";
				} else if (code <= 30 && code > 20) {
					userpic = "assets/img/f627e4f9c03c16a9b4c4925745083b3b.jpg";
				} else if (code <= 40 && code > 30) {
					userpic = "assets/img/725653_1488337112561.png";
				} else if (code <= 50 && code > 40) {
					userpic = "assets/img/f6bf4d9bc82c50a06dc17fd4dfc921bb.png";
				} else if (code <= 60 && code > 50) {
					userpic = "assets/img/332638.jpg";
				} else if (code <= 70 && code > 60) {
					userpic = "assets/img/260068.png";
				} else if (code <= 80 && code > 70) {
					userpic = "assets/img/252290.jpg";
				} else if (code <= 90 && code > 80) {
					userpic = "assets/img/3408ee88f306c2c40bbba18421b7c6bf.jpg";
				} else if (code <= 100 && code > 90) {
					userpic = "assets/img/085a2a95-2a67-5ae9-501c-98927411a486.jpg";
				}
				var formData = {};
				formData['discussCommentback'] = mono;
				formData['discussUserPhoto'] = userpic;
				formData['discussParentId'] = parentId;
				$.post("commentinfo.html", formData, function (data) {

				})
				window.location.reload();
			})
		})

	</script>
</body>

</html>