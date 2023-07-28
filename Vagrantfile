Vagrant.configure('2') do |config|
  config.vm.box        = "bento/ubuntu-18.04"
  #config.disksize.size = '40GB'

  #config.vbguest.auto_update = false
  #config.vbguest.iso_path = "https://download.virtualbox.org/virtualbox/6.1.22/virtualbox-6.1_6.1.22-144080~Debian~stretch_amd64.deb"
  if Vagrant.has_plugin?("vagrant-vbguest")
    config.vbguest.auto_update = false
  end

  config.vm.provider "virtualbox" do |v|
    v.memory = 6048
    v.cpus   = 2
  end

  # Copy ssh certifcate to VM
  if File.file?(File.expand_path('~/.ssh/id_rsa')) && File.file?(File.expand_path('~/.ssh/id_rsa.pub'))
    config.vm.provision :file, source: '~/.ssh/id_rsa', destination: '.ssh/id_rsa'
    config.vm.provision :file, source: '~/.ssh/id_rsa.pub', destination: '.ssh/id_rsa.pub'
  end

  config.vm.provision :shell, path: 'vagrant-bootstrap.sh'

  #config.vm.network :forwarded_port, guest: 3000, host: 3000

end
