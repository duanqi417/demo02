<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>修改课程</title>
    <style>
        .btn-exit {
            background-color: red;
            color: #fff;
            border: none;
            font-weight: bold;
            font-size: 18px;
            font-family: 华文楷体;
            cursor: pointer;
            display: flex;
            justify-content: center;
            width: 62%; /* optional */
            margin-top: 20px;
            margin-left: auto;
            margin-right: auto;
        }
        .signup-form {
            background-color: white;
            max-width: 400px;
            margin: 0 auto;
            text-align: center;
            font-size: 24px;
            font-family: 华文楷体;
        }
        .btn-submit {
            background-color: green;
            color: #fff;
            border: none;
            font-weight: bold;
            font-size: 18px;
            font-family: 华文楷体;
            cursor: pointer;
            display: flex;
            justify-content: center;
            width: 62%; /* optional */
            margin: 0 auto; /* optional */
        }
    </style>
</head>
<body>
    <form class="signup-form" action="/course/update_solve" method="post">
        <%--隐藏域，提交id--%>
        <input type="hidden" name="id" value="${course.id}">
        <h2 style="text-align: center;">修改课程</h2>
        <div style="text-align: center;">
            <label for="course-name">课程名称</label>
            <input style="font-family: 华文楷体" type="text" id="course-name" name="name" required value="${course.name}">
        </div>
        <div class="form-group">
            <label for="course-hours">课&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;时</label>
            <input style="font-family: 华文楷体" type="number" id="course-hours" name="hours" required min="1" value="${course.hours}">
        </div>
        <div class="form-group">
            <label style="font-size: 24px" for="college">所属学院</label>
            <select style="font-family: 华文楷体;font-size: 24px" id="college" name="schools" required >
                <option value="">请选择学院</option>
                <option value="1" ${course.schools eq 1 ? 'selected' : ''}>计算机学院</option>
                <option value="2" ${course.schools eq 2 ? 'selected' : ''}>外国语学院</option>
                <option value="1" ${course.schools eq 3 ? 'selected' : ''}>马克思学院</option>
                <option value="2" ${course.schools eq 3 ? 'selected' : ''}>商学院</option>
            </select>
        </div>
        <button type="submit" class="btn-submit">修改课程</button>
        <button type="button" class="btn-exit" id="btn-exit">退出</button>
    </form>
</body>
    <script src="../static/js/update_course.js"></script>
</html>
