<%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSTL_fn_startsWith_and_endsWith_function
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2022/1/5
  Time(创建时间)： 13:32
  Description(描述)：
JSTL fn:startsWith() 函数与 Java 中的 startsWith 方法相似，用于判断一个字符串是否以指定的前缀开头。
JSTL fn:endsWith() 函数与 Java 中的 endsWith 方法相似，用于判断一个字符串是否以指定的后缀结尾。
JSP fn:startsWith() 函数的语法如下。
boolean fn:startsWith(String sourceStr, String startprefix)
其中，sourceStr 表示源字符串，startprefix 是指定的前缀。
JSP fn:endsWith() 函数的语法如下。
boolean fn:endsWith(String sourceStr, String endprefix)
其中，sourceStr 表示源字符串，endprefix 是指定的后缀。
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>
    <c:set var="str" value="1234567890" scope="session"/>
    字符串：
    <c:out value="${sessionScope.str}" escapeXml="true" default="null"/>
    <br/>
    <br/>
    开头：
    <br/>
    12:
    ${fn:startsWith(str, '12')}
    <br/>
    1:
    ${fn:startsWith(str, '1')}
    <br/>
    13:
    ${fn:startsWith(str, '13')}
    <br/>
    90:
    ${fn:startsWith(str, '90')}
    <br/>
    <br/>
    结尾：
    <br/>
    123:
    ${fn:endsWith(str, '123')}
    <br/>
    9:
    ${fn:endsWith(str, '9')}
    <br/>
    890:
    ${fn:endsWith(str, '890')}
    <br/>
    :
    ${fn:endsWith(str, '')}
    <br/>
    null:
    ${fn:endsWith(str, null)}
</h3>
</body>
</html>
