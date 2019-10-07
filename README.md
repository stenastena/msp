# msp
			
- "1 azure-bastion"
развертывание узла Bastion. В одном каталоге лежат два скрипта и два файла параметров для разных сценариев развертывания: с чистого листа и в существующую ресурсную группу с существующей сетью Vnet.
			
- "2 storage-file-share" 
развертывание хранилища с файловым общим ресурсов
		
- "3 Umbarco auto deploy"
развертывание CMS Umraco
			
- "4 vm-simple-windows"
развертывание виртуальной машины Windows    
				
- "5 vm-simple-linux"
развертывание виртуальной машины Linux  
	
- "6 openvpn-access-server-ubuntu"
развертывание сервера VPN на базе OpenVPN

В скриптах, в зависимости от конечного местоположения, надо править команду изменения каталога.
Скрипты развертывания представлены на PowerShell и не поддерживают параметров командной строки. 
Сокращенный набор параметры задается через файла параметров azuredeploy.parameters.json.
Полный набор параметров находится в соответствующем блоке ARM шаблона azuredeploy.json 
