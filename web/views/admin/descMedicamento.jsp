<%-- 
    Document   : accedidoAdmin
    Created on : May 18, 2013, 3:35:43 AM
    Author     : randy
--%>

<%@page import="uci.cu.util.DISPATCHER"%>
<%@page import="uci.cu.dao.impl.MedicamentoDAO"%>
<%@page import="uci.cu.logic.Medicamento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <jsp:include page="/views/parts/title.jsp"></jsp:include>   
    <jsp:include page="/views/parts/head.jsp"></jsp:include>    
  </head>
  <% DISPATCHER.redirect("../../index.jsp", response, request); %>
  <body data-spy="scroll" data-target=".bs-docs-sidebar"> 
       <jsp:include page="/views/parts/navbar.jsp"></jsp:include>
       <jsp:include page="/views/parts/banner.jsp"></jsp:include>
       <div class="container">
            <div class="row">
                <jsp:include page="/views/parts/menuAdmin.jsp"></jsp:include>
                
                <div class="span9">
                    <section>
                        <%
                            String nombre = request.getParameter("nombre");
                            String tipo = request.getParameter("tipo");
                            
                            Medicamento m = new Medicamento(nombre, tipo);
                            String desc = (new MedicamentoDAO()).obtenerPorID(m).getDescripcion();
                        
                        %>
                        
                        <!--Aki va el formulario-->
                        <legend>Descripci&oacute;n</legend>
                        <p><%=desc%></p>
                        
                        <a class="btn pull-left btn-large" href="../admin/listarMedicamentos.jsp">Atr&aacute;s</a>
                    </section>
                </div>
            </div>
        </div>
        <jsp:include page="/views/parts/footer.jsp"></jsp:include> 
  </body>
</html>
