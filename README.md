# React.ml Minimal Starter Template

This is a minimal starter template for a ReasonReact project.

### Install the Dune Developer Preview:

```sh
curl -fsSL https://get.dune.build/install | sh
```

### Install NPM dependencies

```sh
bun install
```

### Compile OCaml to JavaScript via Melange

The output of the JS artifacts will be located under `_build/default/src/js`, as
specified in the [src `dune`](./src/dune) file.

```sh
dune build # alternatively, keep the watcher running with `dune build -w`
```

### Serve the project via Vite

For convenience the bundled Melange JS app is imported in
[`public/main.js`](./public/main.js) and then referenced in
[`public/index.html`](./public/index.html).

```sh
bun run preview # alternatively `bun run dev` for live-reloading
```

## Adding bindings a React component

Install the JS dependencies:

```sh
bun add react-markdown
```

Look at the basic usage of the library and create the bindings accordingly.

```js
import Markdown from 'react-markdown'
       ^^^^^^^^
/* uses default export */

const markdown = '# Hi, *Pluto*!'
<Markdown>{markdown}</Markdown>
```

Create a file e.g. `src/bindings/ReactMarkdown.mlx`:

```ocaml
(* ReactMarkdown.mlx *)
external make: children:string -> React.element = "default"
[@@mel.module "react-markdown"] [@@react.component]
```

Use the bindings in your ReasonReact component:

```ocaml
(* App.mlx *)
let[@react.component] make () =
  let markdown = "# Hi, *Pluto*!" in

  <ReactMarkdown>markdown</ReactMarkdown>
;;
```

# License

MIT
