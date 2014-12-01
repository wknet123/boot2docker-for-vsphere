# boot2docker profile filename: %BOOT2DOCKER_DIR%\profile
Init = false
Verbose = false
Driver = "vsphere"
SSH = "ssh"
SSHGen = "ssh-keygen"
VM = "boot2docker-vm"
ISOURL = "https://api.github.com/repos/boot2docker/boot2docker/releases"
DiskSize = 20000
Memory = 2048
SSHPort = 2022
DockerPort = 0
HostIP = "0.0.0.0"
#DHCPIP = "10.117.169.240"
NetMask = [255, 255, 255, 0]
LowerIP = "0.0.0.0"
UpperIP = "0.0.0.0"
DHCPEnabled = true
Serial = false
SerialFile = "\\\\.\\pipe\\boot2docker-vm"
Waittime = 300
Retries = 75

[DriverCfg.vsphere]
Govc = "govc"
VcenterIp = "10.117.171.166"
VcenterUser = "root"
VcenterDatacenter = "Datacenter"
VcenterDatastore = "datastore1 (2)"
VcenterNetwork = "VM Network"
VcenterPool = "cluster2"