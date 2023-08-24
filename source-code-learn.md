## Kubelet

把下面的内容保存到文件 `test.yaml` 中
```yaml
apiVersion: kubelet.config.k8s.io/v1beta1
kind: KubeletConfiguration
address: "192.168.0.8"
port: 20250
serializeImagePulls: false
authentication:
    webhook:
        enabled: false
authorization:
    mode: AlwaysAllow
containerRuntimeEndpoint: /var/run/podman/podman.sock
evictionHard:
    memory.available:  "200Mi"
```

```shell
go run cmd/kubelet/kubelet.go --config test.yaml
```