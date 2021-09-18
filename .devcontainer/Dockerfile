ARG VARIANT=focal
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}
ENV PROTOLINT_VERSION=0.35.1

# [Optional] Uncomment this section to install additional OS packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
  && apt-get -y install --no-install-recommends protobuf-compiler clang-format golang

RUN echo "https://github.com/yoheimuta/protolint/releases/download/v${PROTOLINT_VERSION}/protolint_${PROTOLINT_VERSION}_Linux_$(uname -m).tar.gz" > /check

RUN curl -o /tmp/protolint.tar.gz -LJO https://github.com/yoheimuta/protolint/releases/download/v$PROTOLINT_VERSION/protolint_"$PROTOLINT_VERSION"_Linux_$(uname -m).tar.gz && tar xvf /tmp/protolint.tar.gz -C /usr/bin/ && chmod +x /usr/bin/protolint