  709  cp ../lab09/nginx-pod.yaml .
  710  less nginx-pod.yaml 
  711  vim nginx-pod.yaml 
  712  kubectl apply -f nginx-pod.yaml 
  713  kubectl get pods -o labels
  714  kubectl get pods -o w
  715  kubectl get pods -o wide
  716  kubectl get pods --show-labels --all-namespaces
  717  kubectl get pods -L app
  718  kubectl label nginx app=web-service
  719  kubectl label pod nginx app=web-service
  720  kubectl get pods --show-labels
  721  kubectl get pods -L app
  722  kubectl get pods nginx -o yaml > nginx-pod-update.yaml
  723  vim nginx-pod-update.yaml 
  724  kubectl apply -f nginx-pod-update.yaml 
  725  kubectl get pods nginx --all-labels
  726  kubectl get pods nginx --show-labels
  728  kubectl get pods -L customer
  729  kubectl get pods -L importance
  730  kubectl delete -f nginx-pod-update.yaml 
  731  less nginx-pod.yaml 
  732  vim nginx-depl.yaml
  733  kubectl apply -f nginx-depl.yaml 
  734  kubectl get pods
  735  kubectl get pods -o wide
  736  kubectl apply -f nginx-pod.yaml 
  737  kubectl get pods -o wide
  738  kubectl label pods nginx-obj-create-5fc774f865-d4279 project=easy
  739  kubectl get pods --show-labels
  740* kubectl get pods -L projec
  741  kubectl label pods nginx-obj-create-5fc774f865-rt2vm segment=alpha
  742  kubectl label pods -L project,segment
  743  kubectl get pods -L project,segment
  744  kubectl remove -f nginx-depl.yaml 
  745  kubectl delete -f nginx-depl.yaml 
  746  kubectl delete -f nginx-pod.yaml 
  747  kubectl get pods
  748  kubectl apply -f nginx-pod.yaml 
  749  kubectl label pods nginx project=wrong
  750  kubectl get pods -L project
  752  kubectl label pods nginx project-
  753  kubectl get pods -L project 
  755  kubectl delete -f nginx-pod.yaml 
  756  kubectl run alpaca-prod --image=gcr.io/kuar-demo/kuard-arm:1 --labels="ver=1,app=alpaca,env=prod"
  757  kubectl get pods
  758  kubectl run alpaca-test --image=gcr.io/kuar-demo/kuard-arm:2 --labels="ver=2,app=alpaca,env=test"
  759  kubectl get pods
  760  kubectl run bandicoot-prod --image=gcr.io/kuar-demo/kuard-arm:2 --labels="ver=2,app=bandicoot,env=prod"
  761  kubectl get pods
  762  kubectl run bandicoot-staging --image=gcr.io/kuar-demo/kuard-arm:2 --labels="ver=2,app=bandicoot,env=staging"
  763  kubectl get pods
  764  kubectl get pods --show-labels
  765  kubectl label pods alpaca-test "canary=true"
  766  kubectl get pods --show-labels
  767  kubectl label pods alpaca-prod bandicoot-prod "firewall=true"
  768  kubectl get pods --show-labels
  769  kubectl help get pods | less
  771  kubectl get pods --selector=ver=2
  772  kubectl get pods --selector=ver=2 --show-labels
  773  kubectl get pods --selector=env=staging --show-labels
  774  kubectl get pods --selector=env!=staging --show-labels
  775  kubectl delete pods alpaca-prod alpaca-test bandicoot-staging bandicoot-prod
  776  kubectl get pods
