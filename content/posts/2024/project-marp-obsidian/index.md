---
draft: true
title: "Create Beautiful Presentations with Obsidian + Marp"
date: 2024-12-15T17:25:00Z
tags: ["hobby"]
categories: ["Projects"]
cover:
    image: "featured.png"
    alt: "Create Beautiful Presentations with Obsidian + Marp"
    caption: "Create Beautiful Presentations with Obsidian + Marp"
    relative: true # To use relative path for cover image, used in hugo Page-bundles
---

{{< keywordList >}}

{{< button href= "https://github.com/samuele-cozzi/obsidian-marp-slides" target="_blank">}}{{< icon "code" >}} Code{{< /button >}}

{{< /keywordList >}}
  
If you're like me and spend a lot of time in [Obsidian](https://obsidian.md/) — whether for note-taking, personal knowledge management, or writing — then you’ve probably wished you could turn your markdown notes into polished presentations without leaving your favorite app.

That’s exactly why I created [**Obsidian Marp Slides**](https://github.com/samuele-cozzi/obsidian-marp-slides), a project that brings together the power of [Marp](https://marp.app/) and the flexibility of markdown inside Obsidian.

---

### 🌟 What Is It?

**Obsidian Marp Slides** is a simple Obsidian extension that lets you convert any markdown file in your Obsidian vault into a fully styled slide deck using Marp.

The core idea is this:
**Write your slides in markdown in Obsidian → get a beautifully rendered HTML or PDF presentation.**

It’s perfect for:

* Tech talks
* Academic lectures
* Team meetings
* Quick demos
* or even just better visual notes

---

### 💡 Why I Built It

Obsidian is fantastic for writing and thinking. But when it came to sharing ideas visually, especially as slides, the workflow was clunky. Marp already supported markdown-based slides, but integrating it smoothly into the Obsidian ecosystem was missing.

I wanted a no-fuss solution—no switching editors, no worrying about exporting. Just a way to **use my existing notes to create clean, customizable slides.**

---

### 🚀 How It Works

Obsidian Marp Slides integrates seamlessly with your Obsidian vault to turn markdown files into slide decks. It’s built to be flexible, intuitive, and powerful—with smart defaults and useful options.

Here’s what makes it work:

📝 Write Slides in Markdown

Use standard Marp-flavored Markdown to structure your presentation. Create a new .md file in your vault and separate slides with ---. You can also use Marp features like slide-level classes, inline styles, and frontmatter metadata.


🎨 Customize Everything

The tool offers multiple ways to tailor your output:

Themes: Use built-in Marp themes (default, Gaia, uncover) or custom ones via --theme.
Dark/Light Modes: Automatically renders both light and dark variants unless disabled.
CSS Customization: Inject your own styles with the --style option.
Frontmatter Support: Set slide metadata, theme, title, and more directly in the file.

🛠️ Power Features

YAML Config: You can define global defaults in a marp.config.yml file.
Multiple Output Formats: Export to both HTML and PDF (via Puppeteer).
Clean Output Management: Specify output folder or overwrite default behavior.
Fully Offline: No need for a web server or internet connection.

---

### 🙌 Contributions Welcome

This is an open-source project, and I’d love your feedback, ideas, or pull requests. Whether you want to add theme support, fix bugs, or suggest new features—feel free to jump in.

📍 GitHub: [samuele-cozzi/obsidian-marp-slides](https://github.com/samuele-cozzi/obsidian-marp-slides)

---

### 🧭 Final Thoughts

If you're already using Obsidian and love the simplicity of markdown, **Obsidian Marp Slides** can supercharge your workflow. It bridges the gap between note-taking and presenting—without making you learn a new tool.

Give it a try, and turn your notes into something worth sharing. 🚀

---

*Some bytes of this blog post were co-written with AI. The brain behind it is still very much human.*