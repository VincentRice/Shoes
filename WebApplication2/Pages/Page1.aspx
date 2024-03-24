<!DOCTYPE html>
<html>
<head>
    <title>NIKE</title>
</head>
<body>
    <div class="container">
        <h2>NIKE SHOES</h2>
        <div class="image-container">
            <div class="shoe">
                <asp:Image ID="Image17" runat="server" ImageUrl="~/Images/air-force-1-07-2.jpg" AlternateText="NIKE Air Force 1" />
                <div class="label">NIKE Air Force 1 '07</div>
            </div>
            <div class="shoe">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/air-jordan-4-retro-white-gold-shoes.jpg" AlternateText="NIKE Air Jordan 4 Retro" />
                <div class="label">NIKE Air Jordan 4 Retro White Gold</div>
            </div>
        </div>
        <div class="return-button">
            <a href="../Default.aspx" class="button">Return</a>
        </div>
    </div>

<style>
    body, h2, h3 {
        margin: 0;
        padding: 0;
    }

    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        padding-top: 20px; 
    }

    .container {
        position: relative; /* For positioning the button */
        width: 100%;
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .image-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        margin-top: 20px;
    }

    .shoe {
        position: relative;
        margin: 10px;
    }

    .shoe img {
        width: 200px;
        height: auto;
        border-radius: 8px;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease;
    }

    .shoe:hover img {
        transform: scale(1.05);
    }

    .label {
        position: absolute;
        bottom: 0;
        left: 0;
        width: 100%;
        background-color: rgba(0, 0, 0, 0.5);
        color: #fff;
        text-align: center;
        padding: 8px 0;
        border-bottom-left-radius: 8px;
        border-bottom-right-radius: 8px;
    }

    h2 {
        text-align: center;
        margin-bottom: 10px;
        color: #333;
    }

    h3 {
        text-align: center;
        margin-bottom: 20px;
        color: #666;
    }

    /* Button Styles */
    .return-button {
        position: absolute;
        top: 0;
        left: 0;
        padding: 10px 20px;
    }

    .button {
        display: inline-block;
        padding: 10px 20px;
        text-decoration: none;
        background-color: #fff;
        color: #337ab7;
        border: 1px solid #337ab7; /* Adding border */
        border-radius: 4px;
        transition: background-color 0.3s ease;
    }

    .button:hover {
        background-color: #f2f2f2;
    }
</style>
</body>
</html>
