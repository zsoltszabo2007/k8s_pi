  543  cd lab08
  544  kubectl apply -f ../lab07/simpleservice.yaml 
  547  kubectl port-forward simpleservice 8080:9876 --address=0.0.0.0 &
  548  curl 
  549  curl --help
  552  sudo apt-get install jq  
  553  curl localhost:8080/env | jq '.'
  554  curl localhost:8080/health | jq '.'
  555  curl localhost:8080/info | jq '.'
  556  curl localhost:8080/endpoint0 | jq '.'
  