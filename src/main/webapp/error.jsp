<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %> <!-- This indicates that this page is an error page -->
<html>
<head>
    <title>Error</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .error-container {
            margin-top: 100px;
            text-align: center;
        }
        .error-container h1 {
            font-size: 4rem;
            color: #dc3545;
        }
        .error-container p {
            font-size: 1.5rem;
            color: #6c757d;
        }
        .error-container a {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container error-container">
        <h1>Oops!</h1>
        <p>Something went wrong. Please try again later.</p>
        <p><small>Error Details: <%= exception != null ? exception.getMessage() : "No additional information" %></small></p>
        <a href="index.jsp" class="btn btn-primary">Go Back to Home</a>
    </div>
</body>
</html>