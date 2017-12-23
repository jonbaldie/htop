### htop Docker Repository

[![Build Status](https://travis-ci.org/jonbaldie/htop.svg?branch=master)](https://travis-ci.org/jonbaldie/htop)

To use:

`docker run -it --pid=host jonbaldie/htop`

To build:

`docker pull jonbaldie/htop`

Alternatively you can `git clone` the repo and run `make` from the project root.

### Why use htop in Docker?

It easily enables system monitoring on Linux flavours like CoreOS where host installations of packages are limited or forbidden.

The `docker run` command above is also a super-easy one-liner that instantly gives you a clear and trusted system monitoring dashboard.

(c) 2017 Jonathan Baldie

