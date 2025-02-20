﻿#Вводим логин и пароль для входа в подписку
Connect-AzAccount

#переключаемся в нашу подписку (для случаев) если их много
Set-AzContext -SubscriptionId b7cfd124-be9c-4caf-93e5-09260a490650

$rgName = "rgMSP-Autodeploy-OpenVPNServer"
New-AzResourceGroup -Name $rgName -Location "West Europe" #use this command when you need to create a new resource group for your deployment

cd ".\6 openvpn-access-server-ubuntu"   

New-AzResourceGroupDeployment -ResourceGroupName $rgName `
-TemplateFile ".\azuredeploy.json" `
-TemplateParameterFile ".\azuredeploy.parameters.json" 

