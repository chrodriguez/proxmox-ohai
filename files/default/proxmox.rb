# borrowed from vagarnt ohai plugin
#
Ohai.plugin(:Proxmox) do
  provides "proxmox"
  provides "ipaddress"

  depends "virtualization"
  depends "network"

  collect_data do
    proxmox Mash.new
    if virtualization["system"] == "openvz"
      if network["interfaces"]["venet0:0"]
        network["interfaces"]["venet0:0"]["addresses"].each do |ip, params|
          if params['family'] == ('inet')
            Ohai::Log.info "Updating node ipaddress: #{ip}"
            proxmox[:ipaddress] = ip
            ipaddress ip
          end
        end
      end
    end
  end
end
