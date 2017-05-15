#
# Cookbook Name:: disable_smb1server_controlremediate
# Recipe:: default
#

return unless node['platform_family'] == 'windows'

# Enforce the disabling of SMB1

registry_key 'HKLM\\System\\CurrentControlSet\\Services\\LanManServer\\Parameters' do
  values [{
    name: 'SMB1',
    type: :dword,
    data: 0
  }]
  action :create_if_missing
end
