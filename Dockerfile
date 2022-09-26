# CHIMERA RUST 1.59.0 'BUILD' IMAGE
# - buster image for building rust apps

FROM rust:1.63.0-buster

RUN apt-get update \
    && apt-get install -y \
        bash \
        g++ \
        gcc \
        git \
        jq \
        libsasl2-dev \
        curl \
        zip


# install node to build project for napi bindings
#ENV NODE_VERSION=16.15.0
#RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
#ENV NVM_DIR=/root/.nvm
#RUN . "$NVM_DIR/nvm.sh" \
#    && nvm install ${NODE_VERSION} \
#    && nvm use v${NODE_VERSION} \
#    && nvm alias default v${NODE_VERSION}
#ENV PATH="/root/.nvm/versions/node/v${NODE_VERSION}/bin/:${PATH}"

# Rust extensions used in pipeline
# pre installed for faster builds
RUN cargo install cargo2junit grcov\
    && rustup component add rust-src rustfmt clippy llvm-tools-preview \
    && rustup toolchain install nightly


WORKDIR /tmp
COPY ./ .
RUN make test.unit.coverage.rust
