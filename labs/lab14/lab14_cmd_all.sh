  907  cd
  908  cd k8s_pi/
  910  ls
  911  mkdir k8s-certs
  912  cd k8s-certs/
  913  openssl req -x509 -newkey rsa:4096 -keyout registry-web-key.pem -out registry-web.pem -days 365 -nodes
  914  ls
  915  cd ../labs/lab14
  916  base64 -w0 ../../k8s-certs/registry-web.pem && echo
  917  vim docker-private-registry.yaml
  918  base64 -w0 ../../k8s-certs/registry-web-key.pem && echo
  919  vim docker-private-registry.yaml
  920  kubectl -apply -f docker-private-registry.yaml -n default
  921  kubectl apply -f docker-private-registry.yaml -n default
  922  kubectl get all
  923  less docker-private-registry.yaml 
  924  kubectl rollout status deploy/docker-private-registry-deployment -n default
  925  POD_NAME=$(kubectl get pods -l app=docker-private-registry -n default |sed -e '1d'|awk '{print $1}')
  926  echo $POD_NAME
  927  kubectl port-forward ${POD_NAME} 30500:5000 -n default
  928  bg
  929  curl -X GET https://127.0.0.1:30500/v2/_catalog
  930  curl -X GET https://localhost:30500/v2/_catalog
  931  CURL_CA_BUNDLE=~/k8s_pi/k8s-certs/
  932  curl -X GET https://localhost:30500/v2/_catalog
  933  curl -X GET https://localhost:30500/v2/_catalog --cacert ~/k8s_pi/k8s-certs/registry-web-key.pem 
  934  curl -X GET https://localhost:30500/v2/_catalog --cacert ~/k8s_pi/k8s-certs/registry-web-key.pem --capath ~/k8s_pi/k8s-certs/
  935  curl -X GET https://localhost:30500/v2/_catalog --cacert ~/k8s_pi/k8s-certs/registry-web.pem --capath ~/k8s_pi/k8s-certs
  936  cd ~/k8s_pi/k8s-certs/
  937  ls
  938  mkdir old
  939  mv *.pem old
  940  ls
  941  openssl req -x509 -newkey rsa:4096 -keyout registry-web-key.pem -out registry-web.pem -days 365 -nodes
  942  ls
  943  cd ../labs/lab14/
  944  ls
  945  kubectl delete -f docker-private-registry.yaml 
  946  base64 -w0 ../../k8s-certs/registry-web.pem && echo
  947  vim docker-private-registry.yaml 
  948  base64 -w0 ../../k8s-certs/registry-web-key.pem && echo
  949  vim docker-private-registry.yaml 
  950  kubect apply -f docker-private-registry.yaml 
  951  kubectl apply -f docker-private-registry.yaml 
  952  kubectl delete -f docker-private-registry.yaml 
  953  vim docker-private-registry.yaml 
  954  kubectl apply -f docker-private-registry.yaml 
  955  curl -X GET https://localhost:30500/v2/_catalog --cacert ~/k8s_pi/k8s-certs/registry-web.pem --capath ~/k8s_pi/k8s-certs
  956  ps
  957  kubectl rollout status deploy/docker-private-registry-deployment -n default
  958  POD_NAME=$(kubectl get pods -l app=docker-private-registry -n default |sed -e '1d'|awk '{print $1}')
  959  echo $POD_NAME 
  960  kill -9 %1
  961  ps
  962  kubectl port-forward ${POD_NAME} 30500:5000 -n default&
  963  curl -X GET https://localhost:30500/v2/_catalog --cacert ~/k8s_pi/k8s-certs/registry-web.pem --capath ~/k8s_pi/k8s-certs
  964  docker --help
  965  docker images
  966  sudo docker pull busybox
  967  sudo docker tag busybox localhost:30500/busybox
  968  sudo docker push localhost:30500/busybox
  969  curl -X GET https://localhost:30500/v2/_catalog --cacert ~/k8s_pi/k8s-certs/registry-web.pem --capath ~/k8s_pi/k8s-certs
  970  vim ./Dockerfile
  971  sudo docker build --force-rm=true -t localhost:30500/nginx_test .
  972  vim ./Dockerfile
  973  sudo docker build --force-rm=true -t localhost:30500/nginx_test .
  974* sudo docker push localhost:30500/nginx_test[A
  975  vim nginx-test-daemonset.yaml
  976  kubectl -f apply nginx-test-daemonset.yaml 
  977  kubectl apply -f nginx-test-daemonset.yaml 
  978  kubectl delete -f nginx-test-daemonset.yaml 
  979* kubectl delete -f nginx-test-daemonset.yaml 
  980  kubectl apply -f nginx-test-daemonset.yaml -n default
  981  kubectl get pods -l app=nginx-test -n default
  982  kubectl describe pods nginx-test-gw76b
  983  curl -X GET https://localhost:30500/v2/_catalog --cacert ~/k8s_pi/k8s-certs/registry-web.pem --capath ~/k8s_pi/k8s-certs
  984  docket images
  985  docker images
  986  ps
  987  kubectl describe pods nginx-test-gw76b
  988  kubectl get pods -l app=nginx-test -n default
  989  kubectl describe nginx-test-k79f8 
  990  kubectl describe pods nginx-test-k79f8 
  991  hostname
  992  ssh pi@k8s-node-01
  993  ssh pi@k8s-node-02
  994  kobectl get pods
  995  kubectl get pods
  996  kubectl get pods -o wide
  997  kubectl delete nginx-test-daemonset.yaml 
  998  kubectl delete -f nginx-test-daemonset.yaml 
  999  kubectl delete -f docker-private-registry.yaml 
