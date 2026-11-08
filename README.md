# Blueprint Container Test

[![CI](https://github.com/Dennis-Otto/blueprint-container-test/actions/workflows/ci.yml/badge.svg)](https://github.com/Dennis-Otto/blueprint-container-test/actions/workflows/ci.yml)
[![CodeQL](https://github.com/Dennis-Otto/blueprint-container-test/actions/workflows/codeql.yml/badge.svg)](https://github.com/Dennis-Otto/blueprint-container-test/actions/workflows/codeql.yml)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/Dennis-Otto/blueprint-container-test/badge)](https://scorecard.dev/viewer/?uri=github.com/Dennis-Otto/blueprint-container-test)
[![REUSE](https://api.reuse.software/badge/github.com/Dennis-Otto/blueprint-container-test)](https://api.reuse.software/info/github.com/Dennis-Otto/blueprint-container-test)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue)](LICENSE)
[![Documentation](https://img.shields.io/badge/docs-website-526cfe?logo=materialformkdocs&logoColor=white)](https://dennis-otto.github.io/blueprint-container-test/)
[![Sponsor](https://img.shields.io/badge/sponsor-%E2%99%A5-db61a2?logo=githubsponsors&logoColor=white)](https://github.com/sponsors/Dennis-Otto)

A throwaway container image that proves the isolated image build of the blueprint, for repo-blueprint#531.

The documentation is on the [website](https://dennis-otto.github.io/blueprint-container-test/).

<sub>💛 If Blueprint Container Test is useful to you, you can [support its development](https://github.com/sponsors/Dennis-Otto).</sub>

## Installation

```sh
docker run --rm ghcr.io/dennis-otto/blueprint-container-test:latest
```

Every image carries its SBOM and the signed provenance of its isolated build, `build-image.yml`, which builds it on a runner of GitHub for `main` (SLSA Build Level 3):

```sh
gh attestation verify oci://ghcr.io/dennis-otto/blueprint-container-test:latest --repo Dennis-Otto/blueprint-container-test --signer-workflow Dennis-Otto/blueprint-container-test/.github/workflows/build-image.yml --source-ref refs/heads/main --deny-self-hosted-runners
```

## Development

Every change goes through a pull request whose title follows [Conventional Commits](https://www.conventionalcommits.org/), with commits that are signed off (`git commit -s`) and signed (`git commit -S`). The checks of the CI run locally with

```sh
bash scripts/check.sh
```

[CONTRIBUTING.md](CONTRIBUTING.md) explains the set-up and the rules.

## Releases

The release bot keeps a pull request for the next release open, with the version and the changelog from the merged pull requests. Merging it publishes the release, with its SBOM and a signed provenance; [CHANGELOG.md](CHANGELOG.md) lists every change.

## Support and security

Questions and problems: see [SUPPORT.md](SUPPORT.md). Report vulnerabilities privately, as [SECURITY.md](SECURITY.md) describes.

## License

MIT; see [LICENSE](LICENSE). Every file names its license in the machine-readable form of [REUSE](https://reuse.software).
