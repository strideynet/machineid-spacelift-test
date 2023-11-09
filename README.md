# machineid-spacelift-test

In a real scenario, you'd download `tbot` at the start of the process or you'd
build it into your Spacelift docker image.

```
tctl-leaf create -f ./token.yaml
tctl-leaf bots add spacelift-test --token spacelift-test --roles editor
```