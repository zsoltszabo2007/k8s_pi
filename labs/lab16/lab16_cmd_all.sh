  868  cd ~/k8s_pi/labs/lab16
  869  cp ../lab15/zombie.yaml .
  870  kubectl apply -f zombie.yaml 
  871  kubectl rollout history depl zombie
  872  kubectl rollout history deployment zombie
  873  kubectl annotate deployment zombie kubernetes.io/change-cause="deployed ver. 1.7.9"
  874  kubectl rollout history deployment zombie
  875  kubectl exec -it zombie-5fc774f865-z5dc5 -- bash
  876  kubectl annotate deployment zombie kubernetes.io/change-cause="deployed ver. 1.19.0"
  877  kubectl rollout history deployment zombie
  878  vim zombie.yaml 
  879  kubectl apply -f zombie.yaml 
  880  vim zombie.yaml 
  881  kubectl apply -f zombie.yaml 
  882  kubectl rollout history deployment zombie
  883  kubectl annotate deployment zombie kubernetes.io/change-cause="deployed ver. 1.18.0"
  884  kubectl rollout history deployment zombie
  885  kubectl exec -it zombie-64c9989879-d9jgh -- bash
  886  vim zombie.yaml 
  887  kubectl apply -f zombie.yaml --record
  888  kubectl rollout history deployment zombie
  889  kubectl annotate deployment zombie kubernetes.io/change-cause="deployed ver. 1.17"
  890  kubectl rollout history deployment zombie
  891  kubectl rollout history deploy zombie --revision=1
  892  kubectl rollout history deploy zombie --revision=2
  893  kubectl rollout history deploy zombie --revision=3
  894  kubectl rollout status deploy zombie
  895  kubectl rollout undo zombie
  896  kubectl rollout undo deploy zombie
  897  kubectl rollout status deploy zombie
  898  kubectl rollout history deployment zombie
  899  kubectl rollout undo deploy zombie --to-revision=1
  900  kubectl rollout history deployment zombie
  901  kubectl delete deploy zombie
