<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
        <link type="text/css" href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
              integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
              crossorigin="anonymous">
        <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>
        <title>Add new user</title>
    </head>
    <body>
        <script>
            $(function () {
                $('input[name=dob]').datepicker();
            });
        </script>

    <nav>

    </nav>

    <article class="container">

        <header>
            <h1>What Does WWF Do?</h1>
            <p>WTF mission:</p>
        </header>


        <div>
            <form class="form-horizontal" method="POST" action='UserController' name="frmAddUser">
                <div class="form-group row">
                    <label for="example-text-input" class="col-2 col-form-label">User ID: </label>
                    <div class="col-10">
                        <input class="form-control" type="text" name="userid" value="<c:out value="${user.userid}" />" />
                    </div>
                </div>

                <div class="form-group row">
                    <label for="example-text-input" class="col-2 col-form-label">First Name: </label>
                    <div class="col-10">
                        <input class="form-control" type="text" name="firstName" value="<c:out value="${user.firstName}" />" />
                    </div>
                </div>

                <div class="form-group row">
                    <label for="example-text-input" class="col-2 col-form-label">Last Name: </label>
                    <div class="col-10">  
                        <input class="form-control" type="text" name="lastName" value="<c:out value="${user.lastName}" />" />
                    </div>
                </div>

                <div class="form-group row">
                    <label for="example-text-input" class="col-2 col-form-label">DOB: </label>
                    <div class="col-10">  
                        <input class="form-control" type="text" name="dob" value="<fmt:formatDate pattern="MM/dd/yyyy" value="${user.dob}" />" />
                    </div>
                </div>

                <div class="form-group row">
                    <label for="example-text-input" class="col-2 col-form-label">Email: </label>
                    <div class="col-10">  
                        <input class="form-control" type="text" name="email" value="<c:out value="${user.email}" />" /> 
                    </div>
                </div>

                <input class="btn btn-success" type="submit" value="Submit" />
            </form>
        </div>
    </article> 

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <footer>

    </footer>
</body>
</html>