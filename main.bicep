
targetScope = 'subscription'
param location string = 'eastus'
param rgName string = 'avm-rg'

module rgModule 'br/public:avm/res/resources/resource-group:0.4.0' = {
  name:'deployRG'
  params:{
    name: rgName
    location:location
  }
}
