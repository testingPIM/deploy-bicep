param storageAccountName string
param skuName string
param location string = resourceGroup().location

param azure_storage_key string = 'Eby8vdM02xNOcqFlqUwJPLlmEtlCDXJ1OUzFT50uSRYAzF4mGmDU6AZ=='

param storageSasToken string = '?sv=2022-11-02&ss=b&srt=sco&sp=rwdlacx&se=2025-12-31T23:59:59Z&st=2025-01-01T00:00:00Z&spr=https,http&sig=ABC123xyz%2B%2FlvXyzAbcdEfghIjklmnopqrsTUvWXyZabcdEFGH%3D'

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
