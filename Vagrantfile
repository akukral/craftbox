Vagrant.configure(2) do |config|
  config.vm.box = "jalenconner/trusty64_base"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.hostname = "craftbox.dev"
  config.vm.provision :shell,
    :keep_color => true,
    :inline => "export PYTHONUNBUFFERED=1 && export ANSIBLE_FORCE_COLOR=1 && cd /vagrant/provisioning && ./init.sh"
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
  if Vagrant.has_plugin? 'vagrant-triggers'
    config.trigger.after [:up, :resume] do
      info "Importing Database"
      run_remote "bash /vagrant/backup/dbimport.sh"
    end
    config.trigger.before [:halt, :suspend] do
      info "Backing-up Database"
      run_remote "bash /vagrant/backup/dbexport.sh"
    end
  else
    puts 'vagrant-triggers missing, please install the plugin:'
    puts 'vagrant plugin install vagrant-triggers'
  end
end
