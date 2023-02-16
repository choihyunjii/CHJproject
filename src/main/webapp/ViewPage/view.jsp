<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="dao.WritingDao" %>
<%@ page import="dto.Writing" %>
<%@ page import="java.util.List" %>


<html>
<head>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>글 쓰기 폼</title>
    <link rel="stylesheet" href="view.css">
    <style> @import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Montserrat:wght@800&display=swap'); </style>
</head>
<body>
<div class="body">
    <table>


        <h1 class="title">글 목록 페이지</h1>
        <div class="table">
            <thead style="width: 200%">
            <tr class="listname">
                <th id="번호">NO.</th>
                <th id="제목">TITLE</th>
                <th id="작성일">YEAR</th>

            </tr>
            </thead>
                <%
                            request.setCharacterEncoding("UTF-8");
                    WritingDao writingDao = new WritingDao();
                     List<Writing> list=writingDao.getUsers();
                     for(int i = 0; i < list.size(); i++){
            %>

            <tbody>
            <tr>
                <td><%= list.get(i).getId()%></td>
                <td><a href="http://localhost:8090/CHJproject_war_exploded/Update/update.jsp?id=<%= list.get(i).getId()%>"><%=list.get(i).getTitle()%></a></td>
                <td><%=list.get(i).getContents()%></td>
            </tr>
<%
    }
%>
            </tbody>

         <%--   <tbody>
            <td>21</td>
            <td>최현지</td>
            <td>여자</td>
            <td>010-3351-4072</td>


            <tr>
                <td>21</td>
                <td>최현지</td>
                <td>여자</td>
                <td>010-3351-4072</td>

            </tr>
            </tbody>

            <tfoot>

            <td>c</td>
            <td></td>
            <td></td>
            <td></td>
            </tfoot>

        </div>

</div>--%>

</table>
</div>
</body>
</html>
