<%@page import="com.problemasPropuestos.ds.EjercicioCuatro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Ejercicio4</title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center mt-4">Calcular tiempo</h1>  
            <div class="row justify-content-center">
                <form method="post" class="col-lg-6 col-md-5 col-sm-12">
                    <input type="number" name="distancia"
                           class="form-control my-3"
                           placeholder="Distancia en Km"/>
                    <input type="number" name="velocidad"
                           class="form-control my-3"
                           placeholder="Velocidad en Km/h"/>
                    <button class="btn btn-block btn-primary">
                        Calcular
                    </button>
                </form>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-5 col-sm-12 alert alert-primary mt-4 text-center">
                    <%
                        try {
                            float distancia = Float.parseFloat(request.getParameter("distancia"));
                            float velocidad = Float.parseFloat(request.getParameter("velocidad"));
                            EjercicioCuatro eje4 = new EjercicioCuatro(distancia, velocidad);
                            
                            out.print(eje4.calcularTiempo());
                        } catch (Exception e) {
                            out.print("Llene los campos");
                        }
                    %>
                </div>                
            </div>
        </div>
    </body>
</html>
