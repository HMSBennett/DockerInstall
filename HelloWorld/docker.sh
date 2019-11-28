echo Docker Install

git clone https://github.com/HMSBennett/DockerInstall

cd DockerInstall

./install.sh

cd ..

echo Build Image

docker build -t helloworld:v1 .

echo Run Nginx/Page

docker run -d -p 8081:80 helloworld:v1
