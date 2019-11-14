<%@page import="modelo.ArticuloDAO"%>
<%@page import="modelo.Articulo"%>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    Articulo art = new ArticuloDAO().Detalle(id);
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="recursos/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="principal.jsp"/>
        <div class="contenedor">
            <div class="caja">
                <h1 class="mod text-center"><%=art.getMODELO_ART()%></h1><br>
                <div class="row">
                    <div class="izquierda ">
                        <img src="<%=art.getIMAGEN_ART()%>" width="350" height="300"/>
                    </div>
                    <div class="derecha ">
                        <h2 class="desc"><%=art.getDESC_ART()%></h2>
                        <label class="txt">Disponibles (<%=art.getSTOCK_ART()%>)</label>

                        <h2 class="precio">S/. <%=art.getPRECIO_ART()%> </h2>
                        <p><b>Disponibilidad:</b> En Stock</p>
                        <p><b>Condición:</b> Nuevo</p>
                        <p><b>Marca:</b> ...</p>
                        <div class="btns">
                            <a class="btn btn-outline-success" href="Controlador?accion=AgregarCarrito&id=<%=art.getID_ART()%>"><i class="fa fa-shopping-cart"> AGREGAR AL CARRITO</i></a>&nbsp;
                            <a class="btn btn-outline-danger" href="Controlador?accion=Comprar&id=<%=art.getID_ART()%>">COMPRAR</a><br>
                            <div class="text-center">
                                <a class="regresar" href="Controlador?accion=home">Regresar </a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
</div>
</div>
</div>
</body>
</html>
