<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Login - Laptopshop</title>
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: #f5f5f5;
        }

        .container {
            width: 800px;
            height: 400px;
            display: flex;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .left {
            flex: 1;
            padding: 30px;
            background-color: #fff;
            display: flex;
            flex-direction: column;
            justify-content: center;
            position: relative;
        }

        .message {
            position: absolute;
            top: 20px;
            left: 50%;
            transform: translateX(-50%);
            font-size: 12px;
            padding: 10px 20px;
            border-radius: 5px;
            color: #fff;
        }

        .message.error {
            background-color: #ff4d4d;
        }

        .message.success {
            background-color: #4caf50;
        }

        .right {
            flex: 1;
            background: linear-gradient(to right, #ff7e5f, #ff416c);
            color: white;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-size: 12px;
            margin-bottom: 8px;
            font-weight: 300;
            color: #333;
            text-transform: uppercase;
            font-weight: 700;

        }

        .form-group input {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 20px;
            box-sizing: border-box;
        }

        .form-group input:focus {
            outline: none;
            border-color: #ff416c;
            box-shadow: 0 0 5px rgba(255, 65, 108, 0.5);
        }

        .btn {
            width: 100%;
            padding: 10px;
            background: linear-gradient(to right, #ff7e5f, #ff416c);
            color: white;
            border: none;
            border-radius: 20px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn:hover {
            background: #ff416c;
        }

        .footer {
            margin-top: 20px;
            text-align: center;
        }

        .footer a {
            color: #ff416c;
            text-decoration: none;
        }

        .social-icons {
            margin-bottom: 20px;
        }

        .social-icons a {
            margin: 0 10px;
            text-decoration: none;
            color: #555;
            font-size: 20px;
        }

        .social-icons a:hover {
            color: #ff416c;
        }

        .right h2 {
            margin-bottom: 20px;
            font-size: 28px;
        }

        .right a {
            margin-top: 20px;
            padding: 10px 20px;
            border: 2px solid white;
            border-radius: 20px;
            color: white;
            text-decoration: none;
            font-size: 16px;
            transition: background-color 0.3s, color 0.3s;
        }

        .right a:hover {
            background-color: white;
            color: #ff416c;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="left">
            <% if (request.getParameter("error") !=null) { %>
                <div class="message error">Invalid email or password.</div>
                <% } %>
                    <% if (request.getParameter("logout") !=null) { %>
                        <div class="message success">Logout success.</div>
                        <% } %>

                            <h3>Sign In</h3>
                            <!-- <div class="social-icons">
                                <a href="#">&#xf082;</a> 
                                <a href="#">&#xf081;</a>
                            </div> -->

                            <form method="post" action="/login">
                                <div class="form-group">
                                    <label for="username">Email</label>
                                    <input type="email" id="username" name="username" placeholder="name@example.com"
                                        required>
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input type="password" id="password" name="password" placeholder="Password"
                                        required>
                                </div>
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                                <button type="submit" class="btn">Sign In</button>

                            </form>
        </div>
        <div class="right">
            <h2>Welcome to Login</h2>
            <p>Don't have an account?</p>
            <a href="/register">Sign Up</a>
        </div>
    </div>
</body>

</html>