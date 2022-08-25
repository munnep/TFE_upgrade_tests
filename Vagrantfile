Vagrant.configure("2") do |config|

    config.vm.box = "bento/ubuntu-20.04"

    config.vm.hostname = "TFE-demo-auto"
    config.vm.network "private_network", ip: "192.168.56.33"

    config.vm.provision "shell", path: "vagrant_scripts/configure_tfe_settings.sh"
    config.vm.provision "shell", path: "vagrant_scripts/configure_replicated.sh"
    config.vm.provision "shell", path: "vagrant_scripts/install_tfe.sh",
        env: { "RELEASE_SEQUENCE" => "599" }

    config.vm.provision "shell", path: "vagrant_scripts/create_tfe_account.sh"

    config.vm.provider "virtualbox" do |v|
        v.memory = 8192
        v.cpus = 8
    end
    
end
