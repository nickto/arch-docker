# Dockerfiles for Arch Linux

## How to build

First, fetch all branches:

```bash
git fetch origin base-devel
git fetch origin yay
```

Then build and push from each branch

```bash
git checkout base-devel
make docker-image
make docker-push

git checkout yay
make docker-image
make docker-push
```