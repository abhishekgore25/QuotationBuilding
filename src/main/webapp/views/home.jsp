<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quotation Building</title>
    <style>
        /* Inline CSS for simplicity */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('background.png'); /* Change 'background_image.jpg' to the actual image path */
            background-size: cover;
            background-position: center;
            color: #fff;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            text-align: center;
        }
        h1 {
            font-size: 48px;
            margin-bottom: 20px;
        }
        p {
            font-size: 20px;
            margin-bottom: 30px;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
            margin: 10px;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Quotation Building</h1>
        <p>Welcome User</p>
        <p>This platform allows you to easily manage your quotations.</p>
        <a href="createquote.html" class="btn">Create Quotation</a>
        <a href="updatequote.html" class="btn">Update Quotation</a>
        <a href="/showall" class="btn">Show All Quotations</a>
        <a href="deletequote.html" class="btn">Delete Quotation</a>
    </div>
</body>
</html>

