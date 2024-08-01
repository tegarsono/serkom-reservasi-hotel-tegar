<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zoom Image</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .image-container {
            text-align: center;
            margin-top: 50px;
        }
        .image-container img {
            max-width: 80%;
            height: auto;
            border: 1px solid #ddd;
            border-radius: 4px;
            padding: 5px;
            transition: all 0.3s ease-in-out;
        }
        .image-container img:hover {
            transform: scale(1.2);
        }
    </style>
</head>
<body>

<div class="container image-container">
    <?php
    if (isset($_GET['image'])) {
        $image = './src/images/' . basename($_GET['image']);
        if (file_exists($image)) {
            echo '<img src="' . $image . '" alt="Zoomed Image">';
        } else {
            echo '<p>Image not found.</p>';
        }
    } else {
        echo '<p>No image specified.</p>';
    }
    ?>
</div>

</body>
</html>
