---
draft: true
title: Hello LlamaIndex
date: 2024-08-15
tags: ["developer"]
cover:
    image: "cover.excalidraw.png"
    alt: "Hello Llama Index"
    caption: "Hello Llama Index"
    relative: true # To use relative path for cover image, used in hugo Page-bundles
---

This notebook is designed to demonstrate how to build a document-based AI interaction system using the LlamaIndex library with the Ollama Models on the local machine. The project is structured to guide users through configuring and deploying a retrieval-augmented generation (RAG) model that can read, understand, and summarize text from documents. The core idea is to leverage the power of AI for tasks such as querying specific information from a collection of texts and summarizing large amounts of data.

## Stories

1. [LLM Local](../llm-local_prerequisites/index.md)
2. [Hello Llama](../llm-local_hello-llama/index.md)
3. **[Hello LlamaIndex](index.md)**
4. [Obsidian LLM](../llm-obsidian/index.md)

## Setting Up LlamaIndex

The journey begins with configuring the LlamaIndex environment. The notebook sets up an embedding model and a language model (LLM) using the Ollama library, which is crucial for understanding and processing the text data.

```python
from llama_index.core import Settings
from llama_index.embeddings.ollama import OllamaEmbedding
from llama_index.llms.ollama import Ollama

Settings.embed_model = OllamaEmbedding(
    model_name="mxbai-embed-large",
    base_url="http://127.0.0.1:11434",
    ollama_additional_kwargs={"mirostat": 0},
)

Settings.llm = Ollama(model="llama3.1", request_timeout=6000.0)
```

Here, the `OllamaEmbedding` and `Ollama` classes are used to set up the embedding model and the LLM, respectively. This configuration allows the AI to understand the documents by embedding their content into a vector space and then utilizing the LLM for generating human-like responses based on the embedded information on the local machine.

### Building and Querying the Index

The next step involves creating or loading a vector-based index of the documents. The index allows the AI to efficiently retrieve relevant pieces of information based on user queries.

```python
import os.path
from llama_index.core import (
    VectorStoreIndex,
    StorageContext,
    SimpleDirectoryReader,
    load_index_from_storage,
)

PERSIST_DIR = "./storage"
if not os.path.exists(PERSIST_DIR):
    documents = SimpleDirectoryReader("data").load_data()
    index = VectorStoreIndex.from_documents(documents)
    index.storage_context.persist(persist_dir=PERSIST_DIR)
else:
    storage_context = StorageContext.from_defaults(persist_dir=PERSIST_DIR)
    index = load_index_from_storage(storage_context)
```

In this section, the notebook checks if a persistent storage directory already exists. If it does, the existing index is loaded; if not, a new one is created from the documents found in the `data` directory. This flexibility is crucial for handling large-scale document collections.

### Chatting with Documents

With the index ready, the notebook demonstrates how to interact with the documents through a simple chat interface. The user can query specific information, and the AI will respond based on the indexed content.

```python
query_engine = index.as_query_engine(streaming=True)
response = query_engine.query("What did the author do growing up?")
response.print_response_stream()
```

For example, when asked, "What did the author do growing up?", the AI parses the documents and returns relevant information, showcasing its understanding of the text.

#### Summarizing Documents

Beyond querying, the notebook also covers how to summarize large texts. This is done using a summarization configuration within the LlamaIndex.

```python
query_engine = index.as_query_engine(response_mode="tree_summarize")
response = query_engine.query("What is the text summary?")
```

Here, the AI doesn't just pull out information—it synthesizes a coherent summary, which can be invaluable for quickly understanding lengthy documents.

#### Conclusion

This notebook is a powerful demonstration of how modern AI can be configured to interact with personal or professional documents. By building on the LlamaIndex library, users can create customized AI systems that not only answer questions but also provide meaningful summaries of large data sets.

Whether you're a researcher, a professional, or simply someone interested in the cutting edge of AI, this project opens up new possibilities for how we interact with information. It's an exciting step towards making AI an even more integral part of our daily workflows.

---

By following the steps in this notebook, you can build your own document-interaction AI, tailored to your specific needs and data. This is just the beginning—imagine the potential applications as this technology continues to evolve!
