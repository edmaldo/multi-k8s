docker build -t edmaldo/complex-client:latest -t edmaldo/complex-client:$SHA
docker build -t edmaldo/complex-server:latest -t edmaldo/complex-server:$SHA
docker build -t edmaldo/complex-worker:latest -t edmaldo/complex-worker:$SHA

docker push edmaldo/complex-client:latest
docker push edmaldo/complex-server:latest
docker push edmaldo/complex-worker:latest

docker push edmaldo/complex-client:$SHA
docker push edmaldo/complex-server:$SHA
docker push edmaldo/complex-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=edmaldo/complex-server:$SHA
kubectl set image deployments/client-deployment client=edmaldo/complex-client:$SHA
kubectl set image deployments/worker-deployment worker=edmaldo/complex-worker:$SHA
