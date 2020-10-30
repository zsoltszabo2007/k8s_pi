 1329  mkdir lab22
 1330  cd lab22
 1331  get https://static.alta3.com/projects/k8s/nginx.conf.final -O nginx.conf
 1332  wget https://static.alta3.com/projects/k8s/nginx.conf.final -O nginx.conf
 1333  ls
 1334  kubectl create configmap nginx-conf --from-file=nginx.conf
 1335  kubectl get cm
 1336  wget https://static.alta3.com/projects/k8s/index.html -O index.html
 1337  ls -alrt
 1338  less index.html 
 1339  kubectl create configmap index-file --from-file=index.html
 1340  kubectl get cm
 1341  echo "It was a bright cold day in April, and the clocks were striking thirteen." >> nginx.txt
 1342  kubectl create cm nginx-txt --from-file=nginx.txt
 1343  kubectl get cm
 1344  vim nginx-configured.yaml
 1345  kubectl create -f nginx-configured.yaml 
 1346  kubectl port-forward nginx-configured 2224:80 --address=0.0.0.0&
 1347  echo "This is a new document with some content. Including this doc via a config map into nginx container" > newdoc.txt
 1348  kubectl create cm newdoc-txt --from-file=newdoc.txt
 1349  kubectl get cm
 1350  vim nginx.conf 
 1351  kubectl delete cm nginx-conf
 1352  kubectl create cm nginx-conf --from-file=nginx.conf
 1353  kubectl get cm
 1354  vim nginx-configured.yaml 
 1355  kubectl delete pods --all
 1356  kubectl apply -f nginx-configured.yaml 
 1357  fg
 1358  kubectl port-forward nginx-configured 2224:80 --address=0.0.0.0&
 1359  kubectl get cm
 1360  less nginx.conf 
 1361  less nginx-configured.yaml 
 1362  vim nginx-configured.yaml 
 1363  kubectl apply -f nginx-configured.yaml 
 1364  kubectl delete pods --all
 1365  fg
 1366  kubectl apply -f nginx-configured.yaml 
 1367  kubectl port-forward nginx-configured 2224:80 --address=0.0.0.0&
 1368  fg
 1369  kubectl delete pods --all
