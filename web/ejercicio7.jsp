<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Ejercicio7</title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center mt-4">Números naturales impares</h1>
            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-5 col-sm-12">
                    <div class="alert alert-primary mt-3">
                        <%
                            for(int i = 1 ; i < 30 ; i++ ){
                                if(i%2 == 0){
                                    continue;
                                }else{
                                    out.print(i + " ");
                                }
                            }
                        %>
                    </div>
                </div>
            </div>
    </body>
</html>
