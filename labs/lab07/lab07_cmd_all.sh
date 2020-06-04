  489  cd labs/lab07/
  516  uname -a
  517  vim tiny-pod.yaml
  518  kubectl apply -f tiny-pod.yaml 
  519  kubectl get pods
  520  kubectl describe pods
  521  kubectl get pods
  522  kubectl delete -f tiny-pod.yaml  
  534  vim webby-pod01.yaml
  535  kubectl apply -f webby-pod01.yaml 
  536  kubectl describe pod webservice01
  537  kubectl get pods -o wide
  538  kubectl delete -f webby-pod01.yaml 
