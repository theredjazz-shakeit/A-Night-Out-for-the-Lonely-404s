# 📜 Changelog

All notable changes to this project will be documented in this file.

## [Unreleased]

### Added
- `X-Robots-Tag: noindex, nofollow` header to `shake.php` to help keep friendly automaton from wandering into the theatre.
- Nginx integration documentation moved from `nginx.md` into the main `README.md` for better consolidation.

### Changed
- Adjusted the loop throttling in `shake.php` from 10ms to 700ms, reducing the output speed to approximately 1.4 insults per second to be more gentle on network resources.
