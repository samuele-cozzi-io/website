[![](https://img.shields.io/badge/website-hosting-yellow?style=flat-square&logo=appveyor)](https://samuele-cozzi-io.github.io/website/) [![](https://img.shields.io/badge/website-console-yellow?style=flat-square&logo=appveyor)](https://analytics.google.com/analytics/web/?authuser=0#/p417542997/reports/intelligenthome?params=_u..nav%3Dmaui)

# My Static Website

My Static website

## develop locally

### prepare 

```shell
git clone <repo>
git submodule update --init --recursive
```

### new post

```shell
hugo new posts/2022/writing-my-blog/index.md
```

## run

```shell
hugo server -D

# on Codespace
hugo server -D -b "https://{githubUrl}" --appendPort=false
```

## Deploy

Use firebase `login:ci` to generate a token.

## references

- [Hugo Docs](https://gohugo.io/documentation/)
- [PaperMod Theme](https://themes.gohugo.io/themes/hugo-papermod/)
