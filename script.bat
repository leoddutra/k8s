echo "Criando imagens"

docker build -t leoddutra/projeto-backend:1.0 backend/.
docker build -t leoddutra/projeto-database:1.0 database/.

echo "Realizando push das imagens"

docker push leoddutra/projeto-backend:1.0
docker push leoddutra/projeto-database:1.0

echo "Rodando cluster kubernets"

kubectl.exe apply -f .\services.yml

echo "criando os deployments

kubectl.exe apply -f .\deployment.yml