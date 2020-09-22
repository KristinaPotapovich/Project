<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>Login</title>
</head>
<body>
<style>
    body {
        padding-top:100px;
    }
    fieldset{
        text-align: center;
    }
    .register-button {
        margin-top: -54px;
        margin-left: 100px;
    }
    input[type=email], input[type=password] {
        border: 1px solid #ccc;
        border-radius: 50px;
    }
    input[type=submit]{
        margin-left: 60px;
    }

</style>
<div class="container-sm">
    <div class="row">
        <div class="col">
        </div>
        <div class="col-4">
            <form name="loginForm" method="post" action="controller" class="was-validated">
                <fieldset disabled>
                    <legend>Sign in</legend>
                </fieldset>
                <input type="hidden" name="command" value="login"/>
                <div class="mb-3">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Login</label>
                        <input type="email" name="email"
                               class="form-control is-invalid"
                               id="exampleInputEmail1"
                               aria-describedby="validatedInputGroupPrepend"
                               pattern="^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
                               placeholder="Enter your Email address"
                               required>
                    </div>
                </div>
                <div class="mb-3">
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" name="password"
                               class="form-control is-invalid"
                               id="exampleInputPassword1"
                               aria-describedby="validatedInputGroupPrepend"
                               pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{6,20}$"
                               placeholder="Must be 6-20 characters long"
                               required>
                    </div>
                </div>
                            ${wrongAction}
                            ${nullPage}
                            ${errorLoginPassMessage}<br/><br/>
                <div>
                <input class="btn btn-outline-primary" type="submit" value="Log in" >
                </div>
            </form>
            <form name="registrationSubmit" method="post" action="controller" class="register-button">
                <input class="btn btn-outline-primary" type="submit" value="Registration">
                <input type="hidden" name="command" value="forward"/>
                <input type="hidden" name="page" value="path.page.registration"/>
            </form>
        </div>
        <div class="col">
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
</body>
</html>
