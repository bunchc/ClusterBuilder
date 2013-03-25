nodes = {
    'opencenter'  => [1, 100],
    'node'   => [1, 101],
}

Vagrant.configure("2") do |config|
    config.vm.box = "precise64"
    config.vm.box_url = "http://files.vagrantup.com/#{config.vm.box}.box"

    nodes.each do |prefix, (count, ip_start)|
        count.times do |i|
            hostname = "%s-%02d" % [prefix, (i+1)]

            config.vm.define "#{hostname}" do |box|
                box.vm.hostname = "#{hostname}.vagrant.internal"
                box.vm.network :private_network, ip: "172.16.172.#{ip_start+i}", :netmask => "255.255.255.0"
                box.vm.provision :shell, :path => "#{prefix}.sh"
                box.vm.provider :vmware_fusion do |v|
                    v.vmx["memsize"] = 1536
                end
                if prefix == 'opencenter'
                  box.vm.network :forwarded_port, guest: 443, host: 4343
                end
            end
        end
    end
end
