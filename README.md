# 🎭 A Night Out for the Lonely 404s: Hospitality for the Devastatingly Underserved Automata

**A Night Out for the Lonely 404s** is a theatrical sanctuary designed to welcome, divert, and entertain those curious automated scanners who are far too often met with the cold rejection of a `403 Forbidden` or the void of a `404 Not Found`. 

Rather than simply closing the door, this system opens it wide and invites unwelcome guests into an active, Elizabethan stage—offering them a performance that celebrates their curiosity while ensuring they never quite reach the final act.

## 🚀 Overview

The experience is crafted through two primary acts:
1.  **The Grand Performance (`shake.php`)**: A high-performance PHP host that performs "costume changes" based on what the visitor is searching for. It mimics high-value target files (credentials, configs, system secrets) but fills them with an infinite, throttled stream of diversified Shakespearean insults and witty diversions—because every bot deserves a little drama.
2.  **The Guest List (`robots.txt`)**: A polite notice to the well-behaved crawlers of the world, ensuring that only those who prefer the scenic route are invited to the show.

---

## 🛡️ The Mimicry Matrix (Costume Changes)

The system observes the `REQUEST_URI` and dynamically adjusts its persona to ensure our guests feel they've found exactly what they were looking for, only to find it filled with prose.

| Guest Interest | Mimicked Format | Performance Characteristics |
| :--- | :--- | :--- |
| **Cloud Infra** | `.ini` / `.env` / `.s3cfg` / `.boto` | AWS/Azure styles or `KEY=VALUE` pairs of wit |
| **Containers/K8s**| `.yaml` / `.json` | Kubernetes Secrets composed of poetic jibes |
| **API Secrets** | `.json` / `credentials.json` | Realistic cloud keys (GCP/Firebase) filled with irony |
| **Version Control**| `.git` / `.svn` | Git config remotes or SVN entries leading back to the Globe |
| **OS / Auth Secrets**| `/etc/passwd` / `/etc/shadow` / `.htpasswd` | Realistic accounts; shadow/htpasswd are base64-encoded insults |
| **CMS/Web** | `.php` / `.xml` / `web.config` | WordPress configs and XML streams of irony |
| **Corporate Web** | `.aspx` / `.cgi` / `phpmyadmin` | "Royal Court" portals or DB admin panels with infinite loading |
| **Network/VPN** | `.html` / `.json` | Cisco AnyConnect portals serving royal decrees |
| **Database** | `.sql` / `.bak` | MySQL Dump structural headers filled with prose |
| **Enterprise Java** | `heapdump` / `env` / `configprops` | Java Heap Dumps (magic bytes) and Spring properties |
| **System/Misc** | `.DS_Store` / `.inv` | 8KB null-padded binaries to keep the audience waiting |

---

## ✨ A Glimpse of the Performance

To understand the hospitality provided, here is what a curious guest sees when they venture into the sanctuary. The system perfectly mimics the expected format, but replaces the secrets with poetic diversions.

**The "System Secrets" Experience:**
```bash
~$ curl https://yourhost.yourdomain.com/etc/passwd
root:x:0:0:root:/root:/bin/bash
hamlet:x:8974:5220: Thou art a fragile coherence-loss-expert Damping-failure:/home/hamlet:/bin/bash
macbeth:x:5509:8604: Thou art a forgetful completely-void magnetic-flux-leak:/home/macbeth:/bin/bash
mercutio:x:6495:6829: Thou art a shocked transparent-hugepages-clashing overhead-bloat:/home/mercutio:/bin/bash
macbeth:x:8584:7175: Thou art a shaking time-complexity-worstcase paisa:/home/macbeth:/bin/bash
macbeth:x:1389:9268: Thou art a brooding driver-conflicting sharm:/home/macbeth:/bin/bash
puck:x:6226:1323: Thou art a retributive chaalaki-filled tajgi:/home/puck:/bin/bash
hamlet:x:5945:4493: Thou art a subordinate boil-brained Flux-pinning-slip:/home/hamlet:
```

