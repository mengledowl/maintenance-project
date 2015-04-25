# -*- mode: ruby -*-
# vi: set ft=ruby :
 
Vagrant.configure("2") do |config|
 
  config.vm.box = "chef/ubuntu-14.04"
  config.ssh.forward_agent = true
  config.omnibus.chef_version = :latest
  config.vm.network :forwarded_port, guest: 3000, host: 3000
 
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks", "site-cookbooks"]
    chef.add_recipe :apt
    chef.add_recipe 'ruby_build'
    chef.add_recipe 'rbenv::user'
    chef.add_recipe 'git'
    chef.add_recipe 'redis'
    chef.add_recipe 'postgresql::server'
    chef.add_recipe 'vim'
    chef.add_recipe 'nodejs'
    chef.json = {
      :rbenv      => {
        :user_installs => [
          {
            :user   => "vagrant",
            :rubies => [
              "2.2.1"
            ],
            :global => "2.2.1"
          }
        ]
      },
      :git        => {
        :prefix => "/usr/local"
      },
      :redis      => {
        :bind        => "127.0.0.1",
        :port        => "6379",
        :config_path => "/etc/redis/redis.conf",
        :daemonize   => "yes",
        :timeout     => "300",
        :loglevel    => "notice"
      },
      :postgresql => {
        :users => [
          {
            :username => "user",
            :password => "password",
            :superuser => true,
            :createdb => true,
            :login => true
          },
          {
          	:username => "vagrant",
          	:password => "password",
          	:superuser => true,
          	:createdb => true,
          	:login => true
          }
        ],
        :pg_hba   => [
          {
            :type   => "local",
            :db     => "postgres",
            :user   => "postgres",
            :addr   => "",
            :method => "trust"
          },
          {
            :type   => "host",
            :db     => "all",
            :user   => "all",
            :addr   => "0.0.0.0/0",
            :method => "md5"
          },
          {
            :type   => "host",
            :db     => "all",
            :user   => "all",
            :addr   => "::1/0",
            :method => "md5"
          },
          {
            :type   => "local",
            :db     => "all",
            :user   => "devuser",
            :addr   => "",
            :method => "md5"
          }
        ],
        :password => {
          :postgres => "password"
        }
      },
      :vim        => {
        :extra_packages => [
          "vim-rails"
        ]
      }
    }
  end
 
  config.vm.provision 'shell', path: 'vagrant/provision.sh', privileged: false
end
