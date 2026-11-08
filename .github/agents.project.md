# Notes of this project for coding agents

Blueprint Container Test: A throwaway container image that proves the isolated image build of the blueprint, for repo-blueprint#531.

This file belongs to the project: the blueprint wrote it once, and its updates leave it alone. It adds to `AGENTS.md` what a coding agent needs to know about this project alone, such as its architecture, the commands of its own checks and what to watch for in its tests.

## Where things are

- The image is built from `Dockerfile`, with the application in `app/`.
- `README.md` documents installation, configuration and use, `docs/` holds the pages of the website, and `CHANGELOG.md` lists the changes of every release.
- `scripts/check.sh` builds the image and runs its self-test.
