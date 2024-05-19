$resourceGroupName = "rg-ts-rg7865"
$storageAccountName = "stots56rg321"
$location = "eastus"

New-AzResourceGroup -Name $resourceGroupName -Location $location

New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile template.json `
    -TemplateParameterObject @{
        "resourceGroupName"=$resourceGroupName;
        "storageAccountName"=$storageAccountName;
        "location"=$location;
    }
