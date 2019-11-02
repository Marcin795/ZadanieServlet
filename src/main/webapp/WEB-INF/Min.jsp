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

                let historiaSS;

                if(sessionStorage.getItem('historia') != null) {
                    historiaSS = sessionStorage.getItem('historia');
                } else {
                    historiaSS = [];
                }

                if(historiaSS.length > 0) {
                    historiaSS = historiaSS.split(',');
                }

                historiaSS.push(min.toString());
                console.log(historiaSS);

                document.getElementById('historia').innerHTML = historiaSS.toString();
                sessionStorage.setItem('historia', historiaSS);
            }

            function onLoad() {
                console.log('tiggered');
                let historiaSS;

                if(sessionStorage.getItem('historia') != null) {
                    historiaSS = sessionStorage.getItem('historia');
                } else {
                    historiaSS = [];
                }

                document.getElementById('historia').innerHTML = historiaSS.toString();
            }
        </script>
    </head>
    <body onload="onLoad()">
        <div class="container vertical-center">
            <div class="container">
                <p class="align-middle">Hello <%=request.getParameter("login")%></p>
                <div class="container">
                    <textarea id="numbers"></textarea><br><br>
                    <button onclick="getMin()" class="btn btn-primary">Wyznacz</button>
                </div>
                <p>Wynik: <span id="wynik"></span></p>
                <p>Ostatnie wyniki: <span id="historia"></span></p>
                <form action="/ZadanieServlet/hehe">
                    <button name="reset" value="reset" class="btn btn-primary">Home</button>
                </form>
            </div>
        </div>
    </body>
</html>
