Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision :shell, path: "build_script/bootstrap.sh"
  config.vm.network :forwarded_port, guest: 80, host: 8000
  config.vm.network :forwarded_port, guest: 3306, host: 13306
  config.vm.synced_folder ".", "/var/www/html/wp-parquecapibaribe" #, type: "rsync", rsync__args:["--exclude-from", ".gitignore"]
end