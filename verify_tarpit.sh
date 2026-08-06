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
    
    # K8s/Docker
    ".docker"
    ".kube"
    ".yaml"
    "docker-compose.yml"
    "application.yml"
    
    # Version Control
    ".git/config"
    ".svn/entries"
    
    # Configs/Env
    ".env"
    ".npmrc"
    "env.backup"
    ".inv"
    "sftp-config.json"
    
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
    
    # Legacy/Corp
    "CFIDE"
    "geoserver"
    "owa/"
    "localstart.aspx"
    "inicio.cgi"
    "base.inc"
    
    # Cisco/VPN
    "+CSCOE+/logon.html"
    "dniapi/userInfos"
    
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
    
    # Use curl to get the first 5 lines. 
    # The 'head' command will close the pipe, which terminates the curl connection.
    RESPONSE=$(curl -sL --max-time 3 "$FULL_URL" | head -n 5)
    
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
