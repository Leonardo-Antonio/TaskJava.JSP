<%@page import="com.problemasPropuestos.ds.EjercicioDiez"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Ejercicio10</title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center mt-4">
                Digite varios números enteros
            </h1>           
            <div class="row justify-content-center mt-4">
                <form method="post" id="form" 
                      class="col-lg-6 col-md-5 col-sm-12">
                    <input name="num" type="number"
                           id="num"
                           class="form-control"/>
                    <button type="submit" 
                            class="btn btn-block btn-primary mt-3">
                        Enviar
                    </button>
                </form>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-5 col-sm-12 alert alert-primary mt-3 text-center">
                    <%
                        String resp = request.getParameter("nums");
                        try {
                            EjercicioDiez eje10 = new EjercicioDiez(resp);
                            int i = 0;
                            for (int[] numbers : eje10.resultFinal()) {
                                out.print(eje10.resultsType[i++]);
                                for (int number : numbers) {
                                    out.print(number + " ");
                                }
                                out.print("</br>");
                            }
                        } catch (Exception e) {
                            out.print("Llene el campo");
                        }
                    %>  
                </div>
            </div>

        </div>
        <script>
            const form = document.getElementById('form');
            const input = document.getElementById('num');
            let numbers = "";
            form.addEventListener('submit', (event) => {
                event.preventDefault();
                if (input.value === "") {
                    input.value = "";
                } else if (input.value === "0") {
                    location.href = "http://localhost:8080/problemasPropuestos/ejercicio10.jsp?nums=" + numbers.slice(0, -1);
                } else {
                    numbers += input.value + ",";
                    input.value = "";
                }
                
            });
        </script>
    </body>
</html>

