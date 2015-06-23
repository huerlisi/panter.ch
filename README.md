# panter.ch

This website is built using [Middleman](https://middlemanapp.com/).

## Setup

```sh
bundle
```

## Deployment

#### Staging ([beta.panter.ch](http://beta.panter.ch/)):

```sh
middleman build
middleman deploy
```

#### Production ([www.panter.ch](http://www.panter.ch/)):

```sh
middleman build
TARGET=production middleman deploy
```
