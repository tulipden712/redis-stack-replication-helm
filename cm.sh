# install redis by helm
# guide: https://dev.to/botkids/ho-to-deploy-redis-stack-server-statefulset-in-kubernetes-4j8g
helm upgrade --install redis-stack . \
-f ./values.yaml \
--namespace redis --create-namespace

# uninstall redis
helm uninstall redis-stack -n redis
kubectl delete namespace redis