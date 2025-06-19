# Docker container for LiftOn

Dockerfile for [LiftOn](https://github.com/Kuanhao-Chao/LiftOn): Accurate annotation mapping for GFF/GTF across assemblies

It's on [dockerhub](https://hub.docker.com/r/naotokubota/lifton) and [github](https://github.com/NaotoKubota/LiftOn).

## tags and links

- `v1.0.5` [(main/Dockerfile)](https://github.com/NaotoKubota/LiftOn/blob/main/Dockerfile)

## how to build

```sh
docker pull naotokubota/LiftOn:v1.0.5
```

or

```sh
git clone git@github.com:NaotoKubota/LiftOn.git
cd LiftOn
docker build --rm -t naotokubota/LiftOn:v1.0.5 .
```

## running

```sh
docker run --rm -it naotokubota/LiftOn:v1.0.5
```
