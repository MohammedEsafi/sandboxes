# Sandbox Images

This folder contains Docker Sandbox templates for multiple agents with a shared shell setup.

## Files

- `Containerfile.codex`: Codex sandbox image
- `Containerfile.claude`: Claude sandbox image
- `Containerfile.opencode`: OpenCode sandbox image
- `setup.sh`: shared package and shell setup
- `config/`: shared fish and Starship config

## Build

Build from the repository root:

```bash
podman build -f Containerfile.codex -t codex-sandbox:latest .
podman build -f Containerfile.claude -t claude-sandbox:latest .
podman build -f Containerfile.opencode -t opencode-sandbox:latest .
```

## Run With `sbx`

After building an image, run the matching agent with `sbx`:

```bash
sbx run --template codex-sandbox:latest codex
sbx run --template claude-sandbox:latest claude
sbx run --template opencode-sandbox:latest opencode
```

## Notes

The shared setup installs:

- `fish`
- `starship`
- `libatomic1`

`libatomic1` is included so local `workerd` can run in environments that do not provide it by default.
