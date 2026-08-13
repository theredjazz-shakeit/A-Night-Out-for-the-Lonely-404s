# 📜 Changelog

All notable changes to this project will be documented in this file.

## [Unreleased]

### Added
- Shakespeare character name pool `$shakespeare_chars` for usernames across SQL dumps, .htpasswd, /etc/passwd, /etc/shadow, and Ansible inventory.
- SSRF honeypot traps for AWS IMDS metadata service `169.254.169.254` and `/proc/self/environ`.
- Realistic Firebase Service Account JSON output for `firebase.json` and `service-account` URIs with AKIA-prefixed AccessKeyId and Shakespearean insults.
- `X-Robots-Tag: noindex, nofollow` header to `shake.php` to help keep friendly automaton from wandering into the theatre.
- Nginx integration documentation moved from `nginx.md` into the main `README.md` for better consolidation.
- Expanded Mimicry Matrix to include:
    - **Spring Boot Actuators**: `heapdump` (with binary magic bytes), `configprops`, and `env`.
    - **Cloud/API Secrets**: `.s3cfg`, `.boto`, and various `.json` credential files.
    - **App Configs**: `config.py`, `application.properties`, `local_settings.py`, and `web.config`.
    - **Auth/VC**: `.htpasswd`, `.secret`, and `.svn/entries`.
    - **DB Admin/Legacy**: `phpmyadmin`, `pma`, `dbadmin`, and `default.asp`.
- Implemented realistic key/value pairing for JSON and INI formats to deceive advanced regex parsers.

### Changed
- Refactored `shake.php` to wrap runtime logic in `runTarpit()` with section markers and moved word lists to bottom for readability; added `global` declarations for word lists.
- Adjusted the loop throttling in `shake.php` from 10ms to 700ms, reducing the output speed to approximately 1.4 insults per second to be more gentle on network resources.
- Changed SQL dump email domain from `scad.edu` to `training.contoso.com`.
- Changed Ansible inventory `ansible_user=admin` to use Shakespeare character names.
- Changed Firebase Service Account `project_id` prefix from `scad-` to `<shakespeare_char>-`.
- Prioritized `wp-config.php` detection over `.bak` to prevent SQL misclassification.
- Made `.git/HEAD` detection case-insensitive and ensured plain-text single-line output without HTML.
- Moved `json_stream` detection before `passwd` to prevent `secrets.json` from being served as password hashes.
- Fixed JSON syntax for `.firebase`, `service-account.json`, `firebase.json`, `aws/credentials`, and AWS SSRF metadata endpoint to output valid closed JSON objects via `json_encode`.
- Fixed `secrets.json` to output valid JSON API keys instead of Linux/Apache password hashes.
- Fixed XML output for `web.config` and `xmlrpc.php` to be well-formed and output once.
- Fixed `env.backup` to output plain `KEY=VALUE` and `applinks/1.0/manifest` to output valid JSON.
- Fixed Python include files to output Python comments instead of PHP tags.
- Made `json_stream`, `ai_keys`, `imds`, `xml_rpc`, `git_head` output once via `$first_run` to avoid unclosed arrays/objects.
