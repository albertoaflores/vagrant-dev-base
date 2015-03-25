# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
  
    # Customize the amount of memory on the VM:
    #vb.memory = "2048"
    
    #
    # config.ssh.forward_agent = true
    # config.ssh.forward_x11 = true
    
    vb.customize ["modifyvm", :id, "--memory", "2048"]
    vb.customize ["modifyvm", :id, "--cpus", "2"]
    vb.customize ["modifyvm", :id, "--graphicscontroller", "vboxvga"]
    vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
    vb.customize ["modifyvm", :id, "--vram", "128"]
    vb.customize ["modifyvm", :id, "--hwvirtex", "on"]
    
    # Enable audio support for the VM & specify the audio controller
    vb.customize ["modifyvm", :id, "--audio", "coreaudio", "--audiocontroller", "hda"]
  end
  
  # Provision Box with standard shell script
  config.vm.provision :shell, path: 'setup-desktop.sh'
  
  # Enable folders synchronization
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "./bosh-deployments", "/bosh-deployments"
end
