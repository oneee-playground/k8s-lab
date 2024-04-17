Since this example runs on single host without nat, it cannot expose pod to external client with node port.
So I'll use nginx reverse proxy to forward external request to kubernetes node.

```sh
sudo docker build --tag nginx-temp:latest .
```

```sh
sudo docker run -d --net host \
    -p 8000:8000 \
    --name nginx-temp nginx-temp:latest
```

loki-stack is deprecated so it isn't compatible with kube-promethues-stack.
I'll use promtail and loki directly.