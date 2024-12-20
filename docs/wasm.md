---
sidebar_position: 8
title: WebAssembly
slug: /wasm
---

In simple terms WebAssembly (Wasm) is a binary instruction format. With WebAssembly, you can write code in languages like C, C++, and Rust, and run it in the browser at near-native speed. It is design to run alongside JavaScript, allowing both to work together.

## Resources

- [WebAssembly](https://webassembly.org/)
- [MDN Web Docs](https://developer.mozilla.org/en-US/docs/WebAssembly)

## Why WebAssembly?

As JavaScript is the only language that runs in the browser. It comes with its own limitations and challenges like:

- Interpreted language: it's translated on-the-fly by the browser and different browsers have different JavaScript engines. Like V8 in Chrome, SpiderMonkey in Firefox, etc. And it's still generally slower than compiled languages.
- Performance: Applications which require high performance like games, video editing, real-time graphics intensive computations, etc. often encounter performance issues.
- Memory limitations: JavaScript has memory limitations. The garbage collector can introduce a pause in the application execution and doesn't allow direct memory access.
-  Concurrency: JavaScript is single-threaded and doesn't support multi-threading. It can't take advantage of multi-core processors. Yes, it can efficiently handle asynchronous operations using callbacks, promises, async/await, etc. But can't truly run multiple tasks in parallel. Becomes more pain point with real-time simulations or data intensive applications.

WebAssembly was designed to address these limitations. With it's low-level binary format, it can be executed at near-native speed. Additional benefits include:
- Language agnostic: It's not tied to any specific language. You can write code in any language that compiles to WebAssembly.
- Secure: It runs in a sandboxed environment and doesn't have direct access to the host system.
- Portable: We can WASM application be it smartphones, desktops, or servers.
- Concurrency and Parallelism: WebAssembly can take advantage of multi-core processors and run multiple tasks in parallel.
- Compactness and Speed: WebAssembly is designed to be fast to decode and execute. It's compact and can be downloaded quickly. Web application which uses WebAssembly can load faster and run more efficiently. The speed is achieved by the binary format which is smaller and and download faster and binary decoding is faster than parsing text.

## Use Cases

- **Machine Learning and AI**: With this app can make real-time predictions, image recognition, etc without sending data to the server and latency in processing.
- **Multimedia Applications**: Video editing, audio processing, real-time graphics, etc. Rendering and video/image filters need high performance, with WASM it can be smoother and faster.
- **Real-time Data Visualization**: Real-time simulations, data processing, etc. can be done more efficiently. Sector like finance, logistics, etc can benefit from this.
- **3D Games and Simulations**: Games which requires intensive graphics operations can benefit from WASM. 3D games and simulations can run more smoothly and efficiently.

### Real-world examples

- [TensorFlow.js](https://www.tensorflow.org/js): TensorFlow.js integrates with WebAssembly to enhance computation performance. Making real-time browser predictions possible.
- [Figma](https://www.figma.com/): Intricate design operations and rendering processes are fluid and responsive, enhancing user experience.
- [AutoDesk](https://www.autodesk.com/): AutoDesk uses WebAssembly to run complex CAD operations in the browser.
- [Unity](https://unity.com/): Unity supports WASM enabling developers to create high-performance 3D browser games.
- [Shopify](https://www.shopify.com/): Shopify uses WASM to optimize its theme editor, allowing merchants to design and preview their online stores in real-time.

## WebAssembly vs JavaScript

WebAssembly and JavaScript are not competing technologies. They are designed to work together. WebAssembly is not a replacement for JavaScript. Both have it's own strengths and weaknesses. On one hand, JavaScript is high-level, dynamic, ubiquity and ecosystem. With few line of code we can create a form or button, etc. On the other hand, WebAssembly give us flexibility to write code in any language and run it in the browser. And comes with the performance benefits.

For better perspective how they work together. Take an example of image processing web application. The UI and user interactions, like button, sliders and dropdown menus or the event handling (select a filter, adjust a slider) or feedback (display notification, progress bar, etc) can be done in JavaScript. On the other hand, heavy lifting like image processing, that need computational power can be done in WebAssembly. This way we can take advantage of both technologies. Like tha actual image processing can be done in WebAssembly ensuring that filters are applied quickly and efficiently. Or complex algo ported from existing C or C++ libraries can be complied to WASM and use to process the image data.