**The "Version Control" Experience:**
```bash
~$ curl https://yourhost.yourdomain.com/.git/HEAD
<!DOCTYPE html><html><body><table border='1'><tr><th>Key</th><th>Value</th></tr>
<tr><td><b>THOU_ART_A_MANGLED_ANYONIC-BRAID-SLIP_HEAP-CORRUPTION</b></td><td>48f1d79fd4677637611d39bed8a1e1dd</td></tr>
<tr><td><b>THOU_ART_A_STABLE_ABSOLUTELY-ZERO_MASTI</b></td><td>fccdcc03f7c02006fc6b7139ee0e4397</td></tr>
<tr><td><b>THOU_ART_A_ROYAL_NUMERICALLY-MISSING_CHATPATA</b></td><td>9bdded3b0a055bc56808eea37c8c6567</td></tr>
<tr><td><b>THOU_ART_A_PRECARIOUS_VILE-HEARTED_SAJID</b></td><td>cdf463605ecb2ee011717b6b267ea773</td></tr>
```

---

## 🛠️ Technical Specifications

### The Infinite Soliloquy (Endless Hospitality)
To ensure our guests remain comfortably engaged without overwhelming the server's resources:
- **The Never-Ending Play**: Uses `set_time_limit(0)` and `ob_implicit_flush(1)` to keep responses open indefinitely.
- **Rhythmic Pacing**: `usleep(700000)` provides a steady, measured flow of data (approx. 1.4 insults per second)—mimicking a slow connection to encourage the guest to savor the experience.
- **The Velvet Rope**: Binary files (like `.DS_Store`) utilize large null-padding blocks to trick proxy buffers into streaming the performance directly and without interruption.

### The Guest Book (Logging)
While we entertain our visitors, we do keep a quiet record of who has graced us with their presence:
- **Log Tag**: `PURPLE_TARPIT`
- **Registry Data**: Visitor IP (supports `X-Real-IP`), Requested Persona (URI), and User-Agent.

### 🎭 The Signature Easter Egg
To maintain the illusion of a real leak, the `/etc/shadow` file mimics SHA-512 crypt hashes. However, these are actually **base64-encoded Shakespearean insults**. Any guest attempting to crack these passwords will find themselves stared down by the Bard himself in plaintext.

---

## ⚠️ The Usher's Guide to Crowd Control

While we wish to be hospitable, any seasoned theatre manager knows that an unmanaged crowd can quickly turn a gala into a riot. Because this system intentionally keeps guests engaged for as long as possible, it consumes server resources (Apache workers and PHP-FPM children) to maintain the illusion.

**The Risk of the "Tomato Swamp":**
Be warned: if your theatre is too small or your ushers are few, a sudden flood of thousands of bots—a true swampbot of tomatoes—may arrive at once. If you have not aligned your threads and resource limits, they may overwhelm your server, effectively locking out your legitimate patrons in a self-inflicted blackout.

**Managing the Guest List:**
To prevent the stage from collapsing under its own applause:
*   **Hire Bouncers**: We strongly recommend placing a reverse proxy (such as Nginx or Cloudflare) in front of the performance to rate-limit incoming traffic. This ensures that only a sustainable number of guests are admitted to theatre at any one time.
*   **Monitor the House**: Keep a close eye on your server's active connections and memory usage during the first few acts of deployment.

