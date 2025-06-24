param location string
param resourceGroupName string
param storageAccountName string
param skuName string
param azuresas string = 'sp=r&st=2025-06-24T04:34:05Z&se=2025-06-24T12:34:05Z&spr=https&sv=2024-11-04&sr=c&sig=Z2zfdMILJvcRIxqVcQvip7G9mOS1FeZzaAfQowp%2BFy0%3D'

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
