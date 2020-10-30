 1389  cd lab23
 1390  mkdir lab23
 1391  cd lab23
 1392  cd ../..
 1393  ls
 1394  cd k8s-certs/
 1395  LS
 1396  ls
 1397  openssl genrsa -out webby.com.key 2048
 1398  openssl req -new -key webby.com.key -out webby.com.key.csr
 1399  ls -alrt
 1400  kubectl create secret generic webby-keys --from-file=registry-web.pem --from-file=registry-web-key.pem
 1401  kubectl get secrets webby-keys -o yaml
 1402  cd labs/lab23
 1403  cd ../labs/lab23
 1404  vim nginx-locked-n-loaded.yaml
 1405  kubectl create -f nginx-locked-n-loaded.yaml 
 1406  kubectl get pods
 1407  vim nginx.conf
 1408  kubectl delete cm nginx-conf
 1409  kubectl create cm nginx-conf --from-file=nginx.conf
 1410  Vcp nginx-locked-n-loaded.yaml nginx-locked-n-loaded-02.yaml
 1411  cp nginx-locked-n-loaded.yaml nginx-locked-n-loaded-02.yaml
 1412  vim nginx-locked-n-loaded-02.yaml 
 1413  kubectl apply -f nginx-locked-n-loaded-02.yaml 
 1414  kubectl get pods
 1415  kubectl port-forward nginx-locked-n-loaded-secrets 9090:443&
 1416  kubectl port-forward nginx-locked-n-loaded-secret 9090:443&
 1417  curl https://localhost:9090
 1418  history | grep curl
 1419  curl https://localhost:9090 --cacert ~/k8s_pi/k8s-certs/registry-web.pem --capath ~/k8s_pi/k8s-certs
 1420  history > lab23_cmd_all.sh
