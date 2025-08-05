---
draft: true
title: "Supercharge Me with These AI Prompts v2025.0"
date: 2024-11-15
tags: ["notes", "ai"]
cover:
    image: "featured.excalidraw.png"
    alt: "My Prompts v2025.0"
    caption: "My Prompts v2025.0"
    relative: true # To use relative path for cover image, used in hugo Page-bundles
---


In today’s content-driven world, writing isn't just about words—it's about strategy, structure, and speed. Whether you're a solo blogger, content strategist, student, or business communicator, using an AI language model can significantly boost your productivity. But to get the best out of any large language model (LLM), **well-crafted prompts** are key.

This post introduces a collection of **purpose-built prompts** designed to help you generate, evaluate, and refine content quickly and effectively. Think of it as your ultimate prompt toolbox—organized by task.

---

## 🧠 Ask Anything: Get the Ball Rolling

Sometimes, you just need to start somewhere.

```markdown
# Ask something generic to LLM

{{context}}
```

This is your open canvas. Use it when you have a vague idea or need brainstorming help, definitions, or background information. The `{{context}}` is your query—what do you want to know?

---

## 🏷️ Tag It Right: Get Relevant Metadata

Tags help categorize your content and improve discoverability. Use this prompt to let AI do the tagging:

```markdown
# Get Tags for Your Content

content: 
{{context}}
prompt:
suggest tags for the content in markdown format
tags:
```

Whether it’s a blog post, product description, or article, the AI can suggest accurate, SEO-friendly tags for it.

---

## 🧲 Title Optimization: Attract Clicks

Your headline is your first impression. Make it count.

```markdown
# Get Titles for Your Content

content: 
{{context}}
prompt:
suggest 10 attractive blog titles about this content:
```

Feed in your draft, and let the AI generate catchy, optimized titles tailored to your content.

---

## 🧪 Evaluate and Improve: Rate the Quality

Before publishing, run a quality check.

```markdown
# Rate Text Quality

Give the reading level and rate the text based on some general metrics for writing

{{context}}
```

This will help assess clarity, structure, grammar, and readability—giving you a quick audit on what works and what doesn't.

---

## ✍️ Rewrite and Refine: Polish Your Drafts

For clearer and more professional writing:

```markdown
# Rewrite the selected text

I want you to act as a professional writer. I want you to use a formal tone. Rewrite the text to make it more simple, clear, with better flow, correct grammatical error, punctuation and style. Keep in mind I am a non-native English speaker. I want you to only reply the correction, the improvements and nothing else.

{{context}}
```

This is especially useful for editing rough drafts, improving tone, and ESL writing support.

---

## 📚 Summarize with Precision

Perfect for executive summaries or study notes:

```markdown
# Summarize the selected text

content: 
{{context}}
prompt:
I want you to act as a professional writer. I want you to use a formal tone. Summarize the content
```

AI will give you a concise, high-level overview of the content—ideal for quick reads.

---

## 🌍 Translate Accurately

When clarity across languages is essential:

```markdown
# Translate the selected text into English

I want you to act as a professional text translator. I want you to use a formal tone. I will speak to you in any language and you will detect the language, translate it in English. I want you to only reply with the translated text.

{{context}}
```

This ensures a professional, neutral translation tone that’s great for global communication.

---

## 📰 Journal Articles & Academic Writing

To produce publishable material at a middle-grade level:

```markdown
# Write a journal article

I want you to act as a professional writer. I want you to use a formal tone. Write an article in grade 8 level to publish in journal with sources and references.

{{context}}
```

Use this for creating academic-style pieces accessible to younger or general audiences.

---

## 📌 Bullet Points & Briefs

Ideal for summarizing ideas or notes:

```markdown
# Write a bullet points

I want you to act as a professional writer. I want you to use a formal tone. Write a bullet point.

{{context}}
```

---

## 🖥️ Conference Presentation Decks

For planning out presentations:

```markdown
# Write a deck outline

I want you to act as a professional deck writer to present in a conference. I want you to use a formal tone. You will need to research a given topic and create an outline of the deck.

{{context}}
```

This helps create professional slide structures before diving into design.

---

## 💼 Email Replies

Nail professional tone in your communication:

```markdown
# Write a positive reply to the email

I want you to act as a professional writer. I want you to use a formal tone. Reply to this email in professional way.

{{context}}
```

Quickly draft polished, respectful responses.

---

## 🧠 Brainstorm Mode

When you're stuck for ideas:

```markdown
# Write brainstorm ideas

Please generate brainstorm ideas

{{context}}
```

Great for campaign planning, naming, content ideas, and more.

---

## ✍️ Write Longer or Shorter

Tailor your output by length:

```markdown
# Write 3-5 paragraphs

{{context}}
```

```markdown
# Write 1-3 phrases

{{context}}
```

Use these when you need short bursts or medium-length content—customized to your audience or platform.

---

## 🎓 Become a Better Writer

Turn the AI into your personal tutor:

```markdown
# AI Writing Tutor

I want you to act as an AI writing tutor. I will provide you with a student who needs help improving their writing...

{{context}}
```

Perfect for students or professionals looking to improve their writing systematically.

---

## Final Thoughts

The power of AI lies not just in the model—but in the **prompts** you feed it. These templates give you a scalable, repeatable way to produce polished content without sacrificing quality. Whether you're publishing a blog, writing emails, or building a deck, using these structured prompts can save hours and improve outcomes.

💡 **Tip**: Save your favorite prompts in a Notion database, text expander, or shortcut app to streamline your workflow.

---

*Some bytes of this blog post were co-written with AI. The brain behind it is still very much human.*