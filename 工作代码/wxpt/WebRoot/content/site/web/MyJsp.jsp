<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'MyJsp.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
.BMapLib_SearchInfoWindow {
	font: 12px arial, 宋体, sans-serif;
	position: absolute;
	border: 1px solid #999;
	background-color: #fff;
	cursor: default
}

.BMapLib_SearchInfoWindow form,.BMapLib_SearchInfoWindow ul,.BMapLib_SearchInfoWindow li
	{
	margin: 0;
	padding: 0
}

.BMapLib_SearchInfoWindow img {
	border: 0
}

.BMapLib_SearchInfoWindow ul {
	list-style: none
}

.BMapLib_SearchInfoWindow .BMapLib_bubble_top {
	border-bottom: 1px solid #ccc;
	height: 31px
}

.BMapLib_SearchInfoWindow .BMapLib_bubble_title {
	line-height: 30px;
	background-color: #f9f9f9;
	overflow: hidden;
	height: 30px;
	padding: 0 5px;
	font-size: 12px
}

.BMapLib_SearchInfoWindow .BMapLib_bubble_tools {
	padding-right: 5px;
	position: absolute;
	top: 0;
	right: 0;
	height: 30px;
	width: 64px;
	z-index: 10000
}

.BMapLib_SearchInfoWindow .BMapLib_bubble_tools div {
	float: right;
	height: 30px;
	width: 22px;
	cursor: pointer;
	background-color: #f9f9f9;
	cursor: pointer;
	overflow: hidden
}

.BMapLib_SearchInfoWindow .BMapLib_bubble_close {
	background: url(iw_close.gif) no-repeat center center
}

.BMapLib_SearchInfoWindow .BMapLib_sendToPhone {
	background: url(phone.png) no-repeat center center
}

.BMapLib_SearchInfoWindow .BMapLib_bubble_center {
	z-index: 3
}

.BMapLib_SearchInfoWindow .BMapLib_bubble_content {
	padding: 3px 5px;
	overflow-x: auto;
	overflow-y: hidden
}

.BMapLib_SearchInfoWindow .BMapLib_bubble_bottom {
	display: block;
	z-index: 2
}

.BMapLib_SearchInfoWindow .BMapLib_trans {
	z-index: 5;
	position: absolute;
	bottom: -31px;
	*bottom: -32px
}

.BMapLib_SearchInfoWindow .BMapLib_nav {
	width: 100%;
	height: 75px;
	overflow: visibile;
	position: relative
}

.BMapLib_SearchInfoWindow .BMapLib_nav input {
	vertical-align: middle
}

.BMapLib_SearchInfoWindow .iw_bt,.BMapLib_SearchInfoWindow .iw_bt_down,.BMapLib_SearchInfoWindow .iw_bt_over
	{
	width: 48px;
	height: 26px;
	line-height: 18px;
	cursor: pointer;
	border: 0;
	padding: 0;
	background:
		url('http://api.map.baidu.com/library/SearchInfoWindow/1.4/src/iw_bg.png')
		no-repeat 0 -87px;
	vertical-align: middle
}

.BMapLib_SearchInfoWindow .iw_bt_over {
	background-position: -52px -87px
}

.BMapLib_SearchInfoWindow .iw_bt_down {
	background-position: -104px -87px;
	font-weight: 700
}

.BMapLib_search_text {
	width: 100%;
	height: 20px;
	line-height: 20px;
	border: 1px solid #a5acb2
}

.BMapLib_trans_text {
	width: 100%;
	height: 20px;
	line-height: 20px;
	border: 1px solid #a5acb2
}

.BMapLib_nav_tab {
	height: 30px;
	width: 100%;
	background:
		url('http://api.map.baidu.com/library/SearchInfoWindow/1.4/src/iw_bg.png')
		repeat-x 0 0
}

.BMapLib_nav_tab li {
	position: relative;
	float: left;
	width: 114px;
	height: 25px;
	padding-top: 5px;
	text-align: center;
	border-left: 1px solid #dadada;
	cursor: pointer;
	overflow: hidden;
	width: 33%
}

.BMapLib_nav_tab .BMapLib_icon {
	display: inline-block;
	position: relative;
	width: 10px;
	height: 15px;
	top: 3px;
	margin-right: 7px;
	background:
		url('http://api.map.baidu.com/library/SearchInfoWindow/1.4/src/iw_bg.png')
		no-repeat 0 -136px
}

.BMapLib_nav_tab .BMapLib_icon_tohere {
	background-position: -15px -136px
}

.BMapLib_nav_tab .BMapLib_icon_nbs {
	width: 14px;
	height: 14px;
	background-position: -30px -136px
}

.BMapLib_nav_tab li.BMapLib_first {
	border-left: 0
}

.BMapLib_nav_tab li:hover {
	text-decoration: none
}

.BMapLib_nav_tab li.BMapLib_current {
	color: #4d4d4d;
	cursor: default;
	background:
		url('http://api.map.baidu.com/library/SearchInfoWindow/1.4/src/iw_bg.png')
		repeat-x 0 -44px
}

.BMapLib_nav_tab_content li {
	padding: 10px 0 0 0;
	position: relative;
	height: 22px;
	font-family: "宋体"
}

.BMapLib_sms_tab_container {
	height: 35px;
	background: #fcfcfc;
	position: relative;
	z-index: 20;
	font-size: 12px;
	font-weight: bold;
	line-height: 35px;
	padding-left: 10px
}

.BMapLib_sms_pnl_phone {
	position: relative;
	z-index: 10;
	padding: 10px 15px 10px 15px;
	border-top: solid 1px #f2f2f2;
	font-size: 12px
}

.BMapLib_ap {
	float: left;
	width: 263px;
	height: 172px;
	overflow-x: hidden;
	overflow-y: auto
}

.BMapLib_ap th {
	text-align: right;
	font-weight: normal
}

.BMapLib_mp {
	background: #f6f6f6;
	padding: 10px;
	height: 152px;
	overflow-x: hidden;
	overflow-y: auto
}

.BMapLib_mp_title {
	font-weight: bold;
	height: 18px;
	line-height: 18px;
	padding-bottom: 5px
}

.BMapLib_msgContent {
	font-size: 12px:line-height:16px;
	word-break: break-all;
	　　word-wrap: break-word
}

.BMapLib_popup_close {
	padding: 10px;
	background: url(iw_close.gif) no-repeat center center transparent;
	border: 0 none;
	cursor: pointer;
	height: 13px;
	position: absolute;
	right: 8px;
	top: 8px;
	width: 14px;
	z-index: 50
}

.BMapLib_sms_input {
	ime-mode: disabled
}

.BMapLib_sms_input_l {
	width: 90px
}

.BMapLib_sms_input_s {
	width: 35px
}

.BMapLib_sms_declare_phone {
	color: #707070
}

#BMapLib_sms_tip {
	color: red;
	padding-left: 20px
}

#BMapLib_success_tip {
	font-size: 12px;
	text-align: center;
	padding: 50px 0 20px 0;
	color: red
}

#BMapLib_activateTip {
	padding-left: 5px;
	color: red
}
</style>
</head>

<body>
	This is my JSP page.
	<br>
</body>
</html>
