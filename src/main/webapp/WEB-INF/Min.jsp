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
        <script>
            function getMin() {
                let numbers = document.getElementById('numbers').value.split(',').map(Number);
                let min = numbers[0];
                for(const number of numbers) {
                    if(number < min) {
                        min = number;
                    }
                }
                document.getElementById('wynik').innerHTML = min.toString();
                let historia = document.getElementById('historia').innerText;

                console.log('h: ' + historia + ' len: ' + historia.length);
                if(historia.length > 0) {
                    historia = historia.split(', ');
                } else {
                    historia = [];
                }
                historia.push(min.toString());
                console.log(historia);
                document.getElementById('historia').innerHTML = historia.toString();
            }
        </script>
    </head>
    <body>
        <div class="container vertical-center">
            <div class="container">
                <span class="align-middle">Hello <%=request.getParameter("login")%></span>
                <label for="numbers">Login</label>
                <textarea id="numbers"></textarea>
                <button onclick="getMin()" class="btn btn-primary">Wyznacz</button>
                <span>Wynik: <span id="wynik"></span></span>
                <span>Ostatnie wyniki: <span id="historia"></span></span>
                <form action="/ZadanieServlet/">
                    <button name="reset" value="reset" class="btn btn-primary">Home</button>
                </form>
            </div>
        </div>
    </body>
</html>
