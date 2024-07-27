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
