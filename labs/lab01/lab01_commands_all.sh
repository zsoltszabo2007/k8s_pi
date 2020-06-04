  221  ./01_addUserToDockerGroup.sh 
  224  sudo apt install golang
  231  echo "sudo apt install golang" > 02_InstallGoLang.sh
  232  ./02_InstallGoLang.sh
  236  which go
  251  cd
  253  mkdir go
  256  sudo vim .bashrc
  # Modify ~/.bashrc and add the following
  # Env variable for golang
  # export GOPATH=$HOME/go
  # export PATH=$PATH:$GOPATH/bin
  257  . .bashrc 
  258  echo $GOPATH
  269  go install
  273  mkdir -p ~/go/ericsson.com/hello  
  275  cd ~/go/ericsson.com/hello/
  276  vim hello.go  
# Content for hello.go
#  package main
#
#import "fmt"
#
#func main() {
#    fmt.Println("Hello, world.")
#}
  292  hello
  
#####################
  294  cd ..
  295  ls
  296  cd src
  297  ls
  298  mkdir github.com
  299  cd github.com
  300  git clone https://github.com/alta3/webby.git
  301  cd webby/
  302  ls
  303  less ./webpage.go 
  304  go get .
  305  CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o webserver .
  306  cd ~/go/bin
  308  cd ..
  310  cd src/github.com/webby/
  311  ls
  318  vim Docker.armv7l
# Content for Docker.armv7l
##filename
#FROM scratch
#
##name of the binary (image)
#ADD webserver /
#
##add a directory
#ADD deploy /deploy/
#
##there can only be one CMD in a dockerfile
#CMD ["/webserver"]
#
## port that the container will listen on
#EXPOSE 8888
  
  421  sudo docker build -t zsoltszabo2007/webby -f Docker.armv7l .
  422  sudo docker images
  433  sudo docker login
  434  sudo docker push zsoltszabo2007/webby:latest

