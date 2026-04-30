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

## Troubleshooting

### htop only shows container processes

If you only see a few processes rather than everything running on the host, make sure you are using `--pid=host`:

```bash
docker run --rm -it --pid=host jonbaldie/htop
```

Without this flag Docker isolates the container's process namespace, so htop can only see itself.

### Permission denied

Some system information requires elevated privileges. If htop gives permission errors, check that the user running the container (or the Docker daemon) has access to `/proc`. Running the command with `sudo` usually fixes it:

```bash
sudo docker run --rm -it --pid=host jonbaldie/htop
```

### Garbled or blank display

If the screen looks wrong or htop exits immediately, you probably forgot the `-it` flags. htop needs an interactive TTY to draw its interface:

- `-i` tells Docker to keep STDIN open
- `-t` allocates a pseudo-TTY

Use both together:

```bash
docker run --rm -it --pid=host jonbaldie/htop
```

---

(c) 2017 Jonathan Baldie
