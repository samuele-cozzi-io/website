---
draft: false
title: "Building Samuele’s Space with Hugo & Blowfish"
date: 2021-12-15T17:25:00Z
tags: ["hobby", "developer", "architecture", "markdown"]
categories: ["Projects"]
cover:
    image: "featured1.excalidraw.png"
    alt: "Building Samuele’s Space with Hugo & Blowfish"
    caption: "Building Samuele’s Space with Hugo & Blowfish"
    relative: true # To use relative path for cover image, used in hugo Page-bundles
---

I built my personal blog **Samuele’s Space** using [Hugo](https://gohugo.io/), a fast and flexible static site generator, combined with the [Blowfish](https://blowfish.page/) theme for modern styling. My goal was a fast, lightweight, and easily maintainable blog with a sleek design and minimal effort to deploy – and Hugo delivered exactly that.

---

## ⚙️ How Hugo Works & Why I Chose It

Hugo is a static site generator, which means it takes **Markdown files** (like blog posts), applies templates and themes, and turns them into static HTML, CSS, and JavaScript files. There’s no server-side rendering or database — just fast, secure, and simple files ready to host anywhere.

### Key Benefits of Hugo:

* **Markdown-first**: Content is written in plain `.md` files with front matter (metadata like title, date, tags).
* **Themes & templating**: Easily apply themes (like Blowfish) that handle the layout, styling, and behavior.
* **Blazing fast builds**: Hugo can rebuild hundreds of pages in milliseconds.
* **No backend required**: All output is static, so you can host it on GitHub Pages, Netlify, or any static file server.
* **Built-in features**: Hugo includes things like taxonomy (categories/tags), table of contents, image processing, and more — no plugins needed.

---

## 🐡 Why I Chose the Blowfish Theme

[Blowfish](https://blowfish.page/) is a powerful and minimal Hugo theme designed with developers and writers in mind. I chose it because it gave me:

* A clean, modern aesthetic out of the box
* Excellent mobile responsiveness
* Extensive configuration options without touching any CSS
* First-class support for features like:

  * Search
  * Code highlighting with copy buttons
  * Light/dark mode with auto-detect
  * Table of contents, reading time, and "Zen mode"
  * Custom backgrounds and hero sections

It also supports multiple homepage layouts (`hero`, `background`, `card`, etc.) and article header styles (e.g. big, background, thumbnail). These can all be customized via the `params.toml` configuration file — no hacking into templates or overriding theme files needed.

What I especially appreciate is that Blowfish offers a polished user experience but remains extremely lightweight. It prioritizes performance and accessibility while letting me personalize everything through simple TOML settings.

---

## 🧪 Customizing Blowfish with `params.toml`

The heart of the customization is the `params.toml` file. This file defines how the site should behave and look.

### Color & Appearance

```toml
colorScheme = "fire"
defaultAppearance = "light"
autoSwitchAppearance = true
enableSearch = true
enableCodeCopy = true
```

This sets a “fire” color palette, enables light/dark mode switching, and turns on features like code snippet copying and search.

### Homepage Design

```toml
[homepage]
layout = "background"
showRecent = true
showRecentItems = 3
layoutBackgroundBlur = true
```

This creates a homepage with a blurred background image and recent blog post cards.

### Article Page Configuration

```toml
[article]
showDate = true
showAuthor = true
showReadingTime = true
showTableOfContents = true
showZenMode = true
```

These options make blog posts readable and accessible, with TOC, reading time, and Zen Mode for distraction-free reading.

---

## 🖼 Using BGJar for Background Art

One unique touch is the animated SVG background on my homepage. I used [BGJar](https://bgjar.com), a free online SVG generator. You pick a style, customize colors and shapes, and export it.

I used the “Animated Shape” pattern and configured it in my `params.toml`:

```toml
defaultBackgroundImage = "imgs/Animated Shape(2).svg"
```

This adds a playful yet subtle motion to the page, especially when blurred by the homepage layout.

![](./attachments/Screenshot%20From%202025-08-07%2018-12-30.png)

---

## 💻 Hosting with GitHub & Deploying via GitHub Actions

My entire blog lives in this GitHub repository:
🔗 [github.com/samuele-cozzi-io/website](https://github.com/samuele-cozzi-io/website)

Every time I push to the `main` branch, GitHub Actions rebuilds and deploys the site using this workflow:

```yaml

name: Deploy Hugo site to Pages

on:
  # Runs on pushes targeting the default branch
  push:
    branches:
      - main

  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

# Sets permissions of the GITHUB_TOKEN to allow deployment to GitHub Pages
permissions:
  contents: read
  pages: write
  id-token: write

# Allow only one concurrent deployment, skipping runs queued between the run in-progress and latest queued.
# However, do NOT cancel in-progress runs as we want to allow these production deployments to complete.
concurrency:
  group: "pages"
  cancel-in-progress: false

# Default to bash
defaults:
  run:
    shell: bash

jobs:
  # Build job
  build:
    runs-on: ubuntu-latest
    env:
      HUGO_VERSION: 0.143.1
    steps:
      - name: Install Hugo CLI
        run: |
          wget -O ${{ runner.temp }}/hugo.deb https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.deb \
          && sudo dpkg -i ${{ runner.temp }}/hugo.deb          
      - name: Install Dart Sass
        run: sudo snap install dart-sass
      - name: Checkout
        uses: actions/checkout@v4
        with:
          submodules: recursive
          fetch-depth: 0
      - name: Setup Pages
        id: pages
        uses: actions/configure-pages@v4
      - name: Install Node.js dependencies
        run: "[[ -f package-lock.json || -f npm-shrinkwrap.json ]] && npm ci || true"
      - name: Build with Hugo
        env:
          # For maximum backward compatibility with Hugo modules
          HUGO_ENVIRONMENT: production
          HUGO_ENV: production
        run: |
          hugo \
            --gc \
            --minify \
            --baseURL "${{ steps.pages.outputs.base_url }}/"          
      - name: Upload artifact
        uses: actions/upload-pages-artifact@v3
        with:
          path: ./public

  # Deployment job
  deploy:
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    needs: build
    steps:
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4

```

This builds the site into the `public/` directory and publishes it to the `gh-pages` branch, which GitHub Pages serves from.

🚀 Just push changes — Hugo does the rest.

---

## 🏁 Final Thoughts

Hugo + Blowfish + GitHub Pages is a dream stack for technical blogs:

* It’s fast.
* It’s version-controlled.
* It’s customizable.
* It’s zero-cost to host.

With just Markdown files, a theme, and a bit of SVG magic, I’ve built a fully-featured blog I’m proud of. If you’re curious to explore, check out:

* 🖥 Live Blog: [samuele-cozzi-io.github.io/website](https://samuele-cozzi-io.github.io/website/)
* 💾 Source Code: [GitHub Repo](https://github.com/samuele-cozzi-io/website)
* 🎨 Background Generator: [BGJar](https://bgjar.com/)
* 📚 Hugo Docs: [gohugo.io](https://gohugo.io/)
* 💡 Blowfish Theme: [blowfish.page](https://blowfish.page/)
