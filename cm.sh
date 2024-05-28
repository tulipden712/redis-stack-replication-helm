# esb driver
eksctl create iamserviceaccount \
    --name ebs-csi-controller-sa \
    --namespace kube-system \
    --cluster vds-clt \
    --role-name AmazonEKS_EBS_CSI_DriverRoleVds \
    --role-only \
    --attach-policy-arn arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy \
    --approve
# aws eks describe-cluster --name arn:aws:eks:ap-southeast-1:621726795094:cluster/vds-clt --query "cluster.identity.oidc.issuer" --output text

eksctl create addon --name aws-ebs-csi-driver --cluster vds-clt --service-account-role-arn arn:aws:iam::621726795094:role/AmazonEKS_EBS_CSI_DriverRoleVds --force

eksctl utils associate-iam-oidc-provider --region=ap-southeast-1 --cluster=vds-clt --approve
eksctl get addon --cluster vds-clt | grep ebs


# install redis by helm
# guide: https://dev.to/botkids/ho-to-deploy-redis-stack-server-statefulset-in-kubernetes-4j8g
helm upgrade --install redis-stack . \
-f ./values.yaml \
--namespace redis --create-namespace

# uninstall redis
helm uninstall redis-stack -n redis
kubectl delete namespace redis