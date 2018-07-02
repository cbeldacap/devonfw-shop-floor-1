#!/bin/sh

set -e

kubeadm reset
sudo yum remove docker
sudo yum remove kube

rm -rf /etc/kubernetes
rm -rf /etc/docker
rm -f /etc/yum.repos.d/kubernetes.repo
rm -f /etc/sysctl.d/k8s.conf
rm -rf $HOME/.kube

echo "Uninstall process finished"