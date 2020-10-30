 1260  cd ..
 1261  mkdir lab20
 1262  vim k8s-countdown.yaml
 1263  kubectl create -f k8s-countdown.yaml 
 1264  kubectl get pods
 1265  kubectl describe pods
 1270  PODS=$(kubectl get pods --selector=job-name=countdown --output=jsonpath={.items..metadata.name})
 1271  echo $PODS
 1272  kubectl logs $PODS
 1273  kubectl get pods --selector=job-name=countdown --output=yaml | grep -A10 ^apiVersion:
 1274  ls -alrt
 1275  mv k8s-countdown.yaml lab20
 1276  cd lab20
 1277  ls
 1278  less k8s-countdown.yaml 
 1279  vim countdown-cron-job.yaml
 1280  kubectl create -f countdown-cron-job.yaml 
 1281  kubectl get pods -o wide
 1282  kubectl get cj -o wide
 1283  kubectl get pods -o wide
 1284  kubectl logs countdown-1592192340-6rrs5 
 1285  kubectl delete cj countdown
 1286  kubectl delete pods --all

