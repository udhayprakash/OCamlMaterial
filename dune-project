(lang dune 2.9)
(name ocaml_learning)
(generate_opam_files true)
(package
 (name ocaml_learning)
 (synopsis "OCaml Learning Project")
 (depends
  (ocaml (>= 4.14.0))
  (dune (>= 2.9.0))
  (utop :dev)
  (ocaml-lsp-server :dev)))
