# Sunset Moonwalk

A focused fork of [Moonwalk](https://github.com/abhinavs/moonwalk), based on upstream `v0.3.0`. It keeps Moonwalk's small, writing-first interface while adding CJK-friendly system typography, Chinese localization, configurable accent colors, deterministic navigation, and generic archive, tag, page, and search layouts.

This fork remains MIT licensed. Moonwalk was created by Abhinav Saxena and originally based on [no style, please!](https://github.com/riggraz/no-style-please) by Riccardo Graziosi.

## Install from an immutable tag

```ruby
gem "moonwalk",
  git: "https://github.com/SunsetWan/moonwalk.git",
  tag: "sunset-v0.3.0.1"
```

Then set `theme: moonwalk` in `_config.yml` and run `bundle install`. Consumers should pin a `sunset-*` tag rather than the fork's default branch.

## Configuration

All theme options live under `theme_config`:

```yaml
lang: zh-CN

theme_config:
  appearance: auto                 # light, dark, or auto
  appearance_toggle: true
  date_format: "%Y-%m-%d"
  home_url: "/"

  accent:
    light: "#C2410C"
    dark: "#FDBA74"
    selection_light: "#ffecb2"    # optional
    selection_dark: "#41c7c7"     # optional

  favicon:
    enabled: false

  search:
    index_url: "/search.json"
    max_results: 8

  tag_path: "/tags/:tag/"
  tag_slug_mode: pretty
  use_legacy_tag_url_filter: false

  show_description: false
  show_navbar: true
  show_footer: true
  show_copyright: true
  show_theme_credit: true
  show_blog: true
  show_reading_time: false
  show_tags: true
  show_code_copy: true
  show_progress_bar: true
  show_back_to_top: true
  show_post_nav: true
  show_toc: true
  toc_open: false
  show_footnote_tooltips: false
  show_link_previews: false

  home:
    title_blog: Blog               # set to an empty string for a title-free list
```

Navbar and footer entries continue to come from `_data/home.yml`:

```yaml
navbar_entries:
  - title: Archive
    url: /archives/

footer_entries:
  - title: Feed
    url: /feed.xml
```

The built-in locale keys are `en` and `zh-CN`; unknown languages fall back to English. A site can override `_data/moonwalk_locales.yml`.

Favicons are opt-in. When enabled, the complete optional keys are `apple_touch_icon`, `icon_32`, `icon_16`, `manifest`, `mask_icon`, `mask_color`, `shortcut_icon`, `browserconfig`, `tile_color`, and `theme_color`.

## Layouts and content interfaces

- `home`: landing page and optional post list. An empty `theme_config.home.title_blog` emits no empty heading.
- `post`: published/updated dates, tags, optional collapsed table of contents, code copy, progress bar, post navigation, and back-to-top.
- `page`: generic standalone content with an optional home link (`show_back_link: false` hides it).
- `archive` and `tag`: render `page.posts`, which makes them suitable for `jekyll-archives`.
- `search`: dedicated search page; the same UI can be embedded with `{% raw %}{% include search.html %}{% endraw %}`.

The search endpoint configured by `theme_config.search.index_url` must return an array with this shape:

```json
[
  {
    "url": "/post/",
    "title": "Post title",
    "date": "2026-07-15",
    "tags": ["SwiftUI"],
    "excerpt": "Plain-text excerpt"
  }
]
```

Tag links default to `tag_path` with `:tag` replaced by Jekyll's `slugify` output. Sites that must preserve legacy case or routing can register a Liquid filter named `legacy_tag_url` and set `use_legacy_tag_url_filter: true`; the filter must return the final URL for a tag. `_includes/tag_link.html` also accepts an explicit `url` include parameter.

## Local development

```sh
bundle install
JEKYLL_ENV=production bundle exec jekyll build --trace --strict_front_matter
```

The fork's CI only builds the demo site. It does not deploy GitHub Pages or publish a RubyGem.
