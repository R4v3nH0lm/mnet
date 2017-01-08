Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.box_version = "1605.01"
  config.vm.hostname = "mnet1"
  config.vm.provision "shell", path: "provision.sh"
end