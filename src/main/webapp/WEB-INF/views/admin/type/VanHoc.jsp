<%@ page import="com.example.model.Story" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 18/11/2023
  Time: 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<base href="${pageContext.servletContext.contextPath}/">
<link href="css/type.css" rel="stylesheet" />
<div class="list-stories">
    <h3>Danh sách truyện:</h3>
    <ul>
        <%
            List<Story> stories = (List<Story>) request.getAttribute("stories");
            for (Story story : stories) {
        %>
        <li class="story-list" data-id="<%= story.getId() %>" itemscope="" itemtype="https://schema.org/Book">
            <a href="<%= story.getUrl() %>" title="<%= story.getTitle() %>">
                <img src="<%= story.getImage() %>" itemprop="image" class="cover" width="35" height="50" alt="<%= story.getTitle() %>">

            </a>
            <div class="info">
                <h3 class="title" itemprop="name">
                    <a href="<%= story.getUrl() %>" itemprop="url" title="<%= story.getTitle() %>">
                        <%= story.getTitle() %>
                    </a>
                </h3>
                <p itemprop="author">
                    <i class="fa-user"></i> <%= story.getAuthor() %>
                </p>
            </div>
        </li>
        <% } %>
    </ul>
</div>
</html>
