<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
    <title>learn Resources</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>

<div style="text-align: center;margin:0 auto;width: 1000px; ">
    <h1>车支付常用操作</h1>
    <table>
        <caption>HTTP接口汇总</caption>

        <!--/*@thymesVar id="apilist" type=""*/-->
        <tr>
            <th>账户相关</th>
            <th>余额相关</th>
        </tr>
        <tr >
            <td><a  href="注册个人车支付会员.jsp">注册个人车支付会员</a></td>
            <td><a  href="查询账户余额.jsp">查询账户余额</a></td>
        </tr>
        <tr >
            <td><a  href="注册企业车支付会员.jsp">注册企业车支付会员</a></td>
            <td><a  href="通用余额查询.jsp">通用余额查询</a></td>
        </tr>
        <tr >
            <td><a  href="外部注册个人车支付会员.jsp">外部注册个人车支付会员</a></td>
            <td><a  href="结算转账.jsp">结算转账</a></td>
        </tr>
        <tr >
            <td><a  href="创建专户.jsp">创建个人会员专户</a></td>
        </tr>
        <tr >
            <td><a  href="创建虚拟子账户.jsp">创建虚拟子账户</a></td>
        </tr>
        <tr >
            <td><a  href="查询车支付会员信息.jsp">查询车支付会员信息</a></td>
        </tr>
        <tr >
            <td><a  href="查询账户信息.jsp">查询账户信息</a></td>
        </tr>
        <tr >
            <td><a  href="查询删除关联关系.jsp">删除关联关系</a></td>
        </tr>
    </table>
</div>
</body>
</html>