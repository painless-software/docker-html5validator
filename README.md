html5validator
==============

[![dockeri.co](http://dockeri.co/image/painless/html5validator)](https://hub.docker.com/r/painless/html5validator/)

[![MIT License](https://img.shields.io/github/license/painless-software/docker-html5validator.svg)](https://github.com/painless-software/docker-html5validator/blob/master/LICENSE
) [![GitHub issues](https://img.shields.io/github/issues-raw/painless-software/docker-html5validator.svg)](https://github.com/painless-software/docker-html5validator/issues
) [![GitHub PRs](https://img.shields.io/github/issues-pr-raw/painless-software/docker-html5validator.svg)](https://github.com/painless-software/docker-html5validator/pulls)

Convenience wrapper for the [html5validator](https://pypi.org/project/html5validator/)
Python package that can validate HTML and CSS files. Packs all required dependencies
into a container image that you can use with your CI/CD pipeline.

**NOTE:** SVG validation is broken, at the moment, issue coming from upstream.

Supported Tags
--------------

- [![latest](
  https://img.shields.io/badge/-latest-blue.svg?colorA=22313f&colorB=4a637b&logo=docker)](
  https://github.com/painless-software/docker-html5validator/blob/master/Dockerfile) [![size/layers](
  https://images.microbadger.com/badges/image/painless/html5validator:latest.svg)](
  https://microbadger.com/images/painless/html5validator)

Usage
-----

Validate all HTML and CSS files in your current local directory:

```console
docker run --rm -v $(pwd):/app:ro painless/html5validator
```

Validate your repository's HTML and CSS files, located in a `html` folder,
with GitLab CI:

```yaml
# .gitlab-ci.yml

html5validator:
  image: painless/html5validator
  script: html5validator --root html/ --also-check-css --show-warnings
```

Obviously, the use is similar with other CI services.

Development
-----------

- [Contribute](https://github.com/painless-software/docker-html5validator) (GitHub repository)
