<%@page import="com.problemasPropuestos.ds.EjercicioSeis"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Ejercicio6</title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center mt-4">Calculo de billetes y monedas</h1>
            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-5 col-sm-12">
                    <form method="post">
                        <input type="number" name="cant"
                               class="form-control my-3"/>
                        <button class="btn btn-block btn-primary">
                            Calcular
                        </button>
                    </form>
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-5 col-sm-12 text-center alert alert-primary mt-3">
                    <%
                        try {
                            int cant = Integer.parseInt(request.getParameter("cant"));
                            EjercicioSeis eje6 = new EjercicioSeis(cant);
                            int item = 0;
                            for (int i : eje6.devolucion()) {
                                out.print( eje6.billetes[item++] + i + "</br>" );
                            }
                        } catch (Exception e) {
                            out.print("Llene el campo");
                        }
                    %>
                </div>
            </div>
        </div>
    </body>
</html>
