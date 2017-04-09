
cd /media/sf_Softwares/iso
mkdir -p /media/centos

mount -o loop  CentOS-6.7-x86_64-bin-DVD1.iso /media/centos


rpm -q --queryformat "%{NAME}-%{VERSION}-%{RELEASE} (%{ARCH})\n" binutils \
 compat-libstdc++-33 elfutils-libelf elfutils-libelf-devel gcc gcc-c++ glibc \
glibc-common glibc-devel-2.5 libaio libaio-devel libgcc libstdc++ libstdc++-devel \
make sysstat
cd /media/centos/Packages

rpm -Uvh unixODBC*.x86_64.rpm
rpm -Uvh binutils-2*x86_64*
rpm -Uvh glibc-2*x86_64* nss-softokn-freebl-3*x86_64*
rpm -Uvh glibc-2*i686* nss-softokn-freebl-3*i686*
rpm -Uvh compat-libstdc++-33*x86_64*
rpm -Uvh glibc-common-2*x86_64*
rpm -Uvh glibc-devel-2*x86_64*
rpm -Uvh glibc-devel-2*i686*
rpm -Uvh glibc-headers-2*x86_64*
rpm -Uvh elfutils-libelf-0*x86_64*
rpm -Uvh elfutils-libelf-devel-0*x86_64*
rpm -Uvh gcc-4*x86_64*
rpm -Uvh gcc-c++-4*x86_64*
rpm -Uvh ksh-*x86_64*
rpm -Uvh libaio-0*x86_64*
rpm -Uvh libaio-devel-0*x86_64*
rpm -Uvh libaio-0*i686*
rpm -Uvh libaio-devel-0*i686*
rpm -Uvh libgcc-4*x86_64*
rpm -Uvh libgcc-4*i686*
rpm -Uvh libstdc++-4*x86_64*
rpm -Uvh libstdc++-4*i686*
rpm -Uvh libstdc++-devel-4*x86_64*
rpm -Uvh make-3.81*x86_64*
rpm -Uvh numactl-devel-2*x86_64*
rpm -Uvh sysstat-9*x86_64*
rpm -Uvh compat-libstdc++-33*i686*
rpm -Uvh compat-libcap*
yum install xorg-x11-utils
rpm -Uvh xorg-x11-utils-7.5-6.el6.x86_64.rpm
yum install glibc-devel.i686
yum install libstdc++-4.4.7-16.el6.i686
yum install xdpyinfo



mkdir /tmp/oracle
cd /media/sf_Softwares/
unzip -d /tmp/oracle/ linux.x64_11gR2_database_1of2.zip
unzip -d /tmp/oracle/ linux.x64_11gR2_database_2of2.zip
chown oracle:oinstall -R /tmp/oracle

mkdir -p /opt/apps/ora11g
chown -R oracle:oinstall /opt/
/opt/apps/ora11g/app/oraInventory/orainstRoot.sh
./app/oracle/product/11.2.0/dbhome_1/root.sh
cd /tmp/oracle/database
export DISPLAY=localhost:0.0
./runInstaller -silent -responseFile ora11greponse.dsp
chmod 644 /opt/apps/ora11g/app/oracle/product/11.2.0/dbhome_1/network/admin/tnsnames.ora 



