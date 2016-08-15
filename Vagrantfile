Vagrant.configure(2) do |config|
  boxCount = 2
  appVMNameStub = "application-box-"

  config.vm.box = "ubuntu/precise64"

  config.vm.define "webserver" do |webserver|
    webserver.vm.network "private_network", ip: "192.168.50.5"
    if Vagrant::Util::Platform.windows?
      webserver.vm.provision "guest_ansible" do |guest_ansible|
        guest_ansible.playbook = "nginx/playbook-local.yml"
        guest_ansible.sudo = true
      end
    else
      webserver.vm.provision "ansible" do |ansible|
        ansible.playbook = "nginx/playbook.yml"
        ansible.sudo = true
      end
    end
  end

  (1..boxCount).each do |i|
    config.vm.define "node-#{i}" do |node|
      node.vm.network "private_network", ip: "192.168.50.#{2+i}"
      # node.vm.provision "shell", inline: "export GOPATH=/vagrant/go"
      if Vagrant::Util::Platform.windows?
        node.vm.provision "guest_ansible" do |guest_ansible|
          guest_ansible.playbook = "go/playbook-local.yml"
          guest_ansible.sudo = true
        end
      else
        node.vm.provision "ansible" do |ansible|
          ansible.playbook = "go/playbook.yml"
          ansible.sudo = true 
        end
      end       
      node.vm.hostname = appVMNameStub + i.to_s
    end
    
  end

end
