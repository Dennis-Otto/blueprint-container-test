# Security design

<!-- The blueprint wrote this page once; from now on it belongs to the project. Keep it true to the software: what it protects, what it trusts, the threats and how the code counters them, and what remains. -->

What Blueprint Container Test protects, what it trusts and which risks remain. [SECURITY.md](https://github.com/Dennis-Otto/blueprint-container-test/blob/main/SECURITY.md) says how to report a vulnerability and how to verify a release, and argues why the repository and its releases are safe.

## What you can expect

- The image runs as an unprivileged user, never as root; its self-test fails otherwise.
- It is built on a base image pinned by its digest, and holds only what the program needs.
- It has no secrets of its own; credentials come from the environment or a mounted file at run time, never from the image.

## Trust boundaries

1. **Network and volumes → container.** Requests and files are untrusted input.
2. **Container → host.** Only through what the user maps into it: ports, volumes and variables.

## Threats and countermeasures

| Threat | Countermeasure |
| --- | --- |
| A flaw of the program takes over the host | The image runs as an unprivileged user, with only what the user maps into it |
| A base image is replaced | The base image is pinned by its digest |

## Residual risks

- The container is as safe as the host and the ports, volumes and variables that the user maps into it.
