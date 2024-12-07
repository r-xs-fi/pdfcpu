Container image for pdfcpu - a PDF processor written in Go supporting encryption.

## Usage

```shell
docker run --rm -it ghcr.io/r-xs-fi/pdfcpu
```

## Supported platforms


| OS    | Architecture  | Supported | Example hardware |
|-------|---------------|-----------|-------------|
| Linux | amd64 | ✅       | Regular PCs (also known as x64-64) |
| Linux | arm64 | ✅       | Raspberry Pi with 64-bit OS, other single-board computers, Apple M1 etc. |
| Linux | arm/v7 | ❌ (upstream doesn't build for this platform)       | Raspberry Pi with 32-bit OS, older phones |
| Linux | riscv64 | ❌ (upstream doesn't build for this platform)       | More exotic hardware |

## How does this software get to me?

```mermaid
flowchart TD
    subgraph "Origin"
        sourcerepo["Original repo's pre-built binaries 🔗"]

        click sourcerepo "https://github.com/pdfcpu/pdfcpu"
    end
    subgraph "Packaging build"
        rxsfi_build["r.xs.fi build (GitHub Actions)"]
    end
    subgraph "Container Registry"
        r_xs_fi_package_registry[ghcr.io/r-xs-fi/pdfcpu 🔗]

        click r_xs_fi_package_registry "https://ghcr.io/r-xs-fi/pdfcpu"
    end
    subgraph "user"
        docker_run[$ docker run ...]
    end
    sourcerepo -- download --> rxsfi_build
    rxsfi_build -- push --> r_xs_fi_package_registry
    r_xs_fi_package_registry -- pull --> docker_run[$ docker run ...]

```
