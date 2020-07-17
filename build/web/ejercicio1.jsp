<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.problemasPropuestos.ds.EjercicioUno"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Document</title>
    </head>
    <body>
        <div class="container mt-4">
            <h1 class="text-center">Numeros:</h1>

            <div class="row justify-content-center">
                <form class="col-lg-6 col-sm-12 col-md-5" method="post">
                    <input class="form-control" type="number" name="num1"/>
                    <input class="form-control my-3" type="number" name="num2"/>
                    <button class="btn btn-primary btn-block" type="submit">
                        enviar
                    </button>
                </form>
            </div>

            <div class="row justify-content-center mt-3">
                <div class="col-lg-6 col-sm-12 col-md-5 text-center alert alert-primary">
                    <%
                        float nums[] = new float[2];
                        String text[] = {"Máximo", "Minimo", "Promedio"};

                        if (request.getParameter("num1") != "" && request.getParameter("num2") != "") {
                            try {
                                nums[0] = Float.parseFloat(request.getParameter("num1"));
                                nums[1] = Float.parseFloat(request.getParameter("num2"));
                                
                                EjercicioUno eje1 = new EjercicioUno(nums[0], nums[1]);

                                for (int i = 0; i < eje1.main().length; i++) {
                                    out.println(text[i] + ": " + eje1.main()[i] + "<br/>");
                                }
                            } catch (Exception e) {
                                out.println( "A ocurrido no deje los campos vacios");
                            }

                        } else {
                            out.println("Llene todos los campos");
                        }
                    %>
                </div>
            </div>
        </div>
    </body>
</html>
