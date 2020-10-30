 1289  mkdir lab21
 1290  cd lab21
 1291  ls
 1292  wget -O nginx-pod.yaml https://static.alta3.com/projects/k8s/nginx-pod.yaml
 1293  vim nginx-pod.yaml 
 1294  kubectl apply -f nginx-pod.yaml 
 1295  kubectl get pods -o wide
 1296  kubectl delete -f nginx-pod.yaml 
 1297  vim nginx-pod.yaml 
 1298  kubectl apply -f nginx-pod.yaml 
 1299  kubectl get pods -o wide
 1300  kubectl exec -it nginx -- sh
 1301  ping 192.168.1.189
 1302  ssh 192.168.1.189
 1303  kubectl cp nginx:etc/nginx/nginx.conf ~/nginx.conf.old
 1304  kubectl cp nginx:etc/nginx/nginx.conf ./nginx.conf.old
 1305  ls -alrt
 1306  vim nginx.conf
 1307  kubectl cp nginx.conf nginx:/etc/nginx/nginx.conf
 1308  kubectl exec -it nginx -- mkdir /var/www
 1309  vim index.html
 1310  kubectl cp index.html nginx:/var/www/index.html
 1311  kubectl exec -it nginx -- nginx -s reload
 1312  kubectl get pods
 1313  kubectl port-forward nginx 2224:80 --address=0.0.0.0&
 1314  kubectl get pods -o wide
 1315  vim index.html
 1316  vim nginx.conf
 1317  kubectl cp nginx.conf nginx:/etc/nginx/nginx.conf
 1318  kubectl exec -it nginx -- mkdir -p /var/www/static
 1319  kubectl exec -it nginx -- nginx -s reload
 1320  echo "The sky above the port was the color of television, tuned to a dead channel." > w-gibson.txt
 1321  kubectl cp w-gibson.txt nginx:/var/www/static/
 1322  echo "It is also the story of a book. A book called The Hitch Hiker's Guide to the Galaxy." > d-adams.txt
 1323  kubectl cp d-adams.txt nginx:/var/www/static/
