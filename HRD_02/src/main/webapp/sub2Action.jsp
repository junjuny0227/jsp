<%@page import="exam.InputDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> 
<% 
request.setCharacterEncoding("utf-8"); 
InputDTO dto = new InputDTO();
dto.setStuid(request.getParameter("stuid"));
dto.setSubcode(request.getParameter("subcode"));
dto.setMidscore(Integer.parseInt(request.getParameter("midscore")));
dto.setFinalscore(Integer.parseInt(request.getParameter("finalscore")));
dto.setAttend(Integer.parseInt(request.getParameter("attend")));
dto.setReport(Integer.parseInt(request.getParameter("report")));
dto.setEtc(Integer.parseInt(request.getParameter("etc")));
%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>sub2Action</title>
  </head>
  <body></body>
</html>
