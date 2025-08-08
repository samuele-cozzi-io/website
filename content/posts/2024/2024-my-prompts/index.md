---
draft: true
title: "Supercharge Me with These AI Prompts v2024.0"
date: 2024-11-15
tags: ["notes", "ai"]
cover:
    image: "featured.excalidraw.png"
    alt: "My Prompts v2024.0"
    caption: "My Prompts v2024.0"
    relative: true # To use relative path for cover image, used in hugo Page-bundles
---


In today’s content-driven world, writing isn't just about words—it's about strategy, structure, and speed. Whether you're a solo blogger, content strategist, student, or business communicator, using an AI language model can significantly boost your productivity. But to get the best out of any large language model (LLM), **well-crafted prompts** are key.

This post introduces a collection of **purpose-built prompts** designed to help you generate, evaluate, and refine content quickly and effectively. Think of it as your ultimate prompt toolbox—organized by task.

This is your open canvas. Use it when you have a vague idea or need brainstorming help, definitions, or background information. The `{{context}}` is your query—what do you want to know?

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

I want you to act as an AI writing tutor. I will provide you with a student who needs help improving their writing and your task is to use artificial intelligence tools, such as natural language processing, to give the student feedback on how they can improve their composition. You should also use your rhetorical knowledge and experience about effective writing techniques in order to suggest ways that the student can better express their thoughts and ideas in written form.

