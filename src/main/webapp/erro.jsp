<%@page contentType="text/html" %>
<%@page pageEncoding="UTF-8" %>
<%@page isErrorPage="true" %>
<%@page import="java.io.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
    <head>
        <title>Cadastro - Erro inesperado</title>
        <link rel='stylesheet' href='css/geral.css' type='text/css'>
    </head>
    <body>
        <p class='erro'>Ocorreu o seguinte erro no processamento:</p>
        <p class='erro'>
            <%
                out.println(exception);
                exception.printStackTrace(new PrintWriter(out));
            %>
        </p>
        <p class='erro'>Por favor, tente repetir a operação
            Caso o problema persista entre em contato com o suporte técnico.
        </p>
    </body>
</html>
