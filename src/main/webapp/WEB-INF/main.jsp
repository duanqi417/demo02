<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>课程管理</title>
    <style>
        .link{
            color: darkred;!important;
        }
    </style>
    <style>
        .table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            border-color:black;
        }
        .table th, .table td {
            padding: 4px;
            text-align: center;
            border: 1px solid #ccc;
        }
    </style>
</head>
<body>
    <div style="width: 75%;background-color: white;margin: 0 auto">
        <div style="height: 40px;text-align: center">
            <div style="font-size: 40px;font-family: 楷体">课程管理</div>
        </div>
        <div>
            <a href="/course/add_page" style="color: green;text-align: center">新增</a>
        </div>
        <!-- 表格数据 -->
        <table class="table">
            <thead>
            <tr>
                <th>序号</th>
                <th>课程名称</th>
                <th>课时</th>
                <th>所属学院</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
                <c:forEach items="${courses}" var="course"  varStatus="status">
                    <tr>
                        <td>${status.count}</td>
                        <td>${course.name}</td>
                        <td>${course.hours}</td>
                        <c:if test="${course.schools == 1}">
                            <td>计算机学院</td>
                        </c:if>
                        <c:if test="${course.schools == 2}">
                            <td>外国语学院</td>
                        </c:if>
                        <c:if test="${course.schools == 3}">
                            <td>马克思学院</td>
                        </c:if>
                        <c:if test="${course.schools == 4}">
                            <td>商学院</td>
                        </c:if>
                        <td><a class="link" href="/course/update_page?id=${course.id}&name=${course.name}&hours=${course.hours}&schools=${course.schools}" >修改</a>
                            <a class="link" href="/course/delete_solve?id=${course.id}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
    <script src="../static/js/main.js"></script>
</script>
</html>