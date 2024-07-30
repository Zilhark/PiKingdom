### Config Cisco Switch
##### Connecting to the swithc via serial connector with usb at end.
Using Putty settings: 
- Set the speed (baud rate) to 9600.
- Data bits: 8
- Stop bits: 1
- Parity: None
- Flow control: None
- serial line COMX
x=> can be found via system managear under Ports (COM and PORT) look for USB serial port
##### First ssh
hostname <elincia>
ip domain-name <crimea>

#### Getting the new flash onto the cisco
First finding the new iso.

went to a sketchy site [c3550 update](https://download4share.com/download/get/J0y_in_q/c3550-ipservicesk9-mz_122-44_se5_bin.html) and made a fake
email at [tmp-email](https://temp-mail.org/en/change) to downlaod the binary   c3550-ipservicesk9-mz.122-44.SE5.bin.

To save the old one just in case, I had to set up a tftp server on my windows10. So, I downloaded SolarWinds, installed it, 
enabled tftp client from control panel/programs and features.

The tftp server on windows didn't work for transfering files to the cisco server. So, I set up a tftp server on my kali linux. On kali, I was able to grab folders from the windows server 
and transfer the files onto the switch, as well as grab files. So, the old  iso was grabbed in case this new one bricked it, but why? The new one was uploaded. The first try failed becasue
of two many transfer errors, so I moved the pc closer and raised the timeout time to be higher, the secodns time it failed bc of lack of space. THe old iso was delted, and the new one was able 
to be transfered.

The switc now has crypto.

## Switch
Rememebr that switches create VLAN for port or range of ports, and the devices connected to those swithces have their Ips. 
So, devices have ips that default to the VLAN ip of the swithc, which depending on the config of the vlan, will do something with it.
So, we set up FastEthernet0/1-24 to vlan 1, then default-gatway vlan to <ip-addr>. So, devices connected to those ports will send to default-gatway <ip-add>
#### Setting up the swithch.

Commands for setting up the ethernets:
To telnet, the basic passwords needed to be set
`enable secret <code>`<br>
`line vty 0 15` <br>
` password <passwd>` <br>
`login`<br>
`end`<br>

Setting up ssh:
`hostname <name>`<br>
`ip domain-name example.com # so you don't have to write out the ip numbers` <br>
`crypto key generate rsa` <br>
`1024` <br>
`ip ssh version 2` <br>
`line vty 0 15`<br>
`login local`<br>
`exit` <br>
`username <user> password <passwd>` <br>

To swtich transport mode:
`transport input ssh` #only ssh
`transport input all`


Configuring ip static
`config term`
`interface vlan 1 #or any number`
`ip address <ip_add> <subnetmask>
`no shutdown`
`exit`
`ip default-gateway <ip_to router>


Configure ip dynamic
`config term`
`interface vlan 1`
`ip addre dhcp`
`no shutdown`

Misc to do range instead of each one:
`interface range Ethernet0/1 - 24
`switchport mode access`
`switchport access vlan 1` # repalce with your vlan ID
`no shutdown`

