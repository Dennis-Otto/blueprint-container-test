Blueprint Container Test: A throwaway container image that proves the isolated image build of the blueprint, for repo-blueprint#531.

Where things are:

- The image is built from `Dockerfile`, with the application in `app/`.
- `README.md` documents installation, configuration and use; `CHANGELOG.md` lists the changes of every release.
- The tests are in `tests/`; `scripts/check.sh` runs every check.

What matters in a bug report: the release, the set-up and the relevant lines of the log, without tokens, keys or private URLs.
