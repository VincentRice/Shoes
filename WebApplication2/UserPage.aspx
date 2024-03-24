<!DOCTYPE html>
<html>
<head>
    <title>ZAPATOZA - Online Shoe Shop</title>
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

        .cart-btn {
            position: fixed;
            top: 20px;
            left: calc(20px + 1000px);
            background-color: rgba(255, 255, 255, 0.8);
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        .cart-btn:hover {
            background-color: rgba(0, 0, 0, 0.8);
            color: #fff;
        }

        /* Modal styles */
        .modal-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 999;
            display: none;
        }

        .modal-content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            z-index: 1000;
        }

        .modal-close {
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="background-container"></div> 
    <div class="content">
        <div class="container">
            <h1>ZAPATOZA - Online Shoe Shop</h1>
            <ul>
                <li><a href="OrderShoes/Nike.aspx">NIKE</a></li>
                <li><a href="OrderShoes/Adidas.aspx">ADIDAS</a></li>
                <li><a href="OrderShoes/Balance.aspx">NEW BALANCE</a></li>
                <li><a href="OrderShoes/DC.aspx">DC</a></li>
                <li><a href="OrderShoes/Puma.aspx">PUMA</a></li>
            </ul>
            <p>Click on a brand to explore our collection!</p>
        </div>
    </div>
    <div class="cart-btn" onclick="openModal()">Cart</div>
    <div class="logout-btn" onclick="logout()">Logout</div>

    <!-- Modal -->
    <div class="modal-overlay" id="modal">
        <div class="modal-content">
            <div class="modal-close" onclick="closeModal()">X</div>
            <h2>Your Cart</h2>
            <p>This is where your cart items will be displayed.</p>
        </div>
    </div>

    <script>
        function logout() {
            window.location.href = 'Default.aspx';
        }

        function openModal() {
            document.getElementById('modal').style.display = 'block';
        }

        function closeModal() {
            document.getElementById('modal').style.display = 'none';
        }
    </script>
</body>
</html>
