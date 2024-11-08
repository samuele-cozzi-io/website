---
draft: true
title: Llm Local Prerequisites
date: 2024-06-15
tags: ["developer"]
cover:
    image: "cover.excalidraw.png"
    alt: "Ollama"
    caption: "Ollama"
    relative: true # To use relative path for cover image, used in hugo Page-bundles
---

## Stories

1. **[Llm Local Prerequisites](index.md)**
2. [Hello Llama](../llm-local_hello-llama/index.md)
3. [Hello LlamaIndex](../llm-local_hello-llamaIndex/index.md)
4. [Obsidian LLM](../llm-obsidian/index.md)

## Prerequisites

### Applications

To get started and allows you to harness the capabilities of **Large Language Models (LLMs) on your local machine**, you'll need to have certain applications installed on your computer:

- [Ollama](https://ollama.com/download): Ollama is a platform that enables the running of large language models (LLMs) on local devices like PCs and Macs, without needing cloud resources or extensive infrastructure. It's designed to provide a more private and potentially more efficient way to use LLMs for various applications.
- [Anaconda](https://www.anaconda.com/download): Anaconda is an open-source distribution of the Python programming language, primarily used for scientific computing, data science, machine learning, and large-scale data processing. It simplifies package management and deployment, making it easier for users to install, manage, and use various libraries and tools in a consistent environment.

With Ollama and Anaconda in place, you'll be ready to explore the capabilities of LLMs on your local machine, giving you unparalleled control over model development and customization. Whether you're a researcher, developer, or simply someone interested in exploring the fascinating world of AI-powered language models, LLM Local has got you covered.The possibilities with LLM Local are vast and exciting. You can use it to develop custom chatbots, create personalized language assistants, or even build advanced text generation tools. The tool's flexibility and ease of use make it an ideal choice for anyone looking to dive into the world of LLMs and unlock their full potential.

In this article we **get start with LLMs on local machine**, and will **chat with our own data**, developing a very simple RAG application on **Python Notebook**.

### Environment configuration - Anaconda

Creating a New Environment from Anaconda Prompt opening the Anaconda Prompt on your computer. Create a new environment for large language model usage and activate it by running:

```shell
conda create --name llm python=3.9
conda activate llm
```

Remember to activate and deactivate environments as needed to manage package dependencies and keep your projects organized!

To use Visual Studio Code with LLMs, you'll need to install some essential packages:

```shell
conda install ipykernel
```

And for ollama and llama-index integration:

```shell
pip install --upgrade ollama

pip install llama-index
pip install llama-index-llms-ollama
pip install llama-index-embeddings-ollama
```

### Environment Configuration - Ollama

To run an LLM like [llama3.1](https://ollama.com/library/llama3.1) locally, users can simply run a command in their terminal using the `ollama` tool. For example:

```shell
ollama pull llama3.1
```

This command pulls the model from Ollama's servers and makes it available for use on the local machine. You can choose from various models available in Ollama's [library](https://ollama.com/library). For more information about model, you may visit Meta Blog to read an introduction to [Llama 3.1](https://ai.meta.com/blog/meta-llama-3-1/)

In addition to hosting LLMs, Ollama also provides a range of [Embedding models](https://ollama.com/blog/embedding-models) that can be used in various applications. For example, users can pull the `nomic-embed-text` model using:

```shell
ollama pull nomic-embed-text
```

This model is designed for text embedding tasks and offers improved performance over traditional approaches.
