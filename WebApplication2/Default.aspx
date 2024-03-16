<!DOCTYPE html>
<html>
<head>
    <title>MAIN PAGE</title>
     <div class="collapse navbar-collapse d-sm-inline-flex justify-content-between">
            <ul class="navbar-nav flex-grow-1">
                
                <li class="nav-item"><a class="nav-link" runat="server" href="~/Register">Register</a></li>
                <li class="nav-item"><a class="nav-link" runat="server" href="~/Login">Login</a></li>
               
            </ul>
</div>


</head>
<body>
    <div class="background-container"></div> <!-- Background container with blur effect -->
    <div class="content">
    <div class="container">
        <h1>ZAPATOZA</h1>
        <ul>
            <li><a href="Pages/Page1.aspx">NIKE</a></li>
            <li><a href="Pages/Page2.aspx">ADIDAS</a></li>
            <li><a href="Pages/Page3.aspx">NEW BALANCE</a></li>
            <li><a href="Pages/Page4.aspx">DC</a></li>
            <li><a href="Pages/Page5.aspx">PUMA</a></li>
        </ul>
    </div>
      <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: #fff;
            overflow: hidden; /* Prevent scrollbars due to blur overflow */
        }

        .background-container {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1; /* Ensure it's behind other content */
            background-image: url('/Images/shoeses.jpg');
            background-size: cover;
            background-position: center;
            filter: blur(10px); /* Adjust the blur radius here */
        }

        .content {
            padding-top: 100px; /* Adjust as needed to center content */
            text-align: center;
        }

        h1 {
            font-size: 36px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }

        ul {
            list-style-type: none;
            padding: 0;
            text-align: center;
        }

        li {
            display: inline-block;
            margin: 10px;
        }

        li a {
            text-decoration: none;
            color: #fff;
            padding: 10px 20px;
            border: 1px solid #fff;
            border-radius: 5px;
            transition: all 0.3s ease;
            background-color: rgba(0, 0, 0, 0.5);
        }

        li a:hover {
            background-color: rgba(255, 255, 255, 0.8);
            color: #333;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.3);
        }
    </style>
</body>
</html>
