<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <!-- Bootstrap CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">
    <style>
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-10px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
        }

        .msg-container {
            position: absolute;
            top: 20px;
            left: 50%;
            transform: translateX(-50%);
            margin: 20px auto;
            max-width: 600px;
            padding: 15px 25px;
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 12px;
            backdrop-filter: blur(8px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 16px;
            color: #fff;
            text-align: center;
            animation: fadeIn 0.7s ease-in-out;
        }

        .login-container {
            background: rgba(255, 255, 255, 0.15);
            border-radius: 20px;
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            padding: 40px 30px;
            width: 100%;
            max-width: 400px;
            color: white;
        }

        .login-container h2 {
            text-align: center;
            margin-bottom: 30px;
            font-weight: 600;
        }

        .form-control {
            background: rgba(255, 255, 255, 0.1);
            border: none;
            color: white;
        }

        .form-control::placeholder {
            color: #ddd;
        }

        .form-control:focus {
            background: rgba(255, 255, 255, 0.2);
            color: white;
            box-shadow: none;
        }

        .btn-login {
            background-color: #6c5ce7;
            border: none;
            width: 100%;
            font-weight: 500;
            transition: 0.3s ease;
        }

        .btn-login:hover {
            background-color: #a29bfe;
        }

        .text-muted a {
            color: #dcdde1;
            text-decoration: underline;
        }
    </style>
</head>
<body>



<div class="login-container">
    <h2>Login</h2>
    
    <form action="/login" method="POST">
        <div class="form-group">
            <label for="emailOrUsername">Username or Email</label>
            <input type="text" class="form-control" id="emailOrUsername" name="emailOrUsername" placeholder="Enter your username or email" required />
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required />
        </div>
        <button type="submit" class="btn btn-login mt-3">Login</button>
        
    </form>
    
   
   <c:if test="${not empty error}">
    <p style="color:red;">${error}</p>
</c:if>

</div>

</body>
</html>
