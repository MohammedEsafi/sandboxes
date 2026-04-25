# Sandbox Images

This folder contains Docker Sandbox templates for multiple agents with a shared shell setup.

The images add:

- `fish`
- `starship`
- `libatomic1`

`libatomic1` is included so local `workerd` can run in environments that do not provide it by default.

## Files

- `Containerfile.codex`: Codex sandbox image
- `Containerfile.claude`: Claude sandbox image
- `Containerfile.opencode`: OpenCode sandbox image
- `config/`: shared fish and Starship config

## Run With `sbx`

Run the matching agent with `sbx`:

```bash
sbx run --template MohammedEsafi/codex-sandbox:latest codex
sbx run --template MohammedEsafi/claude-sandbox:latest claude
sbx run --template MohammedEsafi/opencode-sandbox:latest opencode
```

## Publish

GitHub Actions publishes the images to Docker Hub from `main`. Configure these repository secrets before using the workflow:

- `DOCKERHUB_USERNAME`
- `DOCKERHUB_TOKEN`
