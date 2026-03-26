#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd

cat > /var/www/html/index.html <<'HTML'
<!DOCTYPE html>
<html>
<head>
  <title>BLUE Environment</title>
  <style>
    body { background: #1a3a5c; color: #7eb8f7; font-family: Georgia; 
           display: flex; justify-content: center; align-items: center; 
           min-height: 100vh; text-align: center; margin: 0; }
    .container { max-width: 600px; }
    .env { font-size: 5rem; font-weight: bold; margin-bottom: 1rem; color: #7eb8f7; }
    .label { font-size: 1.5rem; letter-spacing: 0.3em; text-transform: uppercase; 
             background: #7eb8f7; color: #0a1628; padding: 0.5rem 2rem; }
  </style>
</head>
<body>
  <div class="container">
    <div class="env">BLUE</div>
    <div class="label">Live Environment</div>
    <p>Day 12 Blue/Green Deployment</p>
  </div>
</body>
</html>
HTML