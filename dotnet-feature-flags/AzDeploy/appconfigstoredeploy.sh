export LOCATION=eastus
export RESOURCE_GROUP=rg-eshop
export CONFIG_NAME=eshop-app-features$SRANDOM

az group create --name $RESOURCE_GROUP --location $LOCATION
az appconfig create --resource-group $RESOURCE_GROUP --name $CONFIG_NAME --location $LOCATION --sku Free
az appconfig create --resource-group $RESOURCE_GROUP --name $CONFIG_NAME --location $LOCATION --sku Free
az appconfig credential list --resource-group $RESOURCE_GROUP --name $CONFIG_NAME --query [0].connectionString --output tsv

#added feature flag SeasonalDiscount and eShopLite__Store__DiscountPercent config key and value
