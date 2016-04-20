# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'bento/centos-7.2'

  config.vm.define 'ticket-rails' do |server|
    server.vm.hostname = 'ticket-rails'
    server.vm.network :private_network, ip: '11.11.11.11'
  end

  config.vm.provision 'ansible_local' do |ansible|
    ansible.playbook = 'config/provision/provisioning.yml'
  end
end
