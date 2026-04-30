# htop Docker Repository

[![CI](https://github.com/jonbaldie/htop/actions/workflows/ci.yml/badge.svg)](https://github.com/jonbaldie/htop/actions/workflows/ci.yml)

A lightweight Docker image for [htop](https://htop.dev/), the interactive process viewer.

## To use

Pull and run the latest image:

```bash
docker run --rm -it --pid=host jonbaldie/htop
```

## To build

Clone the repository and build locally with `make`:

```bash
git clone https://github.com/jonbaldie/htop.git
cd htop
make build
```

Or build directly with Docker:

```bash
docker build -t jonbaldie/htop .
```

## Why use htop in Docker?

It easily enables system monitoring on Linux flavours like CoreOS where host installations of packages are limited or forbidden.

The `docker run` command above is also a super-easy one-liner that instantly gives you a clear and trusted system monitoring dashboard.

---

(c) 2017 Jonathan Baldie
