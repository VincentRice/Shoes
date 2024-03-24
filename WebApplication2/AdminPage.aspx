
<!DOCTYPE html>
<html>
<head>
    <title>ZAPATOZA - Admin Panel</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
            overflow: hidden; 
        }

        .background-container {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1; 
            background-image: url('/Images/shoeses.jpg');
            background-size: cover;
            background-position: center;
            filter: blur(10px); 
        }

        .content {
            padding-top: 100px;
            text-align: center;
            position: relative;
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
            color: #333;
            padding: 10px 20px;
            border: 1px solid #333;
            border-radius: 5px;
            transition: all 0.3s ease;
            background-color: rgba(255, 255, 255, 0.8);
        }

        li a:hover {
            background-color: rgba(0, 0, 0, 0.8);
            color: #fff;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }

        .logout-btn {
            position: fixed;
            top: 20px;
            right: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        .logout-btn:hover {
            background-color: rgba(0, 0, 0, 0.8);
            color: #fff;
        }

        .admin-panel {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="background-container"></div> 
    <div class="content">
        <div class="container">
            <h1>Welcome to ZAPATOZA - Admin Panel</h1>
            <div class="admin-panel">
                <ul>
                    <li><a href="#">Manage Stock</a></li>
                    <li><a href="#">View Orders</a></li>
                    <li><a href="#">Manage Users</a></li>

                </ul>
            </div>
            <div class="logout-btn" onclick="logout()">Logout</div>
        </div>
    </div>

    <script>
        function logout() {
            window.location.href = 'Default.aspx';
        }
    </script>
</body>
</html>