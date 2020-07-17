<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Ejercicio8</title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center mt-4">Números pares en el rango de 40 - 80</h1>
            <div class="row justify-content-center mt-4">
                <div class="alert alert-primary">
                    <%
                        for (int i = 40; i <= 80; i++) {
                            if (i % 2 == 0) {                                
                                if (i == 80) {
                                    out.print(i);
                                    return;
                                }
                                out.print(i + " - ");

                            }
                        }
                    %>   
                </div>
            </div>

        </div>
    </body>
</html>
