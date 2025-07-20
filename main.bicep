
targetScope = 'subscription'
param location string
param rgName string
param kvName string

module rgModule 'br/public:avm/res/resources/resource-group:0.4.0' = {
  name:'deployRG'
  params:{
    name: rgName
    location:location
  }
}

module kvModule 'br/public:avm/res/key-vault/vault:0.4.0' = {
  name: 'createKV'
  scope: resourceGroup(rgName)
  params: {
    name: kvName
    location: location
    enablePurgeProtection:false
  }
}
