<%@ page language="java"  pageEncoding="GBK"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <title>发送支付请求</title>  
    <meta http-equiv="pragma" content="no-cache">  
    <meta http-equiv="cache-control" content="no-cache">  
    <meta http-equiv="expires" content="0">      
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
    <meta http-equiv="description" content="This is my page">  
  </head>  
    
  <body onload="JavaScript:document.forms[0].submit()">  
    <!-- http://tech.yeepay.com:8080/robot/debug.action   
                           这个是易宝支付的调试路径，在做好之前最好用调试网关 -->  
    <form name="yeepay" action=" https://www.yeepay.com/app-merchant-proxy/node" method="post">  
      
        <input type="hidden" name="p0_Cmd" value="${messageType}">   <!-- 请求命令，在线支付固定为Buy -->  
        <input type="hidden" name="p1_Merid" value="${merchantID}"> <!-- 商家ID -->  
        <input type="hidden" name="p2_Order" value="${orderId}">  <!-- 商家交易订单号 -->  
        <input type="hidden" name="p3_Amt" value="${amount}">   <!-- 订单金额 -->  
        <input type="hidden" name="p4_Cur" value="${currency}">  <!-- 货币单位 -->  
        <input type="hidden" name="p5_Pid" value="${productId}">  <!-- 商品ID -->  
        <input type="hidden" name="p6_Pcat" value="${productCat}">  <!-- 商品种类 -->  
        <input type="hidden" name="p7_Pdesc" value="${productDesc}">  <!-- 商品描述 -->  
        <input type="hidden" name="p8-Url" value="${merchantCallbackURL}">  <!-- 交易结果通知地址 -->  
        <input type="hidden" name="p9_SAF" value="${addressFlag}">  <!-- 需要填写送货地址0：不需要 1：需要 -->  
        <input type="hidden" name="pa_MP" value="${sMctProperties}">  <!-- 商家扩展信息 -->  
        <input type="hidden" name="pd_Frpid" value="${frpid}">  <!-- 银行ID -->  
        <input type="hidden" name="pr_NeedResponse" value="0">  <!-- 应答机制为"1"：需要应答机制 "0":不需要应答机制 -->  
        <!-- MD5-hmac验证码 -->  
        <input type="hidden" name="hmac" value="${hmac}">  
        <!-- <input type="submit" value="发  送"> -->  
    </form>  
  </body>  
</html> 