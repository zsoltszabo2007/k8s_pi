    1  df . -h
    2  cd /etc
    3  ls
    4  less hostname 
    5  vim
    6  apt install vim
    7  sudo apt install vim
    8  pwd
    9  sudo vim hostname
   10  sudo vim hosts
   11  sudo reboot
   12  pwd
   13  cd /
   14  ls
   15  cd boot
   16  ls
   17  touch ssh
   18  sudo touch ssh
   19  sudo reboot
   20  sudo apt update && sudo apt dist-upgrade
   21  vim /boot/cmdline.txt
   22  sudo vim /boot/cmdline.txt
   23  sudo dphys-swapfile swapoff
   24  free -m
   25  sudo dphys-swapfile uninstall
   26  sudo apt purge dphys-swapfile
   27  sudo reboot
   28  curl -sSL get.docker.com | sh
   29  sudo usermod -aG docker pi
   30  logout
   31  groups
   32  sudo vim /etc/docker/daemon.json
   33  sudo reboot
   34  sudo vim /etc/apt/sources.list.d/kubernetes.list
   35  curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
   36  sudo apt update
   37  sudo apt install kubeadm kubectl kubelet
   38  sudo kubeadm init --pod-network-cidr=10.17.0.0/16 --service-cidr=10.18.0.0/24 --service-dns-domian=familycloud.com
   39  sudo kubeadm init --pod-network-cidr=10.17.0.0/16 --service-cidr=10.18.0.0/24 --service-dns-domain=familycloud.com
   40  mkdir -p $HOME/.kube
   41  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
   42  sudo chown $(id -u):$(id -g) $HOME/.kube/config
   43  kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
   44  kubectl get pods --all-namespaces
   45  kubectl get nodes
   46  ps
   47  ps -Af
   48  kubectl get nodes
   49  pwd
   50  history > k8s_master_history.txt
