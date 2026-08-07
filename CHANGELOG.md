# 📜 Changelog

All notable changes to this project will be documented in this file.

## [Unreleased]

### Added
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
- Adjusted the loop throttling in `shake.php` from 10ms to 700ms, reducing the output speed to approximately 1.4 insults per second to be more gentle on network resources.
