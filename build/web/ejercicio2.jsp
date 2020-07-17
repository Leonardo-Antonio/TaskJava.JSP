<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.problemasPropuestos.ds.EjercicioDos"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Ejercicio2</title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center mt-4">Máximo de 3 numeros</h1>
            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-5 col-sm-12">
                    <form method="post">
                        <input type="number" name="num1" class="form-control mt-3"/>
                        <input type="number" name="num2" class="form-control my-3"/>
                        <input type="number" name="num3" class="form-control my-3"/>
                        <input type="submit" class="btn btn-block btn-primary"/>
                    </form>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-5 col-sm-12 text-center mt-4 alert alert-primary">
                    <%
                        try {
                            float num1 = Float.parseFloat(request.getParameter("num1"));
                            float num2 = Float.parseFloat(request.getParameter("num2"));
                            float num3 = Float.parseFloat(request.getParameter("num3"));
                            EjercicioDos eje2 = new EjercicioDos(num1, num2, num3);
                            out.print(eje2.max());
                        } catch (Exception e) {
                            out.print("Llene los campos");
                        }

                    %>
                </div>
            </div>
        </div> 
    </body>
</html>
