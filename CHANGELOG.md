# Changelog

## 0.3.0.2 - Mobile Safari polish

- Prevent narrow-screen overflow in search fields, tables, long tokens, and every fenced-code shape, and avoid iOS input zoom.
- Improve long-content wrapping while preserving horizontal scrolling for code blocks.
- Enlarge independent controls for coarse pointers and restore visible keyboard focus.
- Keep hidden back-to-top controls out of keyboard and assistive-technology navigation.
- Align wrapped post titles in a date-and-title grid and reduce theme-switch transition work.
- Keep article links visibly underlined, synchronize native controls with the selected color scheme, and add a skip-to-content link.
- Make copy controls available for both Rouge-wrapped and standalone fenced code blocks.
- Raise syntax-token contrast for small code text in both light and dark themes.

## 0.3.0.1 - Sunset fork

- Add English and Simplified Chinese UI locales.
- Use CJK-friendly system fonts and configurable light/dark accent colors.
- Add generic page, archive, tag, and search layouts.
- Remove Soopr and optional LLM-output integrations in favor of standard `jekyll-seo-tag`.
- Fix automatic color-scheme selectors, first-paint theme restoration, document language, deterministic home links, updated dates, and tag casing.
- Make favicons opt-in and reading time, link previews, and footnote tooltips opt-in.

## Unreleased

### Added
- GitHub Markdown Alerts (admonitions) support - NOTE, TIP, IMPORTANT, WARNING, CAUTION
- Light mode syntax highlighting with proper contrast
- Tag archive page with clickable tags in posts
- 404 page with themed layout
- `prefers-reduced-motion` support for theme transitions
- `aria-label` and `aria-pressed` on theme toggle button
- `robots.txt` with sitemap reference
- `jekyll-sitemap` for automatic sitemap generation
- `.ruby-version` file for consistent Ruby version management
- `.editorconfig` for cross-editor formatting consistency
- `bin/build` script for production builds
- `Makefile` with setup, serve, build, and clean targets
- `netlify.toml` deployment configuration
- GitHub Actions workflows for build validation and Pages deployment
- Font preconnect hints for faster loading
- DNS prefetch for Soopr SDK

### Changed
- Moved Google Fonts from render-blocking SCSS imports to non-blocking link tags
- Updated gem dependencies: Jekyll ~> 4.3, rouge ~> 4.2, jekyll-feed ~> 0.17, webrick ~> 1.8
- Theme toggle button uses static positioning on mobile (no longer overlaps content)
- Improved `bin/bootstrap` with Ruby version check
- Improved `bin/start` with `--livereload` and passthrough flags
- Soopr twitter handle now reads from `_config.yml` instead of being hardcoded
- Tags in posts now link to tag archive page
- Improved 404 page with minimal themed layout
- Gemspec now includes `_data/` directory in packaged files

### Fixed
- Undefined CSS variable `--border` in blockquote styles (now uses `--text`)
