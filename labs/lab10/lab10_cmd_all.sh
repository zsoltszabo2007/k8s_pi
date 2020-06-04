
  617  cp ../lab08/*.yaml .
  618  vim nginx-pod.yaml 
  623  kubectl apply -f nginx-pod.yaml 
  625  kubectl get pods
  626  kubectl exec -it nginx -- sh
  627  kubectl get pods 
  632  kubectl get pods --all-namespaces --sort-by='.status.containerStatuses[0].restartCount'
  631  kubectl delete -f nginx-pod.yaml 
  632  kubectl get pods --all-namespaces --sort-by='.status.containerStatuses[0].restartCount'
