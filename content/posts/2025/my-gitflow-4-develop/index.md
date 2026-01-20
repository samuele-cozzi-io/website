---
draft: true
title: "My Git Workflow: Develop Branching"
date: 2025-05-15
tags: ["developer"]
series: ["git workflow"]
series_order: 4
cover:
    image: "featured.excalidraw.png"
    alt: "GIT WORKFLOW"
    caption: "GIT WORKFLOW"
    relative: true # To use relative path for cover image, used in hugo Page-bundles
---

Here’s **Part 4** of your Git Workflow series on **Gitflow / Develop Workflow**, polished for blog readability, with clear bullet points where useful while keeping your structure intact.

---

# My Git Workflow – Part 4: Gitflow and the Develop Branch Workflow

The **Develop Branch Workflow** is built around the idea that you may need to work on and deploy different versions of a product in parallel, which naturally leads to having multiple long-lived primary branches.

**Gitflow**—first introduced and popularized by [Vincent Driessen at nvie](http://nvie.com/posts/a-successful-git-branching-model/)—is a branching strategy that expands upon the *Feature Branch Workflow*. It uses dedicated branches for features, fixes, releases, and maintenance, defining specific roles for each one. Compared to trunk-based development, Gitflow typically involves longer-lived branches, larger commits, and a delayed merge of features until they are complete. While this can provide structure, it also increases the risk of branches drifting apart and causing merge conflicts, especially when updates conflict.

Gitflow is often a good fit for projects with **scheduled release cycles** or for DevOps practices like **continuous delivery**, and it inherits all the advantages of the Feature Branch Workflow—such as pull requests, isolated experiments, and a clear review process—while adding more structure for managing releases.

![](attachments/git_develop.excalidraw.svg)

---

## Two Long-Lived Branches

In Gitflow, work starts from two primary, long-lived branches:

* **Main** – Represents the **current release** version. It’s where developers merge hotfixes or patches for production bugs, keeping it always ready for deployment or rollback.
* **Develop** – Represents the **next release** version. It’s where developers integrate changes intended for the upcoming release, allowing time for unit, integration, system, and regression testing before merging into `main`.

---

## Features & Fixes Flow

The flow for developing features and fixes follows the same principles as the Feature Branch Workflow, with one key distinction:

* **Fix branches** start from the `main` branch so that production issues can be resolved and deployed without waiting for the next planned release.
* **Feature branches** start from the `develop` branch so that work for the next release remains isolated from production-ready code until it is complete and tested.

---

## Alignment of Branches

One of the most critical aspects of the Develop Workflow is keeping the `develop` branch aligned with `main`. This ensures that:

* Production fixes applied to `main` are also integrated into `develop`, preventing regressions.
* `main` remains stable, ready for immediate deployment or rollback.

To manage this alignment, Gitflow typically uses two recurring actions:

* **Re (Release merge)** – Once all features for the next release are complete and tested, the product manager creates a pull request to merge `develop` into `main`.
* **Al (Alignment merge)** – On a set schedule (daily, weekly, etc.), an automated process creates a pull request to merge any `main` branch fixes back into `develop`.

These regular syncs prevent branches from drifting too far apart, making merges less painful.

---

## Scaling the Develop Workflow

As products grow more complex, teams may need to work on multiple significant features or environments in parallel. Gitflow can scale to support this by maintaining **one develop branch for each product environment or version** under active development.

![](attachments/git_develop_scaled.excalidraw.svg)

However, scaling successfully requires that both the **alignment (Al)** and **release merge (Re)** processes be automated. Without automation, branch syncing quickly becomes error-prone and time-consuming.

---

## Use Cases

The Develop Workflow is well-suited for:

* **Waterfall-oriented teams** that prefer structured, staged releases.
* Situations requiring **breaking changes** to be developed without interrupting ongoing maintenance for the production version.
* **Complex release planning** where multiple environments or product versions need to be prepared simultaneously.

---

## CONs

* Merging multiple develop branches can be challenging and requires active management.
* The longer-lived nature of branches increases the risk of conflicts if alignment isn’t handled consistently.

---

## References

- [A Successful Git Branching Model](https://nvie.com/posts/a-successful-git-branching-model/)
- [Git Flows](https://www.git-tower.com/learn/git/ebook/en/desktop-gui/advanced-topics/git-flow)
- [Gitflow Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)

---

*Some bytes of this blog post were co-written with AI. The brain behind it is still very much human.*