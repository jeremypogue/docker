sudo apt-get update
sudo curl -sSL https://get.docker.com | sh
sudo docker run -it -d --name itc3vpn --restart always --privileged --device=/dev/net/tun jeremypogue/picontainer
sudo docker attach itc3
docker run -it --name rpi1 --net=container:itc3vpn ioft/armhf-debian
docker run -it --name rpi2 ioft/armhf-debian
