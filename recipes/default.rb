ohai 'reload_network' do
  plugin 'proxmox'
  action :nothing
end

cookbook_file "proxmox.rb" do
  path "#{node['ohai']['plugin_path']}/proxmox.rb"
  owner  'root'
  group  node['root_group']
  mode   '0755'
  notifies :reload, 'ohai[reload_network]', :immediately
end

include_recipe 'ohai::default'
