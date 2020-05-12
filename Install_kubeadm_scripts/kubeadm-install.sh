#! /bin/sh

echo "start installing kubeadm";

sudo cat << EOF > /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg
        https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF

sleep 1;

sudo yum update -y ;
sleep 1;
sudo yum install -y kubeadm ;
sleep 1;

sudo systemctl restart kubelet && sudo systemctl enable kubelet ;

echo "kubeadm installation done";
