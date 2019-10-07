#Вводим логин и пароль для входа в подписку
Connect-AzAccount

#переключаемся в нашу подписку (для случаев) если их много
Set-AzContext -SubscriptionId b7cfd124-be9c-4caf-93e5-09260a490650

New-AzResourceGroup -Name rgMSP-CMP-Autodeploy-Service1 -Location "West Europe" #use this command when you need to create a new resource group for your deployment

cd ".\3 Umbarco auto deploy" 

New-AzResourceGroupDeployment -ResourceGroupName "rgMSP-CMP-Autodeploy-Service1" `
-TemplateFile ".\azuredeploy.json" `
-TemplateParameterFile ".\azuredeploy.parameters.json" 
