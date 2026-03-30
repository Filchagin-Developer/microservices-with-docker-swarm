Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-22.04"
  config.vm.synced_folder ".", "/vagrant"

  config.vm.define "manager01" do |manager|
    manager.vm.hostname = "manager01"
    manager.vm.network "private_network", ip: "192.168.56.10"

    manager.vm.provider "parallels" do |prl|
      prl.memory = 2048
      prl.cpus = 2
    end

    manager.vm.provision "shell", path: "scripts/install_docker.sh"
    manager.vm.provision "shell", path: "scripts/init_swarm.sh", args: ["192.168.56.10"]
  end

  config.vm.define "worker01" do |worker|
    worker.vm.hostname = "worker01"
    worker.vm.network "private_network", ip: "192.168.56.11"

    worker.vm.provider "parallels" do |prl|
      prl.memory = 2048
      prl.cpus = 1
    end

    worker.vm.provision "shell", path: "scripts/install_docker.sh"
    worker.vm.provision "shell", path: "scripts/join_swarm.sh", args: ["192.168.56.10"]
  end

  config.vm.define "worker02" do |worker|
    worker.vm.hostname = "worker02"
    worker.vm.network "private_network", ip: "192.168.56.12"

    worker.vm.provider "parallels" do |prl|
      prl.memory = 2048
      prl.cpus = 1
    end

    worker.vm.provision "shell", path: "scripts/install_docker.sh"
    worker.vm.provision "shell", path: "scripts/join_swarm.sh", args: ["192.168.56.10"]
  end
end