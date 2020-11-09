# drone-kubectl-arm64

This [Drone](https://drone.io/) plugin allows you to use `kubectl` in Arm64 clusters.

## Usage

```yaml
# drone 1.0 syntax
kind: pipeline
name: deploy

steps:
  - name: deploy
    image: wcdurryii/drone-kubectl-arm64
    settings:
      kubernetes_server:
        from_secret: k8s_server
      kubernetes_cert:
        from_secret: k8s_cert
      kubernetes_token:
        from_secret: k8s_token
    commands:
      - kubectl create -f job_foo.yaml
      - kubectl wait --for=condition=complete -f job_foo.yaml

```

### Special thanks

Inspired by [drone-kubectl](https://github.com/sinlead/drone-kubectl) and [drone-kubernetes](https://github.com/honestbee/drone-kubernetes).
