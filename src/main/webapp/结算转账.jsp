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
            width: 700px;
        }
    </style>

    <p><input id="btnCreateTimeAndSign" type="button" value="生成_timestamp和_sign" /> <input id="btnSubmit" type="button" value="提  交" /></p>
    <p> key：<input id="key" name="key" style="width:200px" value="123b364005698ak20ea65fcj735k3532" /></p>
    <p>地址：<input id="url" name="url" style="width:600px" value="http://test.settle.api.mall.autohome.com.cn/settle/transfer" /></p>
    <form id="form1" action="" method="post">
        <table>
            <tr>
                <td class="col1">
                    _appid:
                </td>
                <td class="col2">
                    <input id="_appid" name="_appid" value="mall" />
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
                    format:
                </td>
                <td class="col2">
                    <input id="format" name="format" value="json" />
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
                    out_biz_no(业务订单号):
                </td>
                <td class="col2">
                    <input id="out_biz_no" name="out_biz_no" value="2015051801" />
                </td>
            </tr>
           
            <tr>
                <td class="col1">
                    out_trade_no(交易原始凭证号):
                </td>
                <td class="col2">
                    <input id="out_trade_no" name="out_trade_no" value="2015051801" />
                </td>
            </tr>
            <tr>
                <td class="col1">
                    amount:
                </td>
                <td class="col2">
                    <input id="amount" name="amount" value="0.01" />
                </td>
            </tr>
             <tr>
                <td class="col1">
                    fundout_identity_no:
                </td>
                <td class="col2">
                    <input id="fundout_identity_no" name="fundout_identity_no" value="200000830004" />
                </td>
            </tr>
            <tr>
                <td class="col1">
                    fundout_identity_type:
                </td>
                <td class="col2">
                    <input id="fundout_identity_type"  name="fundout_identity_type" value="MEMBER_ID" />
                </td>
            </tr>
            <tr>
                <td class="col1">
                    fundout_account_type:
                </td>
                <td class="col2">
                    <input id="fundout_account_type"  name="fundout_account_type" value="201" />
                </td>
            </tr>
            <tr>
                <td class="col1">
                    identity_no:
                </td>
                <td class="col2">
                    <input id="identity_no" name="identity_no" value="100000070002" />
                </td>
            </tr>
            <tr>
                <td class="col1">
                    identity_type:
                </td>
                <td class="col2">
                    <input id="identity_type"  name="identity_type" value="MEMBER_ID" />
                </td>
            </tr>
            <tr>
                <td class="col1">
                    account_type:
                </td>
                <td class="col2">
                    <input id="account_type"  name="account_type" value="101" />
                </td>
            </tr>
            <tr>
                <td class="col1">
                    memo:
                </td>
                <td class="col2">
                    <input id="memo"  name="memo" value="test" />
                </td>
            </tr>
            <tr>
                <td class="col1">
                    notify_url:
                </td>
                <td class="col2">
                    <input id="notify_url"  name="notify_url" value="" />
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