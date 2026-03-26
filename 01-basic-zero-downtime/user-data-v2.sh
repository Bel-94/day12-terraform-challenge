#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd

cat > /var/www/html/index.html <<'HTML'
<!DOCTYPE html>
<html>
<head>
  <title>Version 2</title>
  <style>
    body { background: #0a1628; color: #ffffff; font-family: Georgia; 
           display: flex; justify-content: center; align-items: center; 
           min-height: 100vh; text-align: center; margin: 0; }
    .container { max-width: 600px; }
    .version { font-size: 4rem; font-weight: bold; margin-bottom: 1rem; color: #7eb8f7; }
    .label { font-size: 1.2rem; letter-spacing: 0.2em; text-transform: uppercase; color: #5a7a9a; }
    .new { display: inline-block; background: #7eb8f7; color: #0a1628; 
           padding: 0.5rem 1rem; border-radius: 20px; margin-top: 1rem; font-size: 0.9rem; }
  </style>
</head>
<body>
  <div class="container">
    <div class="version">V2</div>
    <div class="label">Hello World Version 2</div>
    <div class="new">NEW VERSION DEPLOYED</div>
    <p>Day 12 Zero-Downtime Deployment</p>
  </div>
</body>
</html>
HTML