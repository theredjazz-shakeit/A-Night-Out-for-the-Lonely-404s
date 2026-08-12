# 📜 Changelog

All notable changes to this project will be documented in this file.

## [Unreleased]

### Added
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
