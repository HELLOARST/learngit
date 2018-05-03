<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
 String basepath=request.getContextPath();
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  
  <body>
     恭喜！支付成功<br><br><br>
 
 	业务类型:	<%=request.getAttribute("r0_Cmd") %><br>	 
 
 	扣款状态：	<%=request.getAttribute("r1_Code")%><br>	 
 
 	易宝订单系统订单号：	<%=request.getAttribute("r2_TrxId")%><br>	 
 
 	扣款金额：	<%=request.getAttribute("r3_Amt")%><br>	 
 
 	交易币种：	<%=request.getAttribute("r4_Cur")%><br> 
 
 	商品ID：	<%=request.getAttribute("r5_Pid")%><br>	 
 
 	商户订单号：	<%=request.getAttribute("r6_Order")%><br>	 
 
 	易宝会员ID：	<%=request.getAttribute("r7_Uid")%><br>	 
 
 	商户扩展信息：	<%=request.getAttribute("r8_MP")%><br>	 
 
 	交易结果通知类型：	<%=request.getAttribute("r9_BType")%><br>	 
 
 	支付银行：	<%=request.getAttribute("rb_BankId")%><br>	 
 
 	支付时间：	<%=request.getAttribute("rp_PayDate")%><br>	

  </body>
</html>
