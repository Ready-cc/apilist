<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="./js/jquery-1.11.1.min.js"></script>
    <script src="./js/jquery.md5.js"></script>
</head>
<body>
<p></p>
    <form action="/list">
        <table>
            <p>
                <button id = "query" type="submit">查询</button>
                <button id = "del" type="submit">删除</button>
            </p>
            <tr>
                <td><input id = "uid" name = "uid" value="输入汽车之家id"></td>
            </tr>
        </table>

    </form>
</body>

</html>