html5validator
==============

[![dockeri.co][dockerico]][dockerhub]

[![MIT License][badge-license]][licensefile]
[![GitHub issues][badge-issues]][github-issues]
[![GitHub PRs][badge-prs]][github-prs]

Convenience wrapper for the [html5validator](https://pypi.org/project/html5validator/)
Python package that can validate HTML, CSS and SVG files. Packs all required dependencies
into a container image that you can use with your CI/CD pipeline.

[dockerico]: http://dockeri.co/image/painless/html5validator
[dockerhub]: https://hub.docker.com/r/painless/html5validator/
[badge-license]: https://img.shields.io/github/license/painless-software/docker-html5validator.svg
[badge-issues]: https://img.shields.io/github/issues-raw/painless-software/docker-html5validator.svg
[badge-prs]: https://img.shields.io/github/issues-pr-raw/painless-software/docker-html5validator.svg
[licensefile]: https://github.com/painless-software/docker-html5validator/blob/main/LICENSE
[github-issues]: https://github.com/painless-software/docker-html5validator/issues
[github-prs]: https://github.com/painless-software/docker-html5validator/pulls

Supported Tags
--------------

- [![latest][badge-latest]][dockerfile]
- [![0.4.2][badge-0.4.2]][dockerfile]
- [![0.4.0][badge-0.4.0]][dockerfile]

[badge-latest]: https://img.shields.io/badge/-latest-blue.svg?colorA=22313f&colorB=4a637b&logo=docker
[badge-0.4.2]: https://img.shields.io/badge/-0.4.2-blue.svg?colorA=22313f&colorB=4a637b&logo=docker
[badge-0.4.0]: https://img.shields.io/badge/-0.4.0-blue.svg?colorA=22313f&colorB=4a637b&logo=docker
[dockerfile]: https://github.com/painless-software/docker-html5validator/blob/main/Dockerfile

Usage
-----

Validate all HTML, CSS and SVG files in your current local directory and its
subfolders:

```console
docker run --rm -v $(pwd):/app:ro painless/html5validator
```

Validate your repository's HTML, CSS and SVG files, located in a `html` folder,
with GitLab CI:

```yaml
# .gitlab-ci.yml

html5validator:
  image: painless/html5validator
  script: html5validator --root html/ --also-check-css --also-check-svg --show-warnings
```

Obviously, the use is similar with other CI services.

Development
-----------

- [Contribute](https://github.com/painless-software/docker-html5validator) (GitHub repository)
