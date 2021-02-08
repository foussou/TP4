<%--
    Document   : index
    Created on : 16 sept. 2009, 16:54:32
    Author     : michel buffa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<!-- Ne pas oublier cette ligne sinon tous les tags de la JSTL seront ignorés ! -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Creaction de compte</title>
    </head>
    <body>
       


        <!-- Message qui s'affiche lorsque la page est appelé avec un paramètre http message -->
        <c:if test="${!empty param['message']}">
            <h2>Reçu message : ${param.message}</h2>
        </c:if>
            <li>Créer un Compte :</li>
            <form action="compte_bancaire" method="post">
                firstName : <input type="text" name="firstName"/><br>
                lastName : <input type="text" name="lastName"/><br>
                acountNumber : <input type="text" name="acountNumber"/><br>
                balance : <input type="text" name="balance"/><br>
                <input type="hidden" name="action" value="creerCompte"/>
                <input type="submit" value="Valider" name="submit"/>
            </form>
        </ol>

       

      
    </body>
</html>