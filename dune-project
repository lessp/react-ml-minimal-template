(lang dune 3.18)
(using melange 0.1)

(name react_ml_minimal)
(generate_opam_files true)
(source
 (github username/reponame))
(authors "Author Name <author@example.com>")
(maintainers "Maintainer Name <maintainer@example.com>")
(license LICENSE)
(documentation https://url/to/documentation)

(package
 (allow_empty)
 (name react_ml_minimal)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends ocaml dune melange reason-react reason-react-ppx opam-check-npm-deps mlx ocamlmerlin-mlx)
 (tags
  ("add topics" "to describe" your project)))

;; mlx 
(dialect
 (name mlx)
 (implementation
  (extension mlx)
  (merlin_reader mlx)
  (preprocess
   (run mlx-pp %{input-file}))))
