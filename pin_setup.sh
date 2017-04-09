cd /tmp/portal/
chmod 766  7.5.0_ThirdParty_linux_32_opt.bin 7.5.0_SNMP_3rd_party_tool_linux_64_opt.bin  7.5.0_Portal_Base_linux_32_opt.bin
./7.5.0_ThirdParty_linux_32_opt.bin
. oraenv
cd /opt/portal/ThirdParty/
source source.me.sh 
./7.5.0_SNMP_3rd_party_tool_linux_64_opt.bin -console
./7.5.0_Portal_Base_linux_32_opt.bin -console
source ~/source.me.sh 
export NLS_LANG=American_America.AL32UTF8
cd ~/setup/
./pin_setup 

