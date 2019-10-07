# Openvpn Access Server on Ubuntu VM

This template uses the Azure Linux CustomScript extension to deploy an openvpn access server. It creates an Ubuntu VM, does a silent install of openvpn access server, then make the basic server network settings: define the VPN Server Hostname to be the VM's public ip's name.

The user is openvpn, password is defined by yourself during the deployment.

After deployment, you can go to https://VM's public ip or dns name:943 , then input the user and password, download the client software on your machine, connect to the VPN Server.

