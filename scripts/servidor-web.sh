#!/bin/sh
# Publica el portal web por HTTP (puerto 80) en nginx.
# Uso:  sh servidor-web.sh "Jump Server - Portal Web"        (en JUMP)
#       sh servidor-web.sh "Web Server - Sistema de Caja"    (en WEB)
# Gregorys Morel Duluc - 2025-0035

NOMBRE="$1"
mkdir -p /www
echo "<h1>${NOMBRE} - Gregorys Morel 2025-0035</h1>" > /www/index.html
printf 'server {\n listen 80;\n root /www;\n index index.html;\n}\n' > /etc/nginx/http.d/p80.conf
nginx -t && nginx -s reload
wget -qO- http://127.0.0.1