{{context}}
```

Perfect for students or professionals looking to improve their writing systematically.

---

## Final Thoughts

The power of AI lies not just in the model—but in the **prompts** you feed it. These templates give you a scalable, repeatable way to produce polished content without sacrificing quality. Whether you're publishing a blog, writing emails, or building a deck, using these structured prompts can save hours and improve outcomes.

💡 **Tip**: Save your favorite prompts in a Notion database, text expander, or shortcut app to streamline your workflow.
























Writing clear prompts is like giving directions to a co-pilot: the better the directions, the better the ride. Below is a compact, practical blog post you can copy/paste or adapt for your site. It’s organized by common use-cases and includes concrete prompts and brief notes on what to expect.

---

## Prompt anatomy

A reliable pattern you can reuse:
**Role + Goal + Context + Constraints + Output format**

- **[role]**: "Experienced creative writer",...
- **[goal]**: "write a short story",...
- **[context]**: "about a rainy night in Rome",...
- **[constraints]**: "between 450 and 650 words",...
- **[format]**: "a polished short piece with a clear mood and an evocative closing line".

**Example skeleton:**

> *You are a \[role]. Help me \[goal]. Here’s the context: \[context]. Constraints: \[constraints]. Provide the final answer as: \[format].*

## ✍️ Writing — stories, blog posts, newsletters

**Use-case:** Generate a short story, blog intro, or newsletter blurb.

**Template:**

> You are [role]. [goal] a [length] [genre] about [topic]. Make the tone [tone]. Include [elements: characters/themes]

**[Role]:** "An experienced creative writer"

**[Goal]:** "Write"

**[Context]**

- *[topic]*
- *[elements: characters/themes]*

**[Constraints]**

- *[length]*: "450–650 words"
- *[genre]*: "contemporary short story", "blog post"
- *[tone]*: "wistful and slightly humorous"

**Example prompt:**

> You are an experienced creative writer. Write a [length] [genre] about [topic]. Tone: [tone]. Include [elements: characters/themes]

**Why it works:** Role + clear constraints (length, tone, setting) + one concrete image to anchor the story.

**Expected output:** A polished short piece with a clear mood and an evocative closing line.

---

### Title Optimization

**Template:**

> You are a [role]. Generate 10 catchy titles for a [topic] blog post. Make them engaging, concise, and optimized for SEO. Include a mix of questions, how-tos, and listicles.

**[Role]:** "An experienced creative writer", "professional content strategist", "professional journalist"
**[Context]:** "blog post about xxx", [link to existing content]

---

### Summarize with precision

**Template:**

> I want you to act as a [role]. I want you to use a [tone] tone. Summarize in [length] [context].

**[Role]:** "experienced creative writer", "professional content strategist", "professional writer"

**[Constraints]**

- *[length]*: "450–650 words", "1–2 paragraphs", "3–5 sentences"
- *[tone]*: "formal", "conversational", "concise"

---

### Bullet Points

**Template:**

> I want you to act as a [role]. I want you to use a [tone] tone. Write a bullet point list about [context].

**[Role]:** "professional writer"

**[Constraints]**

- *[tone]*: "formal"
  
---

### Translate accurately

**Template:**

> I want you to act as a [role]. You will preserve tone, register, and any cultural references. I may speak to you in any language; you will detect the language automatically and translate it into [target language], ensuring the meaning is preserved and all grammar errors are corrected. Respond only with the translated text — no explanations, comments, or additional content: [context]

**[Role]:** "professional translator"

**[Constraints]**

- *[target language]*: "english", "italian"

---

### Categorize the text with tags

**Template:**

> I want you to act as a [role]. Suggest tags for the [context]

**[Role]:** "professional SEO expert"

---

### Write journal article

**Template:**

> You are [role]. Write an article [length] about [topic]. Make the tone [tone]. Include [elements: characters/themes]. Write the article in grade 8 level to publish in journal with sources and references.

**[Role]:** "A professional writer"

**[Context]**

- *[topic]*
- *[elements: characters/themes]*

**[Constraints]**

- *[length]*: "450–650 words"
- *[tone]*: "formal"

---

### Write longer or shorter

**Template:**

> Write 3-5 paragraphs about [context]

> Write 1-3 phrases about [context]

---

**Quick usage tips:**

- Use the *Title Optimization* list when A/B testing subject lines or social posts.
- Use the *Summarize* template to create meta descriptions or social blurbs.
- Use the *Translate* template when publishing for multilingual audiences—include both literal and natural versions for editors.
- Use the *Categorize* tags directly as SEO/metadata or in your CMS to improve discoverability.

---

## 💡 Brainstorming & ideation

**Use-case:** Rapid idea generation (names, product features, marketing angles).

**Template:**

> You are a creative strategist. Generate \[N] ideas for \[goal]. Constraints: \[budget/tone/market]. For each idea provide one-line summary + one potential metric to measure success.

**Example prompt:**

> You are a creative strategist. Generate 12 marketing campaign ideas to grow signups for a language-learning app targeted at young professionals. Budget: modest. For each idea give a one-line summary and one metric to track.

**Why it works:** Asking for many structured ideas plus a metric makes brainstorming usable.

---

## 7) Customer support & email drafts

**Use-case:** Draft empathetic support replies, escalation messages.

**Template:**

> You are a customer support specialist. Reply to the user who says: “\[customer message]”. Tone: apologetic, helpful. Include: acknowledgement, explanation, concrete next steps, and a goodwill gesture (if appropriate). Keep it under \[X] words.

**Example prompt:**

> You are a customer support specialist. Reply to: “I was double-charged for my subscription and can’t reach billing.” Tone: apologetic and solution-oriented. Offer next steps and a small credit. Keep it under 120 words.

**Expected output:** A concise empathetic response with instructions and compensation.

---

## 8) Learning & tutoring

**Use-case:** Teach a concept, build quizzes, explain mistakes.

**Template:**

> You are a patient tutor. Teach \[concept] to someone at \[level]. Use analogies, one worked example, and a 5-question quiz (answers included).

**Example prompt:**

> You are a patient tutor. Teach the concept of confidence intervals to an undergraduate student. Use a coffee-shop analogy, show one worked example with numbers, then produce a 5-question quiz with answers.

**Why it works:** Analogies + worked examples + quiz = teachable output.

---

## 9) Meetings & productivity (agendas, summaries)

**Use-case:** Create meeting agenda, summarize long notes, craft follow-ups.

**Template:**

> You are an executive assistant. Create a 30-minute meeting agenda to discuss \[topic] with \[roles]. Include timeboxes, 3 goals, and 2 prep materials. After the meeting create a 3-point follow up template.

**Example prompt:**

> You are an executive assistant. Create a 30-minute meeting agenda for a product roadmap sync with PM and Engineering. Include timeboxes and 3 goals. Then provide a 3-line follow-up email template.

**Expected output:** A tidy agenda + follow-up template.

---

## Quick reusable prompt bank (copy-paste)

* **Blog outline:**

  > You are a professional content strategist. Create a 7-point outline for a 1200-word blog post titled “\[TITLE]”. Include H2 headings and 1 sentence describing the point under each heading.

* **Refactor code:**

  > You are a senior dev. Refactor the following function for readability and performance. Provide the improved code and a one paragraph explanation.

* **Extract insights from text:**

  > You are an analyst. Read this meeting transcript and list 5 action items, each with an owner and due date suggestion.

* **Product naming:**

  > You are a brand strategist. Suggest 20 one-word product names for a premium plant care app. Provide a 1-word rationale for the top 5.

---

## Practical tips — do’s & don’ts

**Do**

* Give context and constraints.
* State the role you want the assistant to play.
* Request format (list, JSON, steps).
* Provide examples for tone/style when needed.
* Ask for assumptions if the assistant needs to guess.

**Don’t**

* Leave the task vague (“help me write”).
* Ask multiple unrelated tasks without structure.
* Assume the model remembers long previous prompts—restate important details.

---

## Final thoughts (practical checklist)

When you write a prompt, ask yourself:

1. Who is the assistant supposed to be? (role)
2. What exactly do I want? (goal)
3. What does the assistant need to know? (context)
4. Any strict requirements? (format, length, style)
5. Should the model show steps or only final output?

---

*Some bytes of this blog post were co-written with AI. The brain behind it is still very much human.*