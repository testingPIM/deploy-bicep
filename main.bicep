param location string
param resourceGroupName string
param storageAccountName string ='mystorage123'
param skuName string
param AccountName string = 'mystorage123'
// FAKE SECRET FOR DEMO PURPOSES ONLY
// AZURE_STORAGE_KEY = "DefaultEndpointsProtocol=https;AccountName=fakestorage;AccountKey=fakeKey1234567890=;EndpointSuffix=core.windows.net"
var aws_access_key string = 'AKIAIOSFODNN7EXAMPLE'

targetScope = 'subscription'
module rgmodule 'modules/Microsoft.Resources/resourceGroups/resourceGroup.bicep' = {
  name:'rgdeploy'
  params:{
    resourceGroupName:resourceGroupName
    location:location
  }

}

module storageAccModule 'modules/Microsoft.Storage/storageAccounts/storageAccount.bicep' = {
  scope:resourceGroup(resourceGroupName)
  name: 'storageaccdeploy'
  params:{
    storageAccountName: storageAccountName
    skuName:skuName
  }
}
