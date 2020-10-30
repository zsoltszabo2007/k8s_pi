  815  vim nginx-annot.yaml
  816  kubectl apply -f nginx-annot.yaml 
  817  kubectl get pods
  818  kubectl get pods -o yaml | less
  819  kubectl describe pods | less
