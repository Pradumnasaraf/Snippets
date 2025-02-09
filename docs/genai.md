---
sidebar_position: 8
title: GenAI
description: Learn about GenAI and its benefits.
tags: ["GenAI", "AI", "Machine Learning", "Artificial Intelligence"]
keywords: ["GenAI", "AI", "Machine Learning", "Artificial Intelligence"]
slug: /genai
---

## What is GenAI?

Generative AI (GenAI) is a type of artificial intelligence that is used to generate new data/content such as images, videos, text, etc. It is used in various fields like art, music, literature, etc—by learning patterns from existing data and mimicking human creativity. Some popular tools for GenAI are GPT-3, DALL-E, etc.

![AI Landscape](https://github.com/user-attachments/assets/f501bd0f-2a12-4b01-8353-e8c81165db2c)

### GenAI Impact Areas

- **Customer Service**: GenAI can be used to automate customer service tasks like answering queries, providing support, etc. Like Use of Chatbots. We have seen in the apps like Uber, Amazon, etc.
- **Content Creation**: GenAI can be used to generate content like articles, blogs, etc. It can be used to generate content for websites, blogs, etc.
- **Software Development**: GenAI can be used to automate software development tasks like code generation, bug fixing, etc. It can be used to generate code for websites, apps, etc.
- **Education**: GenAI can be used to create educational content like quizzes, tests, etc. It can be used to generate educational content for students, teachers, etc.

## LLM (Large Language Model)

Large Language Models (LLMs) are a type of GenAI that are trained on a large amount of text data to generate human-like text. They are used in various applications like chatbots, content generation, etc. Some popular LLMs are GPT-3, BERT, etc.

## Categorization of LLMs

### Model Architecture

- **Transformer-Based Models**: Transformer models are a type of neural network architecture that is used in LLMs. They are based on the self-attention mechanism and are used to generate human-like text. Some popular transformer-based models are GPT-3, BERT, etc.
- **Non-Transformer-Based Models**: Non-transformer models are a type of neural network architecture that is used in LLMs. They are based on different architectures like RNN, LSTM, etc. Some popular non-transformer models are LSTM, GRU, etc.
- **Hybrid Models**: Hybrid models are a combination of transformer and non-transformer architectures. They are used to generate human-like text by combining the strengths of both architectures.
- **RNN-Based Models**: RNN-based models are a type of neural network architecture that is used in LLMs. They are based on the recurrent neural network (RNN) architecture and are used to generate human-like text.

### Training Approach

- **Pre-Trained Models (PTMs)**:  Pre-trained models are trained on a large amount of text data to generate human-like text. They are used in applications like chatbots, content generation, etc.
- **Fine-Tuned Models (FTMs)**: Fine-tuned models are trained on a specific dataset to improve their performance on a specific task. They are used in applications like chatbots, content generation, etc.
- **Zero-Shot Models**: Zero-shot models are trained on a diverse range of text data and can generate human-like text without any additional training. They are used in various applications like chatbots, content generation, etc.
- **Continual Learning Models**: Continual learning models are trained on a continuous stream of data and can generate human-like text based on the new data. They are used in applications like chatbots, content generation, etc.

### Cognitive Abilities

- **Text Generation Models**: These models are trained to generate human-like text based on the input prompt.
- **Reasoning Models**: These models are trained to perform reasoning tasks like question answering, fact checking, etc.
- **Chain-of-Thought Models**: These models are trained to generate text based on a sequence of prompts.
- **Knowledge-Rich Models**: These models are trained on knowledge base data and can generate text based on the knowledge base.
- **Planning and Decision-Making Models**: These models are trained to perform planning and decision-making tasks like scheduling, etc.

### Purpose and Use Case

- **General-Purpose Models**: These models are trained on a diverse range of text data and can be used for various tasks like chatbots, content generation, etc.
- **Domain-Specific Models**: These models are trained on specific domains like medicine, law, etc. and can be used for tasks related to that domain.
- **Code-Focused Models**: These models are trained on code data and can be used for tasks like code generation, bug fixing, etc.
- **Multimodal Models**: These models are trained on text and image data and can be used for tasks like image captioning, text-to-image generation, etc.
- **Retrieval-Augmented Models**: These models are trained on text and knowledge base data and can be used for tasks like question answering, fact checking, etc.

## Techniques Used in LLMs

- **Prompt Engineering**: Prompt engineering is the process of designing input prompts to get the desired output from a language model. It involves selecting the right tokens, formatting the input, etc.
- **Fine-Tuning**: Fine-tuning is the process of training a pre-trained language model on a specific dataset to improve its performance on a specific task. It involves updating the weights and parameters of the model using the new dataset.
- **Knowledge Distillation**: Knowledge distillation is the process of transferring knowledge from a large model to a smaller model. It involves training a smaller model to mimic the behavior of a larger model.
- **Quantization**: Quantization is a technique used to reduce the size of a model by converting the weights and parameters from floating-point to fixed-point format. It is used to optimize the model for deployment on edge devices.
- **Pruning**: Pruning is the process of removing unnecessary weights and parameters from a model to reduce its size and improve its performance. It involves identifying and removing redundant connections in the model.
- **Sparsity**: Sparsity is a technique used to introduce zeros in the weights and parameters of a model to reduce its size and improve its performance. It involves setting some weights to zero during training.
- **Retrieval-Augmented Generation**: Retrieval-augmented generation is a technique used to improve the performance of a language model by retrieving relevant information from a knowledge base. It involves querying a knowledge base to get additional information for generating text.

## Terminologies

- **Tokens**: Tokens are the basic units of text that are used to train a language model. They can be words, characters, etc. The input we give to the model is tokenized into tokens. For example, the sentence "Hello, how are you?" can be tokenized into ["Hello", ",", "how", "are", "you", "?"]. And different models use different tokenizers.
- **Load Duration**: Load duration is the time taken by a model to load the weights and parameters from the disk into memory.
- **Total Duration**: Total duration is the time taken by a model to process the input prompt and generate the output text. It includes the prompt evaluation duration, evaluation duration, and model duration.
- **Prompt Evaluation Duration**: The time taken to process the input prompt before generating the output.
- **Prompt Evaluation Rate**: The rate at which a model processed input tokens.
- **Prompt Evaluation Count**: The number of tokens processed by a model (input tokens).
- **Evaluation Duration**: The time taken to generate the output text.
- **Evaluation Count**: The number of tokens generated by a model (output tokens).
- **Evaluation Rate**: The rate at which a model generated output tokens.
- **Model Duration**: The total time taken by a model to process the input prompt and generate the output text.
- **Quantization**: Quantization is a technique used to reduce the size of a model by converting the weights and parameters from floating-point to fixed-point format. It is used to optimize the model for deployment on edge devices.
- **Model Parameters**: Model parameters are the weights and biases of a model that are learned during training. They are used to make predictions based on the input data. Weights are the learnable parameters of a model that are updated during training to minimize the loss function. Biases are the learnable parameters of a model that are used to shift the output of a neuron.