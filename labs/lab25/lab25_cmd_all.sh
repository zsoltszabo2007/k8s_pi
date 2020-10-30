 1476  cd ..
 1477  mkdir lab25 && cd lab25
 1478  vim test-pv.yaml
 1479  vim nginx-pvc.yaml
 1499  vim nginx-pv.yaml 
 1502  kubectl apply -f test-pv.yaml 
 1516  kubectl apply -f nginx-pvc.yaml  
 1518  kubectl apply -f nginx-pv.yaml 
 1520  kubectl describe pod nginx-with-pv | grep Node:
 1521  kubectl exec -it nginx-with-pv -- bash
 1536  kubectl logs nginx-with-pv
 1553  ssh k8s-node-02
 1554  ssh k8s-node-01
 1555  history > lab25_cmd_all.sh
