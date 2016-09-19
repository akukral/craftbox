Vagrant.configure(2) do |config|
  config.vm.box = "jalenconner/trusty64_base"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.hostname = "craftbox.dev"
  config.vm.provision :shell,
    :keep_color => true,
    :inline => "export PYTHONUNBUFFERED=1 && export ANSIBLE_FORCE_COLOR=1 && cd /vagrant/provisioning && ./init.sh"
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
  config.trigger.after [:up, :resume] do
    info "Creating Test.txt"
    run_remote "mysql -ucraftbox_user -pcraftbox_pass craftbox < /vagrant/database.sql"
  end
  config.trigger.before [:halt, :destroy] do
    info "Backing-up Database"
    run_remote "mysqldump --add-drop-database -ucraftbox_user -pcraftbox_pass craftbox > /vagrant/database.sql"
  end
end
