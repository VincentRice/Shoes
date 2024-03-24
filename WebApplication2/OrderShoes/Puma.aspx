<!DOCTYPE html>
<html>
<head>
    <title>NIKE Shoes Collection</title>
    <style>
        body, h1, h2, p, select, input, button {
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            padding-top: 20px; 
        }

        .header {
            text-align: center;
            margin-bottom: 20px;
        }

        .header h1 {
            color: #333;
        }

        .container {
            position: relative;
            width: 100%;
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .shoe-selection {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 20px;
        }

        .shoe {
            margin: 10px;
            text-align: center;
            position: relative;
        }

        .shoe img {
            width: 200px;
            height: auto;
            border-radius: 8px; /* Make image square */
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            cursor: pointer;
            transition: transform 0.3s ease;
        }

        .shoe img:hover {
            transform: scale(1.05);
        }

        .add-to-cart {
            margin-top: 10px;
        }

        button.add-to-cart {
            display: block;
            margin: 0 auto;
            padding: 10px 20px;
            background-color: #337ab7;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button.add-to-cart:hover {
            background-color: #286090;
        }

        .return-button {
            position: absolute;
            top: 20px;
            left: 20px;
        }

        .return-button a {
            display: inline-block;
            padding: 10px 20px;
            text-decoration: none;
            background-color: #fff;
            color: #337ab7;
            border: 1px solid #337ab7; /* Adding border */
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        .return-button a:hover {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>NIKE Shoes Collection</h1>
    </div>

    <div class="container">
        <div class="shoe-selection">
            <div class="shoe">
                <asp:Image ID="Image17" runat="server" ImageUrl="~/Images/PUMA SUEDE 2.jpg" AlternateText="NIKE Air Force 1" />
                <div class="label">PUMA SUEDE CLASSIC BLACK AND WHITE</div>
                <div class="add-to-cart">
                    <button class="add-to-cart" onclick="addToCart('NIKE Air Force 1')">Add to Cart</button>
                </div>
            </div>
            <div class="shoe">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/PUMA X JCOLE.jpg" AlternateText="NIKE Air Jordan 4 Retro" />
                <div class="label">PUMA X J.COLE DREAMER 2</div>
                <div class="add-to-cart">
                    <button class="add-to-cart" onclick="addToCart('NIKE Air Jordan 4 Retro White Gold')">Add to Cart</button>
                </div>
            </div>
        </div>
    </div>

    <div class="return-button">
        <a href="../UserPage.aspx">Return</a>
    </div>

    <script>
        function addToCart(itemName) {
            alert("Added " + itemName + " to cart.");
            // Handle adding item to cart logic here
        }
    </script>
</body>
</html>
