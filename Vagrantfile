Vagrant.configure(2) do |config|
  boxCount = 2
  appVMNameStub = "gobox"

  config.vm.box = "ubuntu/precise64"

  (1..1).each do |i|
    config.vm.define "node-#{i}" do |node|
      node.vm.provision "node",
				type: "shell",
				path: "nodebootstrap.bash",
				run: "always",
        privileged: "false"
      node.vm.hostname = appVMNameStub + i.to_s
    end
  end
end
