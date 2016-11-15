# docker-crossbuild-onbuild
[![](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square)]()

This repository is make ONBUILD docker image.

## Table of Contents
  * [Prepare](#prepare)
  * [Usage](#usage)
  * [Requirements](#requirements)

## Prepare

```bash
$ docker build -t crossbuild-onbuild:0.0.1 .
```

## Usage

### 1. Prepare Dockerfile
```
FROM crossbuild-onbuild:0.0.1
```

### 2. Prepare toolchain.sh by your cross build toolchain
```
$ ls

Dockerfile
toolchain.sh
```

### 3. Build docker image
```
$ docker build -t crossbuild-environment:0.0.1 .
```

## Requirements
 - docker v1.9 or later
