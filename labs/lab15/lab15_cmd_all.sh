  917  cd lab15
  918  vim zombie.yaml
  919  kubectl -f zombie.yaml 
  920  kubectl apply -f zombie.yaml 
  921  kubectl get deployments
  922* kubectl describe dep
  923  kubectl delete -f zombie.yaml 
  924  vim zombie.yaml
  925  kubectl apply -f zombie.yaml 
  926  kubectl get deployments
  927  kubectl get pods
  928  kubectl delete pod zombie-5fc774f865-jfwt5
  929  kubectl get pods
  930  kubectl delete zombie
  931  kubectl delete deployment zombie
  932  kubectl get pods
  933  kubectl apply -f zombie.yaml 
  934  kubectl get pods --show-labels
  935  kubectl get deployments --show-labels
  936  kubectl delete deploy -l app=nginx
  937  vim webby-deploy.yaml
  938  kubectl apply -f webby-deploy.yaml 
  939  kubectl get pods
  940  kubectl get pods --show-labels
  941  kubectl get deploy --show-labels
  942  kubect delete deploy -l=app=webby
  943  kubectl delete deploy -l=app=webby
  944  kubectl get pods --show-labels
  945  kubectl apply -f webby-deploy.yaml 
  946  kubectl delete deploy webservice
  947  kubectl apply -f webby-deploy.yaml 
  948  kubectl delete -f webby-deploy.yaml 
  949  history > lab14_cmd_all.sh
