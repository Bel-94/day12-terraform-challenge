#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd

cat > /var/www/html/index.html <<'HTML'
<!DOCTYPE html>
<html>
<head>
  <title>Version 1</title>
  <style>
    body { background: #1a3a5c; color: #7eb8f7; font-family: Georgia; 
           display: flex; justify-content: center; align-items: center; 
           min-height: 100vh; text-align: center; margin: 0; }
    .container { max-width: 600px; }
    .version { font-size: 4rem; font-weight: bold; margin-bottom: 1rem; }
    .label { font-size: 1.2rem; letter-spacing: 0.2em; text-transform: uppercase; }
  </style>
</head>
<body>
  <div class="container">
    <div class="version">V1</div>
    <div class="label">Hello World Version 1</div>
    <p>Day 12 Zero-Downtime Deployment</p>
  </div>
</body>
</html>
HTML