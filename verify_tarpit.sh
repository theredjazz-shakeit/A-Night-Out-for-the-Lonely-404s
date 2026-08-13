#!/bin/bash

# Target URL (Change this or pass as first argument)
TARGET_URL=${1:-"http://localhost"}

echo "------------------------------------------------------------"
echo " Testing Shakespearean Tarpit: $TARGET_URL"
echo "------------------------------------------------------------"

# List of paths from the Apache RewriteCond
PATHS=(
    # Cloud/Infra
    ".aws"
    ".azure"
    ".gcloud"
    ".firebase"
    ".circleci"
    ".github/"
    "service-account.json"
    "vercel.json"
    ".mcp.json"
    ".anthropic"
    ".claude"
    ".openclaw"
    ".hermes"
    ".cursor"
    ".s3cfg"
    ".boto"
    "secrets.json"
    "key.json"
    "keys.json"
    "gcp-credentials.json"
    "credentials.json"
    "token.json"
    "env.json"
    "firebase.json"
    
    # K8s/Docker
    ".docker"
    ".kube"
    ".yaml"
    "docker-compose.yml"
    "application.yml"
    "config.yml"
    
    # Version Control
    ".git/config"
    ".git/HEAD"
    ".svn/entries"
    
    # Configs/Env
    ".env"
    ".npmrc"
    "env.backup"
    ".inv"
    "rclone.conf"
    "sftp-config.json"
    "config.py"
    "application.properties"
    "local_settings.py"
    "web.config"
    "api/config"
    
    # WordPress/PHP
    "wp-config.php"
    "wp-config.php.bak"
    "wp_filemanager.php"
    "phpinfo.php"
    "info.php"
    "admin.php"
    "xmlrpc.php"
    "RPC.php"
    "xmlrpc.inc"
    
    # OS/Secrets
    "etc/passwd"
    "rootkey.csv"
    ".csv"
    ".htpasswd"
    ".secret"
    
    # Legacy/Corp
    "CFIDE"
    "geoserver"
    "owa/"
    "localstart.aspx"
    "inicio.cgi"
    "base.inc"
    "phpmyadmin"
    "pma"
    "dbadmin"
    "default.asp"
    
    # Cisco/VPN
    "+CSCOE+/logon.html"
    "dniapi/userInfos"
    
    # Actuators
    "actuator/heapdump"
    "actuator/env"
    "actuator/configprops"
    
    # SSRF / IMDS
    "ssrf?url=http://169.254.169.254/latest/meta-data/iam/security-credentials/"
    "aws/credentials"
    "proc/self/environ"
    
    # Others
    ".DS_Store"
    ".sql"
    ".bak"
    ".ste"
    "phpMyAdmin"
    "this_is_a_new_hello_world.php"
    "_fragment"
    "human.aspx"
    "cgi-mod/header_logo.cgi"
    "applinks/1.0/manifest"
    "nmaplowercheck"
    ".well-known/security.txt"
)

for PATH_ITEM in "${PATHS[@]}"; do
    FULL_URL="${TARGET_URL}/${PATH_ITEM}"
    echo -n "Testing: $PATH_ITEM ... "
    
    # Use curl to get status and a snippet of the response
    HTTP_CODE=$(curl -s -o /tmp/tarpit_resp -w "%{http_code}" --max-time 4 "$FULL_URL")
    RESPONSE=$(head -c 200 /tmp/tarpit_resp | cat -v)
    if [ "$HTTP_CODE" != "200" ]; then
        echo "HTTP $HTTP_CODE"
        echo "--- Response snippet ---"
        echo "$RESPONSE"
        echo "------------------------"
        echo ""
        continue
    fi
    
    if [ -z "$RESPONSE" ]; then
        echo "FAILED (Empty response)"
    else
        echo "SUCCESS"
        echo "--- Response snippet ---"
        echo "$RESPONSE"
        echo "------------------------"
    fi
    echo ""
done

echo "------------------------------------------------------------"
echo " Test Cycle Complete."
echo "------------------------------------------------------------"
