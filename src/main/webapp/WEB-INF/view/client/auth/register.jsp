<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <title>Register - Laptopshop</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
            <style>
                body {
                    font-family: Arial, sans-serif;
                    background-color: #f8f9fa;
                    margin: 0;
                    padding: 0;
                }

                /* General styles */
                .register-container {
                    display: flex;
                    height: 100vh;
                    align-items: center;
                    justify-content: center;
                }

                .register-card {
                    display: flex;
                    width: 900px;
                    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                    border-radius: 10px;
                    overflow: hidden;
                }

                /* Left Section */
                .left-section {
                    flex: 1;
                    background: #fff;
                    padding: 2rem;
                }

                /* Right Section: Gradient background */
                .gradient-section {
                    background: linear-gradient(to right, #ff7e5f, #ff6a99);
                    color: white;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    flex-direction: column;
                    padding: 2rem;
                }

                /* Input Styling */
                .form-control {
                    border: 2px solid #ddd;
                    border-radius: 20px;
                    padding: 12px 15px;
                    font-size: 14px;
                    transition: all 0.3s ease-in-out;
                }

                .form-control:focus {
                    border-color: #ff7e5f;
                    box-shadow: 0 0 5px rgba(255, 126, 95, 0.5);
                    outline: none;
                }

                /* Button Styling */
                .btn-custom {
                    background: linear-gradient(to right, #ff7e5f, #ff6a99);
                    border: none;
                    color: white;
                    border-radius: 20px;
                    padding: 10px;
                    transition: all 0.3s ease-in-out;
                }

                .btn-custom:hover {
                    background: linear-gradient(to left, #ff7e5f, #ff6a99);
                }

                /* Responsive Padding */
                @media (max-width: 768px) {
                    .register-card {
                        flex-direction: column;
                    }
                }
            </style>
        </head>

        <body>
            <div class="register-container">
                <div class="register-card">
                    <!-- Left Section: Register Form -->
                    <div class="left-section">
                        <h3 class="text-center mb-4">Create Account</h3>
                        <form:form method="post" action="/register" modelAttribute="registerUser">
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label for="firstName" class="form-label">First Name</label>
                                    <form:input path="firstName" class="form-control"
                                        placeholder="Enter your first name" />
                                </div>
                                <div class="col-md-6">
                                    <label for="lastName" class="form-label">Last Name</label>
                                    <form:input path="lastName" class="form-control"
                                        placeholder="Enter your last name" />
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">Email Address</label>
                                <form:input path="email" class="form-control" placeholder="name@example.com" />
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label for="password" class="form-label">Password</label>
                                    <form:input path="password" type="password" class="form-control"
                                        placeholder="Enter password" />
                                </div>
                                <div class="col-md-6">
                                    <label for="confirmPassword" class="form-label">Confirm Password</label>
                                    <form:input path="confirmPassword" type="password" class="form-control"
                                        placeholder="Confirm password" />
                                </div>
                            </div>
                            <div class="d-grid mt-4">
                                <button type="submit" class="btn btn-custom btn-block">Create Account</button>
                            </div>
                        </form:form>
                        <div class="text-center mt-3">
                            <small>Already have an account? <a href="/login" class="text-decoration-none">Go to
                                    Login</a></small>
                        </div>
                    </div>

                    <!-- Right Section: Gradient Section -->
                    <div class="gradient-section">
                        <h2>Welcome to Register</h2>
                        <p>Join us and get started!</p>
                        <a href="/login" class="btn btn-outline-light mt-3 rounded-pill">Sign In</a>
                    </div>
                </div>
            </div>
        </body>

        </html>