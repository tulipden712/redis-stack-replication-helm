# redis-stack

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 7.2.0-v6](https://img.shields.io/badge/AppVersion-7.2.0--v6-informational?style=flat-square)

Helm chart for Redis Stack with Replication. Highly inspired by [Bot-kids](https://dev.to/botkids) and their [article on deploying Redis Stack server on Kubernetes](https://dev.to/botkids/ho-to-deploy-redis-stack-server-statefulset-in-kubernetes-4j8g).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| configMap.master.appendOnly | string | `"yes"` |  |
| configMap.master.dbFileName | string | `"dump.rdb"` |  |
| configMap.master.dir | string | `"/data"` |  |
| configMap.master.maxClients | int | `20000` |  |
| configMap.master.maxMemory | string | `"1000mb"` |  |
| configMap.master.maxMemoryPolicy | string | `"allkeys-lru"` |  |
| configMap.master.save | string | `""` |  |
| configMap.master.timeout | int | `300` |  |
| configMap.name | string | `"redis-stack-configuration"` |  |
| configMap.replicas.appendOnly | string | `"yes"` |  |
| configMap.replicas.dir | string | `"/data"` |  |
| configMap.replicas.maxClients | int | `20000` |  |
| configMap.replicas.maxMemory | string | `"1000mb"` |  |
| configMap.replicas.maxMemoryPolicy | string | `"allkeys-lru"` |  |
| configMap.replicas.save | string | `""` |  |
| configMap.replicas.timeout | int | `300` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"redis/redis-stack-server"` |  |
| imagePullSecrets | list | `[]` |  |
| initVolumeMounts[0].mountPath | string | `"/etc"` |  |
| initVolumeMounts[0].name | string | `"redis-claim"` |  |
| nameOverride | string | `""` |  |
| namespace | string | `"redis"` |  |
| nodeSelector | object | `{}` |  |
| replicaCount | int | `2` |  |
| service.headless | bool | `true` |  |
| service.port | int | `6379` |  |
| service.type | string | `"ClusterIP"` |  |
| tolerations | list | `[]` |  |
| volumes[0].mountPath | string | `"/etc"` |  |
| volumes[0].name | string | `"redis-claim"` |  |
| volumes[0].request | string | `"1Gi"` |  |
| volumes[0].storageClassName | string | `"gp2"` |  |
| volumes[1].mountPath | string | `"/var/lib/redis-stack"` |  |
| volumes[1].name | string | `"redis-data"` |  |
| volumes[1].request | string | `"1Gi"` |  |
| volumes[1].storageClassName | string | `"gp2"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.3](https://github.com/norwoodj/helm-docs/releases/v1.11.3)
