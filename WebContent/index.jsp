<%@page import="java.net.InetAddress"%>
<%@page import="java.util.Collections"%>
<%@page import="java.net.NetworkInterface"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>IP DO SERVIDOR</title>
	<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<%
				Enumeration<NetworkInterface> nets = NetworkInterface.getNetworkInterfaces();
				for (NetworkInterface netint : Collections.list(nets)) {
			%><div class="col-sm-4">
				<h3>
					Display name:
					<%=netint.getDisplayName()%></h3>
				<p>
					Name:
					<%=netint.getName()%></p>
				<%
					Enumeration<InetAddress> inetAddresses = netint.getInetAddresses();
						for (InetAddress inetAddress : Collections.list(inetAddresses)) {
				%>
				<p>
					InetAddress:
					<%=inetAddress%></p>
				<%
					}
				%>
			</div>
			<%
				}
			%>
		</div>
	</div>
</body>
</html>