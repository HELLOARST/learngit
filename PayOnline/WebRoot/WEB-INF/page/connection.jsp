<%@ page language="java"  pageEncoding="GBK"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <title>����֧������</title>  
    <meta http-equiv="pragma" content="no-cache">  
    <meta http-equiv="cache-control" content="no-cache">  
    <meta http-equiv="expires" content="0">      
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
    <meta http-equiv="description" content="This is my page">  
  </head>  
    
  <body onload="JavaScript:document.forms[0].submit()">  
    <!-- http://tech.yeepay.com:8080/robot/debug.action   
                           ������ױ�֧���ĵ���·����������֮ǰ����õ������� -->  
    <form name="yeepay" action=" https://www.yeepay.com/app-merchant-proxy/node" method="post">  
      
        <input type="hidden" name="p0_Cmd" value="${messageType}">   <!-- �����������֧���̶�ΪBuy -->  
        <input type="hidden" name="p1_Merid" value="${merchantID}"> <!-- �̼�ID -->  
        <input type="hidden" name="p2_Order" value="${orderId}">  <!-- �̼ҽ��׶����� -->  
        <input type="hidden" name="p3_Amt" value="${amount}">   <!-- ������� -->  
        <input type="hidden" name="p4_Cur" value="${currency}">  <!-- ���ҵ�λ -->  
        <input type="hidden" name="p5_Pid" value="${productId}">  <!-- ��ƷID -->  
        <input type="hidden" name="p6_Pcat" value="${productCat}">  <!-- ��Ʒ���� -->  
        <input type="hidden" name="p7_Pdesc" value="${productDesc}">  <!-- ��Ʒ���� -->  
        <input type="hidden" name="p8-Url" value="${merchantCallbackURL}">  <!-- ���׽��֪ͨ��ַ -->  
        <input type="hidden" name="p9_SAF" value="${addressFlag}">  <!-- ��Ҫ��д�ͻ���ַ0������Ҫ 1����Ҫ -->  
        <input type="hidden" name="pa_MP" value="${sMctProperties}">  <!-- �̼���չ��Ϣ -->  
        <input type="hidden" name="pd_Frpid" value="${frpid}">  <!-- ����ID -->  
        <input type="hidden" name="pr_NeedResponse" value="0">  <!-- Ӧ�����Ϊ"1"����ҪӦ����� "0":����ҪӦ����� -->  
        <!-- MD5-hmac��֤�� -->  
        <input type="hidden" name="hmac" value="${hmac}">  
        <!-- <input type="submit" value="��  ��"> -->  
    </form>  
  </body>  
</html> 