  961  mkdir lab18
  962  cd lab18
  963  JSONPATH='{range .items[*]}{@.metadata.name}:{range @.status.conditions[*]}{@.type}={@.status} ** '
  964  kubectl get nodes -o jsonpath="$JSONPATH" | grep "Ready=True"
  965  kubectl get nodes -o json | less
  966  kubectl get nodes -o json | jq '.items[]'
  967  kubectl get nodes -o json | jq '.items[] | { name: .metadata.name}'
  968  kubectl get nodes -o wide
  969  kubectl get nodes -o json | jq '.items[] | { status: .status.conditions[]}'
  970  kubectl get nodes -o json | jq '.items[] | { status: .status.conditions[], name: .metadata.name}'
  971  vim sise-lp.yaml
  972  kubectl apply -f sise-lp.yaml 
  973  kubectl describe pods sise-lp | grep -i health
  974  kubectl port-forward sise-lp 2224:9876 --address=0.0.0.0&
  975  curl localhost:2224/health
  976  vim badpod.yaml
  977  kubect apply -f badpod.yaml 
  978  kubectl apply -f badpod.yaml 
  979  kubect get pods
  980  kubectl get pods
  981  kubectl descibe badpod
  982  kubectl descibe pods badpod
  983  kubectl describe pods badpod
  984  kubectl delete -f badpod.yaml 
  985  vim sise-rp.yaml
  986  kubectl apply -f sise-rp.yaml 
  987  kubectl get pods
  988  kubectl describe pods sise-rp
  989  kubectl port-forward sise-rp 2224:9876
  990  bg
  991  curl localhost:2224/health
  992  vim sise-rp2.yaml
  993  kubectl apply -f sise-rp2.yaml
  994  kubectl get pods
  995  kubectl describe simpleservice
  996  kubectl describe pods simpleservice
  997  ps
  998  curl -i http://127.0.0.1:2224/health;echo
  999  kubectl get pods
 1000  kubectl delete pods sise-rp
 1001  kubectl delete pods sise-lp
 1002  curl -i http://127.0.0.1:2224/health;echo
 1003  kubectl get pods
 1004  kubectl port-forward simpleservice 2224:9876 --address=0.0.0.0
 1005  ps
 1006  fg
 1007  kubectl port-forward simpleservice 2224:9876 --address=0.0.0.0
 1008  bg
 1009  curl -i http://127.0.0.1:2224/health;echo
 1010  kubectl describe simpleservice
 1011  kubectl describe pods simpleservice
 1012  cp sise-rp2.yaml sise-rp3.yaml
 1013  vim sise-rp3.yaml 
 1014  kubectl apply -f sise-rp3.yaml 
 1015  kubectl delete -f sise-rp2.yaml 
 1016  kubectl apply -f sise-rp3.yaml 
 1017  kubectl get pods
 1018  kubectl describe pods
 1019  curl -i http://127.0.0.1:2224/info;echo
 1020  ps
 1021  fg
 1022  kubectl port-forward simpleservice 2224:9876 --address=0.0.0.0
 1023  bg
 1024  curl -i http://127.0.0.1:2224/info;echo
 1025* curl http://127.0.0.1:2224/info;ech
 1026  cp sise-rp3.yaml sise-bummer.yaml
 1027  vim sise-bummer.yaml 
 1028  kubectl delete -f sise-rp3.yaml 
 1029  fg
 1030  kubectl apply sise-bummer.yaml 
 1031  kubectl apply -f sise-bummer.yaml 
 1032  kubectl describe pods simpleservice
 1033  kubectl get pods
 1034  kubectl delete -f sise-bummer.yaml 
 1035  vim sise-rp4.yaml
 1036  kubectl get pods
 1037  kubectl apply -f sise-rp4.yaml 
 1038  vim sise-rp4.yaml
 1039  kubectl apply -f sise-rp4.yaml 
 1040  kubectl get pods
 1041  kubectl describe pods
 1042  kubectl delete pods --all
