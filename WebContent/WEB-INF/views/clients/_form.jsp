<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" /><br />
        </c:forEach>

          </div>
</c:if>

<label for="name">氏名</label><br />
<input type="text" name="name" value="${client.name}" />
<br /><br />

<label for="company">会社</label><br />
<input type="text" name="company" value="${client.company}" />
<br /><br />

<label for="phone">電話番号</label><br />
<input type="text" name="phone" value="${client.phone}" />
<br /><br />

<label for="address">住所</label><br />
<input type="text" name="address" value="${client.address}" />
<br /><br />

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">登録</button>