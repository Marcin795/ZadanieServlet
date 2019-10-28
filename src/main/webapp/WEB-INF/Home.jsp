<%--
  Created by IntelliJ IDEA.
  User: Marcin
  Date: 27.10.2019
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="false"%>
<html>
<head>
    <title>Najmiejszy Elemęt</title>
    <link rel='stylesheet' href='webjars/bootstrap/4.3.1/css/bootstrap.min.css'>
    <style>
        .vertical-center {
            min-height: 100%;  /* Fallback for browsers do NOT support vh unit */
            min-height: 100vh; /* These two lines are counted as one :-)       */

            display: flex;
            align-items: center;
        }
    </style>
</head>
<body>
    <div class="container vertical-center">
        <form>
            <div class="form-group">
                <label for="login">Login</label>
                <input type="text" class="form-control" id="login" name="login">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</body>
</html>
