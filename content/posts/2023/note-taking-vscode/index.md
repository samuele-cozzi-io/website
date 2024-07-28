---
draft: true
title: "Note Taking Vscode"
date: 2023-12-21T20:53:23Z
tags: ["notes"]
cover:
    image: "note-taking-vscode.excalidraw.png"
    alt: "Note Taking VSCode"
    caption: "Note Taking VSCode"
    relative: true # To use relative path for cover image, used in hugo Page-bundles
---

### How to Use VSCode as a Note-Taking Client with Markdown

Visual Studio Code (VSCode) is a powerful, open-source code editor that can also serve as an excellent note-taking client. By leveraging its Markdown support and extensive extension ecosystem, you can transform VSCode into a robust alternative to proprietary note-taking apps like Obsidian. Here's a step-by-step guide to setting up VSCode for taking notes in Markdown format.

#### Why Use VSCode for Note-Taking?

1. **Open Source**: VSCode is completely open source, ensuring transparency and community-driven development.
2. **Customization**: With a vast array of extensions and themes, you can tailor VSCode to your specific needs.
3. **Markdown Support**: Markdown is a lightweight markup language that's easy to learn and versatile for formatting text.
4. **Integration**: VSCode integrates well with other tools and version control systems like Git, making it ideal for organizing and managing notes.

#### Setting Up VSCode for Note-Taking

##### Step 1: Install VSCode

If you haven't already, download and install Visual Studio Code from the [official website](https://code.visualstudio.com/).

##### Step 2: Install Essential Extensions

To optimize VSCode for note-taking, install the following extensions:

1. **Markdown All in One**: This extension provides a comprehensive suite of Markdown tools, including shortcuts, previews, and table of contents generation.
   - Install it via the Extensions panel by searching for "Markdown All in One" and clicking "Install".

2. **Markdownlint**: This extension helps maintain consistent Markdown formatting by providing linting and style checking.
   - Search for "Markdownlint" in the Extensions panel and install it.

3. **Markdown Preview Enhanced**: This extension offers advanced Markdown preview features, such as diagram rendering and export options.
   - Install it by searching for "Markdown Preview Enhanced".

4. **Live Share**: For collaborative note-taking, the Live Share extension allows you to share your workspace with others in real-time.
   - Install it by searching for "Live Share".

##### Step 3: Configure Your Workspace

1. **Create a Notes Directory**: Organize your notes by creating a dedicated directory for them. You can create subdirectories for different topics or projects.
   - For example: 
     ```
     /Notes
       /Work
       /Personal
       /Projects
     ```

2. **Open Your Notes Directory in VSCode**: Open VSCode and use `File > Open Folder` to select your notes directory. This will make it easy to navigate and manage your notes.

##### Step 4: Customize VSCode for Note-Taking

1. **Set Markdown as the Default Language**: To make Markdown the default language for new files, add the following setting in your `settings.json` file:
   ```json
   "files.defaultLanguage": "markdown"
   ```

2. **Enable Markdown Preview**: Use the shortcut `Ctrl+Shift+V` (or `Cmd+Shift+V` on macOS) to open a Markdown preview side-by-side with your editor. This allows you to see the rendered output of your notes as you type.

3. **Configure Markdownlint**: Customize Markdownlint rules in your `settings.json` to fit your style preferences. For example:
   ```json
   "markdownlint.config": {
       "default": true,
       "MD013": false, // Disable line length rule
       "MD033": false  // Allow inline HTML
   }
   ```

4. **Enable Auto Save**: Enable auto-save to ensure your notes are saved automatically as you work. Go to `File > Auto Save` and select your preferred auto-save interval.

##### Step 5: Using VSCode for Note-Taking

1. **Create a New Note**: Create a new Markdown file (`.md`) by selecting `File > New File` and saving it with a `.md` extension in your notes directory.

2. **Organize Your Notes**: Use headings, lists, links, and other Markdown syntax to organize your notes effectively. For example:
   ```markdown
   # Meeting Notes

   ## Date: July 27, 2024

   ### Agenda
   - Project updates
   - Budget review
   - Upcoming deadlines

   ### Notes
   - Discussed new project milestones.
   - Reviewed budget allocation for Q3.
   - Deadlines for current tasks set for next month.
   ```

3. **Use Extensions**: Leverage the features of installed extensions. For instance, use `Markdown All in One` to create a table of contents by typing `[TOC]` and enjoy automatic table formatting.

4. **Preview and Export**: Use `Markdown Preview Enhanced` to preview diagrams, LaTeX formulas, and export your notes to PDF or HTML.

5. **Collaborate**: Use Live Share to collaborate with colleagues or peers on notes in real-time.

##### Tips & Tricks

- **Shortcuts**: Familiarize yourself with VSCode shortcuts to speed up your note-taking process. For instance, `Ctrl+B` (or `Cmd+B` on macOS) toggles the sidebar visibility.
- **Snippets**: Create custom snippets for frequently used Markdown elements to save time. Go to `File > Preferences > User Snippets` and select Markdown.
- **Sync Notes**: Use Git or cloud storage services like Dropbox or Google Drive to sync your notes across multiple devices.

By following these steps, you can transform VSCode into a powerful, flexible, and open-source note-taking client. Enjoy the benefits of a streamlined, customizable note-taking process and take your productivity to the next level. Happy note-taking!
