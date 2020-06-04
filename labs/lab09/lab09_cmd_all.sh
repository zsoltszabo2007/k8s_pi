  571  kubectl apply -f nginx-pod.yaml
  572  kubectl delete -f nginx-pod.yaml
  573  kubectl create -f nginx-pod.yaml
  574  kubectl edit pods pod/nginx
  575  kubectl edit pod/nginx
  576  kubectl delete pod/nginx
  577  kubectl apply -f nginx-pod.yaml
  578  kubectl edit pod/nginx
  580  kubectl get pods --show-labels
  581  vim nginx-pod.yaml 
  582  kubectl apply -f nginx-pod.yaml 
  583  vim nginx-pod.yaml 
  584  kubectl apply -f nginx-pod.yaml 
  585  kubectl get pods --show-labels
  586  kubectl run pollywog --image=arm32v7/nginx --port=80
  587  kubectl edit pod/pollywog
  588  kubectl get pods -o wide
  589  kubectl delete pod nginx
  590  kubectl get pods -o wide
  592  kubectl delete pod pollywog
  593  vim nginx-pod.yaml 
  594  kubectl apply -f nginx-pod.yaml 
  595  kubectl get pods -o wide
  596  kubectl get pod nginx22 -o yaml | grep nodeName
  599  kubectl delete pods --all
