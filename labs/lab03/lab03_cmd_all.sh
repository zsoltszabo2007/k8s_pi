  462  cd lab03
  463  kubectl get namespaces
  464  kubectl describe namespace default
  465  kubectl describe namespace kube-system
  466  vim test-ns.yaml
  467  kubectl create -f test-ns.yaml 
  468  kubectl get namespaces
  469  cp test-ns.yaml prod-ns.yaml
  470  cp test-ns.yaml dev-ns.yaml
  471  vim prod-ns.yaml 
  472  vim dev-ns.yaml  
  477  kubectl create -f dev-ns.yaml 
  478  kubectl create -f prod-ns.yaml 
  493  pwd
  494  ls
  495  cd ..
  # Creating Resource Quota descriptor files
  500  vim test_rq.yaml
  501  less test_rq.yaml 
  502  kubectl create -f test_rq.yaml --namespace=test
  503  kubectl describe namespace test
  504  kubectl get namespaces
  505  cp test_rq.yaml prod_rq.yaml
  506  cp test_rq.yaml dev_rq.yaml
  507  vim prod_rq.yaml 
  508  vim dev_rq.yaml 
  # Applying Resource Quotas to namespaces
  509  kubectl -f prod_rq.yaml --namespace prod
  510  kubectl create -f prod_rq.yaml --namespace prod
  511  kubectl create -f dev_rq.yaml --namespace dev
  512  kubectl describe namespace dev prod test
  513  kubectl delete -f test_rq.yaml --namespace test
  514  kubectl delete -f dev_rq.yaml --namespace dev
  515  kubectl delete -f prod_rq.yaml --namespace prod
  516  kubectl describe namespace test prod dev
  517  history > lab03_cmd_all.sh
