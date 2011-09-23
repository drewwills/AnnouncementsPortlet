<%@ include file="/WEB-INF/jsp/include.jsp" %>
<%-- 
    Licensed to Jasig under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Jasig licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License. You may obtain a
    copy of the License at:
    
    http://www.apache.org/licenses/LICENSE-2.0
    
    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on
    an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied. See the License for the
    specific language governing permissions and limitations
    under the License.    
--%>

<div class="portlet annplt-content">
    <div data-role="header" class="news-reader-back-bar titlebar portlet-titlebar">
        <a class="news-reader-back-link" href="<portlet:renderURL/>" data-role="button" data-icon="back" data-inline="true">Back</a>
        <h2 class="title">Announcement</h2>
    </div>

    <div data-role="content" class="portlet-content">
        <span class="category"><c:out value="${announcement.parent.title}"/></span>
        <c:if test="${displayPublishDate}"><span class="date"><fmt:formatDate value="${announcement.startDisplay}" dateStyle="medium"/></span></c:if>
        <h2><c:out value="${announcement.title}"/></h2>
        <span class="expiration"><spring:message code="displayFull.displayEnd"/>
            <c:choose>
                <c:when test="${announcement.endDisplay == null}">
                    <spring:message code="displayFull.displayEnd.unspecified"/>
                </c:when>
                <c:otherwise>
                    <fmt:formatDate value="${announcement.endDisplay}" dateStyle="long"/>
                </c:otherwise>
            </c:choose>
        </span>
        <c:if test="${not empty announcement.link}">
            <div class="reference">
                <spring:message code="display.link.prefix"/> <a href="${announcement.link}"><span><spring:message code="display.link.placeholder"/></span></a>
            </div>
        </c:if>
    
        <div class="body"><c:out value="${announcement.message}" escapeXml="false"/></div>
    </div>

</div>