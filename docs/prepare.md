# Preparation of Base Files from Kubeflow

This repository uses istio-kubeflow variant base files, since it is vendor neutral. This page describes the steps
carried out, so that you can customize your setup.

## Download kfctl

- Get Source Code(Optional)
```bash
export VERSION=v1.2.0
wget https://github.com/kubeflow/kfctl/archive/v$VERSION.tar.gz
```

- Get the release, copy link for platform
```bash
https://github.com/kubeflow/kfctl/releases/tag/v$VERSION
wget <link>
tar -xvf kfctl_v1.2.0_<platform>.tar.gz
```

- Add kfctl to path
```bash
export PATH=$PATH:"<path-to-kfctl>"
kfctl version
```

- Set up Build Directory

```bash
mkdir build
cd build
```

- Set up Config URI

```bash
export CONFIG_URI="https://raw.githubusercontent.com/kubeflow/manifests/v1.2-branch/kfdef/kfctl_k8s_istio.v1.2.0.yaml"
wget ${CONFIG_URI}
# Edit to Remove Istio, Certmanager and Other Not Required Resources
nano kfctl_k8s_istio.v1.2.0.yaml
kfctl build -V -f ${CONFIG_URI}
```

# References
- https://www.kubeflow.org/docs/started/k8s/kfctl-k8s-istio/
- https://github.com/kubeflow/manifests/issues/1549