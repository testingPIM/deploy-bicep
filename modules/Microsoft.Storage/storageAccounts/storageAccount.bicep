param storageAccountName string
param skuName string
param location string = resourceGroup().location

param azure_storage_key string = 'Eby8vdM02xNOcqFlqUwJPLlmEtlCDXJ1OUzFT50uSRYAzF4mGmDU6AZ=='

resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name:storageAccountName
  location:location
  kind:'StorageV2'
  sku: {
    name:skuName
  }
  properties:{
    accessTier:'Hot'
}
}
