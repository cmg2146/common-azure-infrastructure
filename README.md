# Infrastructure 
This repository contains Azure bicep files for deploying common infrastructure into a shared Azure resource group.

When adding a new resource type to a bicep file, make sure the corresponding resource provider is registerd in Azure.
Click [here](https://learn.microsoft.com/en-us/azure/azure-resource-manager/troubleshooting/error-register-resource-provider?tabs=azure-portal) to learn how to register a resource provider.

### Configuration
The following environment variables are required by the pipeline. They have been configured in a variable group named
"common-azure-infrastructure_Production" in Azure DevOps.

General Variables:
* AZURE_SERVICE_CONNECTION
  * The name of the service connection to Azure. A service connection must be created in Azure DevOps
  for the pipeline to communicate with Azure.
* RESOURCE_GROUP_NAME
  * The name of the resource group to create (or apply updates to if already created).
* RESOURCE_GROUP_LOCATION
  * The Azure region to create the resource group in (ignored after resource group is created).

Azure Container Registry:
* ACR_REGISTRY_NAME
  * The name of the container registry to create (or apply updates to if already created).
* ACR_REGISTRY_SKU
  * The SKU of the container registry.

Note: The registry will be created in the same location the resource group is in.