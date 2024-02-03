# Workspace

This includes a docker compose file, a docker file and other config mounted within the workspace container.

## How to use

- Run `docker compose up --build -d` to start the workspace image
- The image will start with a `sleep infinity` command, which means it will keep alive until you kill it.
- To attach image, use `docker exec -it workspace /bin/zsh`

### Makefile

- Run `make build` to build/sync the image
- Run `make install-script` to set alias to `~/.zshrc`
- Use `ws` to start the workspace
