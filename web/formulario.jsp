<%-- 
    Document   : formulario
    Created on : 7/07/2018, 06:15:41 PM
    Author     : Juan
--%>

<%@page import="Modelo.Pedido"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pedido de productos</title>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/styles_1.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="logo"></div>
        
        <div class="contFormulario">
            <div class="formulario"><form action="Controlador" method="POST">
                <table>
                    <tr>
                        <td>Nombre:&nbsp;&nbsp;</td><td><input type="text" name="nombreComprador"/></td>
                    </tr>
                    <tr>
                        <td>Apellido:&nbsp;&nbsp;</td><td><input type="text" name="apellidoComprador"/></td>
                    </tr>
                    <tr>
                        <td>Tipo de documento:&nbsp;&nbsp;</td>
                            <td>
                                <select name="combolista" >
                                    <option value="cedulaCiudadania">Cédula de ciudadanía</option>
                                    <option value="cedulaExtranjeria">Cédula de extranjeria</option>
                                    <option value="pasaporte">Pasaporte</option>
                                </select>
                            </td>
                    </tr>
                    <tr>
                        <td>Documento:&nbsp;&nbsp;</td><td><input type="text" name="documento"/></td>
                    </tr>
                    <tr>
                        <td>Opciones de compra:&nbsp;&nbsp;</td>
                            <td>
                                <select name="comboOpciones" >
                                    <option value="camisasFormales">Camisas formales&nbsp;&nbsp;</option>
                                    <option value="pantalonesFormales">Pantalones formales&nbsp;&nbsp;</option>
                                    <option value="chaquetas">Chaquetas&nbsp;&nbsp;</option>
                                </select>
                            </td>
                    </tr>
                    <tr>
                        <td>Cantidad de productos:&nbsp;&nbsp;</td><td><input type="text" name="cantidadProduc"/></td>
                    </tr>
                    <tr>
                        <td>Fecha de entrega: </td><td><input type="text" name="fechaEntrega"/></td>
                    </tr>
                    <tr>
                        <td>Hora de entrega: </td><td><input type="text" name="horaEntrega"/></td>
                    </tr>
                    <tr>
                        <td>Dirección: </td><td><input type="text" name="direccionEntrega"/></td>
                    </tr>
                    <tr>
                        <td><br><button type="submit">Enviar</button></td>
                    </tr>
                    <%
                        Pedido pedido = new Pedido();
                        pedido = (Pedido)request.getAttribute("objetoJava");
                        if(pedido != null) {
                            out.print(pedido.getCantidadProductos());
                        }
                    %>
                </table>
            </form></div>
        </div>
    </body>
</html>
