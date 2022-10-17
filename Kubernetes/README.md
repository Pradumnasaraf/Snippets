- `minikube start` - Creating a cluster
- `minikube status` - Running Status of cluster
- `minikube dashboard` - 
- `minikube docker-env` -
- `minikube SSH` -

> KUBECTL

- To check the version:

```bash
kubectl version
kubectl version --output=yaml
```
- To run a Pod

```bash
kubectl run <pod name> --image <image name>
kubectl run myngix --image nginx
```

- To check all running services, pods, etc.

```bash
kubectl get all
```

- To check all the running services

```bash
kubectl get services
```

- To check all the running pods

```bash
kubectl get pods
```

- To check all the running node.

```bash
kubectl get nodes
```

- To delete the deployment

```bash
kubectl delete deployment <deployment-name>
```

- To delete the pods 

```bash
kubectl delete pod <pod-name>
```

- To get logs of a pod

```bash
kubectl logs <pod-name>
```

- Get a deep details about the pod 

```
kube describe pod <pod -name>
```


- `kubectl config view` - info about the cluster
- `kubectl create deployment <deployment-name> --image=<image-name> ` - cteate a deplyment (pod inside it, you can't directly created pods)
    - `kubectl create deployment ngni-dep --image=ngnix` 
- `kubectl get deployment` - get all the deployments
- `kubectl get replicaset` - check pods replicas
- `kubectl edit deployment ngnix` - Edit the config file.
- `kubectl describe pod <pod-name>` - give state chnages of a pod.
- `kubectl exec -it <pod-name> -- bin/bash` - open the shell for that pod
- `kubectl get pod -o wide` - get more details about the pods

- `kubectl get namespaces` - get all the name spaces
- `kubectl create namespace <insert-namespace-name-here>` - create a namespace
- `kubectl apply -f <config file name> --namespace=<namespace name>`
    - Eg: `kub apply -f mongo-configmap.yaml --namespace=my-namespace`
- `kub get configmap -n my-namespace`
    - Eg: `kub get configmap -n my-namespace`
    

