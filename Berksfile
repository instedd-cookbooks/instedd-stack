source "https://supermarket.getchef.com"

cookbook "mysql", github: "jedateach/mysql", branch: "patches/amazon-2014.09"
cookbook "postfix"
cookbook "bag_config"
cookbook "ssl"
cookbook "chef-solo-search"
cookbook "newrelic"
cookbook "java"
cookbook "elasticsearch"

cookbook "instedd-common", github: "instedd-cookbooks/instedd-common"
cookbook "verboice", github: "instedd-cookbooks/verboice", branch: "experimental/asterisk-13"
cookbook "poirot", github: "instedd-cookbooks/poirot", branch: "provision"
cookbook "nuntium", github: "instedd-cookbooks/nuntium"
cookbook "resourcemap", github: "instedd-cookbooks/resourcemap"
cookbook "openswan", github: "instedd-cookbooks/openswan"

Dir["site-cookbooks/*"].each do |dir|
  cookbook File.basename(dir), path: dir
end
