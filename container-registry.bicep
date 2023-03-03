@description('Location for all resources.')
param location string = resourceGroup().location

@description('The name of the Container Registry')
param registryName string

@description('The SKU of the Container Registry')
param registrySku string = 'Standard'

resource containerRegistry 'Microsoft.ContainerRegistry/registries@2022-02-01-preview' = {
  name: registryName
  location: location
  sku: {
    name: registrySku
  }
  properties: {
    adminUserEnabled: false
    zoneRedundancy: 'Disabled'
  }
}
