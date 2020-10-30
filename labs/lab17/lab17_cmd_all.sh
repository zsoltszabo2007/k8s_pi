  935  kubectl create service clusterip serv --tcp=80:80  -o yaml --dry-run
  936  kubectl expose --help
  937  vim sise-deply.yaml
  938  mv sise-deply.yaml sise-deploy.yaml
  939  kubectl apply -f sise-deploy.yaml 
  940  kubectl get pods
  941  kubectl describe deployments sise-deploy | grep Replicas
  942  kubectl get pods -o wide
  943  kubectl scale deployment sise-deploy --replicas=3
  944  kubectl get deployment sise-deploy -o yaml > sise-deploy.yaml
  945  vim sise-deploy.yaml 
  946  kubectl apply -f sise-deploy.yaml 
  947  kubectl get rs
  948  vim webby-deploy.yaml
  949  kubectl apply -f webby-deploy.yaml 
  950  kubectl scale deployment webservice --replicas=2
  951  kubectl apply -f webby-deploy.yaml 
  952  vim webby-deploy.yaml
  953  kubectl scale deployment webservice --replicas=2
  954  kubectl apply -f webby-deploy.yaml 
  955  kubectl delete -f webby-deploy.yaml sise-deploy.yaml 
  956  kubectl delete -f webby-deploy.yaml, sise-deploy.yaml 
  957  kubectl delete -f webby-deploy.yaml
  958  kubectl delete -f sise-deploy.yaml 
