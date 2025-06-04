#!/bin/bash

LATLNG=$(CoreLocationCLI -once -format '{"lat":%latitude, "lng":%longitude}')
echo "$LATLNG" > ubicaciones.json

git add ubicaciones.json
git commit -m "🌍 Actualización de ubicación"
git push origin main
