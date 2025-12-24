<?php
// Simple PHP test
echo "<!DOCTYPE html>
<html>
<head>
    <title>PHP Test</title>
</head>
<body>
    <h1>PHP is working!</h1>
    <p>Current time: " . date('Y-m-d H:i:s') . "</p>
    <p>PHP version: " . phpversion() . "</p>
    <p>Server: " . $_SERVER['SERVER_SOFTWARE'] . "</p>
    <a href='verify.php'>Go to Verify Page</a>
    <br>
    <a href='php_test.php'>Go to PHP Test</a>
</body>
</html>";
?>
