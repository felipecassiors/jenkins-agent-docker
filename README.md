> [!IMPORTANT]
> ## Deprecation notice
>
> This project is deprecated. I no longer intend to make any improvements to it. Instead, I have shifted my focus to [`jenkins-agent-dind`](https://github.com/felipecrs/jenkins-agent-dind), which is also very suitable for running as a devcontainer as well. It allows you to choose between docker in docker or docker on docker, comes with [pkgx](https://pkg.sh/) to install any other tool you need, while still being more lightweight.
>
> **The nightly builds for this image is being deactivated, so I strongly recommend you to move to another image.**

# felipecrs/devcontainer

You can use this image in VS Code Remote - Containers.

## Tags

- `:base` and `:latest`: comes with some common dependencies and developer tools, such as Pyenv, Volta, SDKMAN!, Docker CLI, `kubectl`, `helm`, `kind`.
- `:github`: extending the base, comes with the latest GitHub CLI.
- `:python`: extending the base, comes with the latest Python.
- `:node`: extending the base, comes with the latest Node LTS.
- `:java`: extending the base, comes with the latest Java LTS.

## Usage

You can extend the base image and install the languages as you need. Example:

```Dockerfile
FROM ghcr.io/felipecrs/devcontainer

# Installing Python 3.7.9
RUN pyenv install 3.7.9 && pyenv global 3.7.9

# Installing Node 14 - you don't need this if you have it pinned in your package.json (volta pin node)
RUN volta install node@14

# Installing Java 11.0.9.hs-adpt
RUN sdk install java 11.0.9.hs-adpt
```
