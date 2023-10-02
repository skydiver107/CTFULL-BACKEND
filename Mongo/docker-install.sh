# install docker
sudo amazon-linux-extras install -y ecs; sudo systemctl enable --now ecs
#Ensure that the agent is running
curl -s http://localhost:51678/v1/metadata | python -mjson.tool

sudo usermod -a -G docker ec2-user
sudo chkconfig docker on
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Run the docker container
docker-compose up --build -d mongodb