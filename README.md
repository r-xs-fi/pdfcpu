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
