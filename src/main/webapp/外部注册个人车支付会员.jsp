<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="./js/jquery-1.11.1.min.js"></script>
    <script src="./js/jquery.md5.js"></script>
</head>
<body>
<style type="text/css">
    .col1 {
        text-align: right;
    }
    .col2 input {
        width: 400px;
    }
    .col2 input[type='radio'] {
        width: 10px;
    }
</style>

<p><input id="btnCreateTimeAndSign" type="button" value="生成_timestamp和_sign" /> <input id="btnSubmit" type="button" value="提  交" /></p>
<p> key：<input id="key" name="key" style="width:200px"
               value="123b364005698ak20ea65fcj735k3532" /></p>
<p>地址：<input id="url" name="url" style="width:600px"
             value="http://testpay.autohome.com.cn/ucenter/register/web-outer-register.htm" /></p>
<form id="form1" action="" method="post">
    <table>
        <tr>
            <td class="col1">
                _appid:
            </td>
            <td class="col2">
                <input id="_appid" name="_appid" value="dealer" />
            </td>
        </tr>
        <tr>
            <td class="col1">
                _timestamp:
            </td>
            <td class="col2">
                <input id="_timestamp" name="_timestamp" value="1429149995" />
            </td>
        </tr>
        <tr>
            <td class="col1">
                _sign:
            </td>
            <td class="col2">
                <input id="_sign" name="_sign" value="" />
            </td>
        </tr>
        <tr>
            <td class="col1">
                sign_method:
            </td>
            <td class="col2">
                <input id="sign_method" name="sign_method" value="md5" />
            </td>
        </tr>
        <tr>
            <td class="col1">
                partner_id:
            </td>
            <td class="col2">
                <input id="partner_id" name="partner_id" value="200000210012" />
            </td>
        </tr>
        <tr>
            <td class="col1">
                uid:
            </td>
            <td class="col2">
                <input id="uid" name="uid" value="20848365" />
            </td>
        </tr>
        <tr>
            <td class="col1">
                login_name:
            </td>
            <td class="col2">
                <input id="login_name" name="login_name" value="testzzh" />
            </td>
        </tr>
        <tr>
            <td class="col1">
                member_type:
            </td>
            <td class="col2">
                <input id="member_type" name="member_type" value="1" />
            </td>
        </tr>
        <tr>
            <td class="col1">
                member_source:
            </td>
            <td class="col2">
                <input id="member_source" name="member_source" value="" />
            </td>
        </tr>
        <tr>
            <td class="col1">
                return_url:
            </td>
            <td class="col2">
                <input id="return_url" name="return_url" value="http://testpay.autohome.com.cn/ucenter/register/web-outer-register-callback.htm" />
            </td>
        </tr>
        <tr>
            <td class="col1">
                member_name:
            </td>
            <td class="col2">
                <input id="member_name" name="member_name" value="" />
            </td>
        </tr>
        <tr>
            <td class="col1">
                company_name:
            </td>
            <td class="col2">
                <input id="company_name" name="company_name" value="" />
            </td>
        </tr>
    </table>
</form>
<script>
    var _timestamp = document.getElementById("_timestamp");
    var _sign = document.getElementById("_sign");

    function createTimestamp() {
        _timestamp.value = Math.round(new Date().getTime() / 1000);
    }

    function createSign() {
        _sign.value = sign();
    }

    function sign() {
        var key = $("#key").val();
        var src = "";
        var inputs = $("#form1").find("input");

        $.each(inputs.sort(function (a, b) {
            if (a.name < b.name) {
                return -1;
            } else if (a.name == b.name) {
                return 0;
            } else {
                return 1;
            }
        }), function (n, input) {
            if (input.name != "_sign") {
                src += input.name + input.value;
            }
        });

        //alert(key + src + key);
        return $.md5(key + src + key).toUpperCase();
    }

    $("#btnCreateTimeAndSign").on("click", function () {
        createTimestamp();
        createSign();
    });

    $("#btnSubmit").on("click", function () {
        $("#form1").attr("action", $("#url").val());
        $("#form1").submit();
    });
</script>
</body>

</html>