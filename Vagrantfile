Vagrant.configure("2") do |config|
    config.vm.box = "centos/7"
    config.vm.box_check_update = false
    config.vbguest.auto_update = false
    config.vm.provision "shell", path: "scripts/vagrant.sh"
    config.vm.provision "file" do |file|
        file.source = "key/ansible_key.pub"
        file.destination = "~/.ssh/authorized_keys_ansible"
    end
    config.vm.provision "shell", inline: "mv /home/vagrant/.ssh/authorized_keys_ansible /home/ansible/.ssh/authorized_keys"

    config.vm.provider "virtualbox" do |vb|
        vb.customize ["modifyvm", :id, "--cpus", "1"]
        vb.customize ["modifyvm", :id, "--memory", "512"]
        vb.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
    end

    config.vm.define "controller" do |controller|
        controller.vm.network "private_network", ip: "192.168.10.200"
    end

    config.vm.define "worker1" do |worker1|
        worker1.vm.network "private_network", ip: "192.168.10.201"
    end

    config.vm.define "worker2" do |worker2|
        worker2.vm.network "private_network", ip: "192.168.10.202"
    end

    config.vm.define "worker3" do |worker3|
        worker3.vm.network "private_network", ip: "192.168.10.203"
    end

    config.vm.define "worker4" do |worker4|
        worker4.vm.network "private_network", ip: "192.168.10.204"
    end
end