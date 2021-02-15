# Kubeflow Certmanager

There is no Certificate Resource with the CertManager Shipped in Kubeflow. This repo disable cert manager from kubeflow.
Instead Certmanager must be enabled manually.

## Issue

Kubeflow mixes installation of certmanager and the certmanager unlike istio manifests where these are separated 
correctly. So this repository provides additional files that need to be used with kubeflow.