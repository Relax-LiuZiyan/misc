#/bin/sh

ubuntu=xenial
version=1.20.5-00

apt-get install docker.io -y
apt-get install -y apt-transport-https curl
curl https://mirrors.aliyun.com/kubernetes/apt/doc/apt-key.gpg | apt-key add -
echo "deb https://mirrors.aliyun.com/kubernetes/apt/ kubernetes-$ubuntu main" >  /etc/apt/sources.list.d/kubernetes.list
apt-get update
apt-get install -y kubelet=$version kubeadm=$version kubectl=$version