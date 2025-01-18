# React for OCaml Minimal Starter Template

This is a minimal starter template for a ReasonReact project. Using `bun`,
`vite` and `dune`.

Clone the repository and run the following commands to get started.

### Install the [Dune Developer Preview](https://preview.dune.build/) (if you haven't already):

```sh
curl -fsSL https://get.dune.build/install | sh
```

### Install NPM dependencies

```sh
bun install
```

### Compile OCaml to JavaScript via Melange

The output of the JS artifacts will be located under `_build/default/src/js`, as
specified in the [`./src/dune`](./src/dune) file.

```sh
dune build -w # alternatively, `dune build` to build once
```

### Serve the project via Vite

```sh
bun run dev # for live-reloading
```

or

```sh
bun run build # to bundle everything
bun run preview # to serve the bundle
```

## Adding bindings to a React component

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

Create a file e.g. `src/bindings/Markdown.mlx`:

```ocaml
(* Markdown.mlx *)
external make: children:string -> React.element = "default" (* use default export *)
[@@mel.module "react-markdown"] [@@react.component]
```

Use the bindings in your ReasonReact component:

```ocaml
(* App.mlx *)
let[@react.component] make () =
  let markdown = "# Hi, *Pluto*!" in

  <Markdown>markdown</Markdown>
;;
```

# License

MIT
