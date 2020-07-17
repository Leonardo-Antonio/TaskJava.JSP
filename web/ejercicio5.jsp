<%@page import="com.problemasPropuestos.ds.EjercicioCinco"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Ejercicio5</title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center mt-4">Capicúa</h1>

            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-5 col-sm-12">
                    <form method="post">
                        <input type="text" name="text"
                               class="form-control mt-4"
                               autocomplete="off"
                               placeholder="Texto"/>
                        <button class="btn btn-block btn-primary my-3">
                            Verificar
                        </button>
                    </form>
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-5 col-sm-12 alert alert-primary text-center">
                    <%
                        try {
                            String cadena = request.getParameter("text");
                            EjercicioCinco eje5 = new EjercicioCinco(cadena);
                            out.print(eje5.capicua());
                        } catch (Exception e) {
                            out.print("Solo deben haber numeros");
                        }

                    %>
                </div>
            </div>
        </div>
    </body>
</html>
