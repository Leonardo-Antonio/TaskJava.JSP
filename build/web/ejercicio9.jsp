<%@page import="com.problemasPropuestos.ds.EjercicioNueve"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Ejercicio9</title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center mt-4">
                Digite varios números naturales de una o dos cifras
            </h1>
            <div class="row justify-content-center mt-3">
                <div class="col-lg-6 col-md-5 col-sm-12">
                    <input name="num" type="number"
                           id="num"
                           class="form-control"/>
                    <button id="btn"
                            class="btn btn-block btn-primary mt-3">
                        Enviar
                    </button>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-5 col-sm-12 mt-3 alert alert-primary text-center">
                    <%
                        String numbers = request.getParameter("res");
                        try {
                            EjercicioNueve eje9 = new EjercicioNueve(numbers);
                            out.print(eje9.sumaTotal());
                        } catch (Exception e) {
                            out.print("Llene el campo con números que no sean > a 3 de longitud");                        
                        }
                    %>
                </div>
            </div>
        </div>

        <script>
            const input = document.getElementById('num');
            const btn = document.getElementById('btn');
            let datos = [];
            let data = "";
            btn.addEventListener('click', (e) => {
                e.preventDefault();
                let number = input.value;
                if (number.length === 2 || number.length === 1) {
                    datos.push(parseInt(input.value));
                    input.value = "";
                    console.log(datos);
                } else {
                    for (var i = 0; i < datos.length; i++) {
                        data += datos[i] + ",";
                    }
                    location.href = "http://localhost:8080/problemasPropuestos/ejercicio9.jsp?res=" + data.slice(0, -1);
                }
            });
        </script>
    </body>
</html>
