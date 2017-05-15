# # encoding: utf-8

# Inspec test for recipe disable_smb1server_controlremediate::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

control "control_smb1_is_disabled" do
  title "Control 'Microsoft network server: Set SMB1' to 'Disabled'"
  desc "Disable this policy setting to prevent the very out-of-date and insecure SMB1 protocol"
  impact 1.0
  describe registry_key("HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Services\\LanmanServer\\Parameters") do
    it { should have_property "SMB1" }
  end
  describe registry_key("HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Services\\LanmanServer\\Parameters") do
    its("SMB1") { should cmp == 0 }
  end
end
