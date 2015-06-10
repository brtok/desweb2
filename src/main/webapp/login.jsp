<%-- 
    Document   : login
    Created on : 30/04/2015, 18:31:32
    Author     : Bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="erro.jsp" isErrorPage="false" %>

<jsp:useBean class="pratica.jsp.loginBean" id="login" scope="session"/>
<jsp:setProperty name="login" property="*" />

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
   <head>
      <title>Login</title>
   </head>
   <body>
       <center>
       <h1>Login</h1>
       <form method="post" action="/pratica-jsp/login.jsp">
         Código: <input type="text" name="login"/><br/><br/>
         Nome: <input type="password" name="senha"/><br/><br/>
         Perfil: <select name="perfil">
                     <option value="1">Cliente</option>
                     <option value="2">Gerente</option>
                     <option value="3">Administrador</option>
                 <select><br/><br/>
         <input type="submit" value="Enviar"/>
       </form>
       <% 
            if (request.getMethod().equals("POST")) {
                if (login.getLogin().equals(login.getSenha())) {
       %>
            <br />
            <div style="color:blue"><% out.print(login.getPerfilString()); %>,
                login bem sucedido, para <% out.print(login.getLogin()); %>
                às <% out.print(login.getDataHoraServidor()); %>.</div>
       <%       } else {       %>
            <br />
            <div style="color:red; font-style:italic">Acesso Negado.</div>
       <%       }
            }
       %>
       </center>
   </body>
</html>