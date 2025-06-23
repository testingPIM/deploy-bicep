param storageAccountName string
param skuName string
param location string = resourceGroup().location

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
