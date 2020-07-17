<%@page import="com.problemasPropuestos.ds.EjercicioTres"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Ejercicio3</title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center mt-5">Área</h1>

            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-5 col-sm-12">
                    <select class="form-control" name="figura" id="figura">
                        <option>[Ingrese opción]</option>>
                        <%
                            EjercicioTres eje3 = new EjercicioTres();
                            for (String item : eje3.Figura) {
                                out.print("<option value=" + item + ">" + item + "</option>");
                            }
                        %>
                    </select>
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-5 col-sm-12">
                    <form method="post">
                        <div id="space"></div>
                        <button class="btn btn-primary btn-block mt-3" type="submit">
                            Calcular área
                        </button>
                    </form>
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-5 col-sm-12 text-center alert alert-primary mt-4">
            <%
                try {
                    if (request.getParameter("radio") != null) {                        
                        float radio = Float.parseFloat(request.getParameter("radio"));
                        out.print(eje3.Circulo(radio));
                        
                    } else if (request.getParameter("lado") != null) {                        
                        float lado = Float.parseFloat(request.getParameter("lado"));
                        out.print(eje3.Cuadrado(lado));
                        
                    } else if (request.getParameter("baseT") != null) {                        
                        float base = Float.parseFloat(request.getParameter("baseT"));
                        float altura = Float.parseFloat(request.getParameter("alturaT"));
                        out.print(eje3.Triangulo(base, altura));
                        
                    } else if (request.getParameter("baseR") != null) {                        
                        float base = Float.parseFloat(request.getParameter("baseR"));
                        float altura = Float.parseFloat(request.getParameter("alturaR"));
                        out.print(eje3.Rectángulo(base, altura));
                        
                    } else{
                        out.print("Eliga una figura");
                    }
                } catch (Exception e) {
                    out.print("Llene los campos" + e);
                }

            %>
            </div>
            </div>
        </div>
        <script>
            const Figura = document.getElementById("figura");
            const space = document.getElementById("space");
            const cuadrado = '<input class="form-control my-3" type="number" name="lado">';
            const triangulo = `
                <input class="form-control my-3" type="number" name="baseT">
                <input class="form-control my-3" type="number" name="alturaT">
                `;
            const rectangulo = `
                <input class="form-control my-3" type="number" name="baseR">
                <input class="form-control my-3" type="number" name="alturaR">
                `;
            const circulo = '<input class="form-control my-3" type="number" name="radio">';

            Figura.addEventListener("change", (event) => {
                event.preventDefault();
                let valor = Figura.value;
                if (valor === 'Cuadrado') {
                    space.innerHTML = cuadrado;
                } else if (valor === 'Triangulo') {
                    space.innerHTML = triangulo;
                } else if (valor === 'Rectángulo') {
                    space.innerHTML = rectangulo;
                } else {
                    space.innerHTML = circulo;
                }
            });
        </script>

    </body>
</html>
