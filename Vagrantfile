# -*- mode: ruby -*-
# vi: set ft=ruby :

REQUIRED_PLUGINS = %w(vagrant-libvirt)
exit unless REQUIRED_PLUGINS.all? do |plugin|
  Vagrant.has_plugin?(plugin) || (
    puts "The #{plugin} plugin is required. Please install it with:"
    puts "$ vagrant plugin install #{plugin}"
    false
  )
end

Vagrant.configure("2") do |config|
  config.vm.box = "archlinux/archlinux"
  config.vm.box_version = "20231015.185166"

  config.vm.provider :libvirt do |domain|
    # Define CPU and Memomry
    domain.cpus = 8
    domain.memory = 4096

    # Add cdrom and boot on it
    # domain.storage :file, :device => :cdrom, :path => Dir.pwd + "/archlinux-x86_64.iso"
    # domain.boot "cdrom"
    # domain.boot "hd"

    # Define disk bus as scsi
    domain.disk_bus = "scsi"
    # Resize disk to 50Gb
    domain.machine_virtual_size = 50
  end
end