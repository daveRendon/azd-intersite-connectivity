targetScope = 'subscription'

@minLength(1)
@maxLength(64)
@description('Name of the environment that can be used as part of naming resource convention')
param environmentName string

@minLength(1)
@description('Primary location for all resources')
param location string

@description('Virtual machine size')
param vmSize string = 'Standard_D2s_v3'

@description('First Azure Region')
param location1 string = 'eastus'

@description('Second Azure Region')
param location2 string = 'westus'

@description('Admin username')
param adminUsername string

@description('Admin password')
@secure()
param adminPassword string

param intersiteConnectivityExists bool

@description('Id of the user or app to assign application roles')
param principalId string

// Tags that should be applied to all resources.
// 
// Note that 'azd-service-name' tags should be applied separately to service host resources.
// Example usage:
//   tags: union(tags, { 'azd-service-name': <service name in azure.yaml> })
var tags = {
  'azd-env-name': environmentName
}

// Organize resources in a resource group
resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'rg-${environmentName}'
  location: location
  tags: tags
}

module resources 'resources.bicep' = {
  scope: rg
  name: 'resources'
  params: {
    adminPassword: adminPassword
    adminUsername: adminUsername
    environmentName: environmentName
  }
}

