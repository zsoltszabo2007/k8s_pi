  582  cd lab06
  583  sudo docker images
  584  kubectl run --port=8888 --requests='cpu=100m,memory=256Mi' --image=zsoltszabo2007/webby webweb
  585  kubectl get pod
  586  kubectl describe pod webweb
  589  kubectl port-forward webweb 8080:8888 --address 0.0.0.0
  590  bg
  591  curl localhost:8080
  592  kubectl describe pod webweb
  593  vim webweb-deploy.yaml
  594  kubectl apply -f webweb-deploy.yaml 
  595  kubectl get pods
  596  kubectl get pods -o wide
  597  kubectl get deployments
  598  kubectl describe deployments
  600  kubectl delete pod webweb
  601  kubectl get pods -o wide
  603  kubectl get services
  604  kubectl get services --all-namespaces
  606  kubectl describe service kubernetes
  607  kubectl describe service kubernetes --all-namespaces
  608  kubectl describe services --all-namespaces
  609  kubectl describe nodes
  610  kubectl delete deployment webweb
  611  kubectl describe all --all-namespaces
  619  kubectl config use-context kubernetes-admin@kubernetes
  620  kubectl get services
  621  kubectl get all
  622  kubectl get all --all-namespaces
  623  kubectl get services 
  624  kubectl describe services 
