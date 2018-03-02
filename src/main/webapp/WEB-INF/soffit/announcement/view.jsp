<?xml version="1.0" encoding="UTF-8"?>
<!--

    Licensed to Apereo under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Apereo licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License.  You may obtain a
    copy of the License at the following location:

      http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.

-->
<!DOCTYPE web-app PUBLIC '-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN'
        'http://java.sun.com/dtd/web-app_2_3.dtd'>
<web-app>

    <display-name>Announcements Portlets</display-name>
    <description>Announcements Portlets</description>

    <context-param>
        <param-name>webAppRootKey</param-name>
        <param-value>announcements.root</param-value>
    </context-param>

    <context-param>
        <param-name>contextConfigLocation</param-name>
        <param-value>
            classpath:/context/applicationContext.xml, classpath:/context/databaseContext.xml
        </param-value>
    </context-param>

    <context-param>
        <param-name>log4jConfigLocation</param-name>
        <param-value>/WEB-INF/classes/log4j.properties</param-value>
    </context-param>

    <listener>
        <listener-class>org.springframework.web.util.WebAppRootListener</listener-class>
    </listener>

    <listener>
        <listener-class>org.springframework.web.util.Log4jConfigListener</listener-class>
    </listener>

    <listener>
        <listener-class>org.springframework.web.context.ContextLoaderListener</listener-class>
    </listener>

    <servlet>
        <servlet-name>ViewRendererServlet</servlet-name>
        <servlet-class>org.springframework.web.servlet.ViewRendererServlet</servlet-class>
        <load-on-startup>1</load-on-startup>
    </servlet>

    <servlet>
        <servlet-name>spring</servlet-name>
        <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
        <init-param>
            <param-name>contextConfigLocation</param-name>
            <param-value>classpath:/context/servlet/spring-servlet.xml</param-value>
        </init-param>
    </servlet>

    <!-- [INSERT JSPC FRAGMENT HERE] -->

    <servlet-mapping>
        <servlet-name>ViewRendererServlet</servlet-name>
        <url-pattern>/WEB-INF/servlet/view</url-pattern>
    </servlet-mapping>

    <servlet-mapping>
        <servlet-name>spring</servlet-name>
        <url-pattern>/getRssFeed</url-pattern>
    </servlet-mapping>

    <servlet-mapping>
        <servlet-name>spring</servlet-name>
        <url-pattern>/ajaxApprove</url-pattern>
    </servlet-mapping>

</web-app>