FROM ocaml/opam:ubuntu-22.04-ocaml-4.14

# Switch to root to install system dependencies
USER root

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    git \
    m4 \
    unzip \
    wget \
    zlib1g-dev \
    libgmp-dev \
    pkg-config

# Switch back to opam user
USER opam

# Install OCaml and key tools
RUN opam init -y --disable-sandboxing \
    && opam switch create 4.14.0 \
    && eval $(opam env) \
    && opam install -y \
    dune \
    utop \
    ocaml-lsp-server \
    ocamlformat \
    ounit2 \
    core \
    core_kernel \
    lwt

# Set working directory
WORKDIR /workspace