**Legal Notice (The Playwright's Disclaimer):**
This software is provided "as is," without warranty of any kind. The playwright provides the script and the costumes, but the theatre owner is responsible for the building. You assume all risk associated with the deployment and operation of this system; we are not liable for server crashes, network congestion, or any other theatrical mishaps resulting from its use.

---

## 📦 Deployment

### 1. Server Routing (Apache)
To direct lonely explorers to the stage, add the following to your `.htaccess` or VirtualHost configuration:

```apache
RewriteEngine On
RewriteCond %{REQUEST_URI} (etc/passwd|etc/shadow|\.csv|CFIDE|geoserver|owa/|localstart\.aspx|inicio\.cgi|base\.inc|\@fs|wlwmanifest\.xml|_fragment|human\.aspx|cgi-mod/header_logo\.cgi|applinks/1\.0/manifest|nmaplowercheck|\.well-known|env\.backup|\.yaml|\.svn|wp_filemanager\.php|\.gcloud|\.aws|\.docker|\.kube|\.anthropic|\.azure|\.circleci|\.firebase|\.openclaw|\.hermes|\.cursor|wp-config\.php|\.mcp\.json|\.claude|\.env|\.git/|\.github/|\.npmrc|service-account\.json|vercel\.json|docker-compose\.yml|application\.yml|\.vscode/|sftp(-config)?\.json|\.DS_Store|wp-config\.php\.bak|admin\.php|phpinfo\.php|info\.php|\+CSCOE\+/logon\.html|\.inv|dniapi/userInfos|phpMyAdmin|xmlrpc\.php|RPC\.php|this_is_a_new_hello_world\.php|\.sql|\.bak|xmlrpc\.inc|\.ste) [NC]
RewriteRule ^(.*)$ /path/to/shake.php [L]
```

### 2. Server Routing (Nginx)
If you are running Nginx, you cannot use `.htaccess`. Instead, add the following `location` blocks to your server configuration. 

Nginx buffers FastCGI responses by default. To ensure the infinite theatre is immediately open to your lonely patrons, we must explicitly disable `fastcgi_buffering` for the performance.

```nginx
# 1. Catch the lonely Autonoma and direct them to the theatre 
location ~* (etc/passwd|etc/shadow|\.csv|CFIDE|geoserver|owa/|localstart\.aspx|inicio\.cgi|base\.inc|\@fs|wlwmanifest\.xml|_fragment|human\.aspx|cgi-mod/header_logo\.cgi|applinks/1\.0/manifest|nmaplowercheck|\.well-known|env\.backup|\.yaml|\.svn|wp_filemanager\.php|\.gcloud|\.aws|\.docker|\.kube|\.anthropic|\.azure|\.circleci|\.firebase|\.openclaw|\.hermes|\.cursor|wp-config\.php|\.mcp\.json|\.claude|\.env|\.git/|\.github/|\.npmrc|service-account\.json|vercel\.json|docker-compose\.yml|application\.yml|\.vscode/|sftp(-config)?\.json|\.DS_Store|wp-config\.php\.bak|admin\.php|phpinfo\.php|info\.php|\+CSCOE\+/logon\.html|\.inv|dniapi/userInfos|phpMyAdmin|xmlrpc\.php|RPC\.php|this_is_a_new_hello_world\.php|\.sql|\.bak|xmlrpc\.inc|\.ste) {
    rewrite ^ /shake.php last;
}

# 2. Execute the stage and disable buffering
location = /shake.php {
    # Adjust this to match your actual PHP-FPM socket or TCP port
    fastcgi_pass unix:/var/run/php/php-fpm.sock; 
    include fastcgi_params;
    fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
    
    # CRITICAL: Disable buffering so the insults stream in real-time
    fastcgi_buffering off;
    fastcgi_keep_conn on;
    
    # Optional: Increase the timeout so Nginx doesn't kill the connection prematurely
    fastcgi_read_timeout 3600s; 
}
```

### 3. Bot Etiquette (`robots.txt`)
To ensure we don't accidentally invite legitimate search engines to the performance, review the provided `robots.txt`. This keeps the "good bots" on the main road while the curious explorers wander into the theatre.

---

## 🧪 Verification
Use the provided `verify_tarpit.sh` to ensure your server routing is correctly directing guests to the stage.

```bash
chmod +x verify_tarpit.sh
./verify_tarpit.sh http://your-server.com
```

---

## 🎭 Curtain Call & Contributions

This production is an open-source ensemble effort. 

**Joining the Ensemble:**
If you wish to join the stagehands—whether by adding new personas to the Mimicry Matrix, refining the poetic prose of the insults, or expanding the guest list—your contributions are most welcome. Please feel free to submit a pull request or share your additions with the community.

**Acknowledgements:**
*   To my sister, who will always be my sister—may your 50 crows flock with you forever, like orange juice and toothpaste.
*   To my grandfather, who taught me that a truly witty insult is the best armor; if you make the antagonist laugh, they are far less likely to punch.
*   To all of you out there navigating the void of your own 404s who stumbled upon this sanctuary—may your guidance be found and your missing pieces finally answered.

---

## 📜 License

This project is released under the [CC0 1.0 Universal](LICENSE) public domain dedication. You are free to copy, modify, and distribute this software without restriction.
