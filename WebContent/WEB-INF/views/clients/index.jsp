<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="/WEB-INF/views/layout/app.jsp">

<c:param name="content">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <h2>顧客　一覧</h2>
        <table id="client_list">
            <tbody>
            <tr>
                    <th class="client_name">氏名</th>
                    <th class="client_company">会社</th>
                    <th class="client_phone">電話番号</th>
                    <th class="client_address">住所</th>
                    <th class="client_action">操作</th>
                </tr>
                 <c:forEach var="client" items="${clients}" varStatus="status">
                    <tr class="row${status.count % 2}">
                        <td class="client_name"><c:out value="${client.name}" /></td>
                        <td class="client_company"><c:out value="${client.company}" /></td>
                        <td class="client_phone"><c:out value="${client.phone}" /></td>
                        <td class="client_address"><c:out value="${client.address}" /></td>
                        <td class="client_action"><a href="<c:url value='/clients/show?id=${client.id}' />">詳細を見る</a></td>
                    </tr>
                 </c:forEach>
            </tbody>
        </table>



        <div id="pagination">
            （全 ${clients_count} 件）<br />
            <c:forEach var="i" begin="1" end="${((clients_count - 1) / 15) + 1}" step="1">
                <c:choose>
                    <c:when test="${i == page}">
                        <c:out value="${i}" />&nbsp;
                    </c:when>
                    <c:otherwise>
                        <a href="<c:url value='/clients/index?page=${i}' />"><c:out value="${i}" /></a>&nbsp;
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>
        <p><a href="<c:url value='/clients/new' />">新規顧客の登録</a></p>

    </c:param>
</c:import>