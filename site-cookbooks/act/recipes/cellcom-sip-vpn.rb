include_recipe "openswan"

# ipsec_tunnel "act" do
#   leftsubnet "192.168.0.0/24"
#   leftid "54.163.246.206"
#   right "41.191.105.4"
#   rightsubnet "192.168.13.147/32"
#   ike "aes256-sha1;modp1024"
#   ikelifetime "14400s"
#   phase2alg "aes128-sha1;modp1024"
#   salifetime "1800s"
#   secret "Com!@18"
# end

vpn_params = Chef::EncryptedDataBagItem.load("ipsec", "cellcom-sip")

ipsec_tunnel "cellcom-sip" do
  settings({
    left: '%defaultroute',
    leftsubnet: "#{node['ipaddress']}/32",
    leftid: vpn_params['leftid'],
    right: vpn_params['right'],
    rightsubnets: vpn_params['rightsubnets'],
    keyexchange: :ike,
    auth: :esp,
    auto: :start,
    authby: :secret,
    pfs: :no,
    forceencaps: :yes,
    aggrmode: :no,
    ike: 'aes256-sha1;modp1024',
    ikelifetime: '14400s',
    phase2alg: 'aes128-sha1;modp1024',
    salifetime: '1800s'
  })
  secret vpn_params['secret'] #
end
