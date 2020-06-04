    1  df . -h
    2  exit
    3  sudo apt-update && sudo apt dist-upgrade
    4  sudo apt update && sudo apt dist-upgrade
    5  vim /boot/cmdline.txt
    6  sudo apt install vim
    7  vim /boot/cmdline.txt
    8  pwd
    9  vi test
   10  ls
   11  ls -alrt
   12  vim /boot/cmdline.txt
   13  sudo vim /boot/cmdline.txt 
   14  less /boot/cmdline.txt 
   15  history | less
   16  sudo dphys-swapfile swapoff
   17  free -m
   18  sudo dphys-swapfile uninstall
   19  sudo apt purge dphys-swapfile
   20  sudo reboot
   21  curl -sSL get.docker.com | sh
   22  sudo usermod -aG docker pi
   23  logout
   24  groups
   25  sudo vim /etc/docker/daemon.json
   26  sudo reboot
   27  sudo passwd pi
   28  exit
   29  sudo reboot
   30  sudo vim /etc/apt/sources.list.d/kubernetes.list
   31  curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
   32  sudo apt update
   33  sudo apt install kubeadm kubectl kubelet
   34  sudo kubeadm join 192.168.1.158:6443 --token hrsivt.3d5iculiakcz1ut5     --discovery-token-ca-cert-hash sha256:ce0114938bf5916d259024ea7c613265a180cc1d0a0be8e7e865b37dbdac548e
   35  history > k8s_node-01-history.txt
