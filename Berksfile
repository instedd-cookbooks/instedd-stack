source "https://supermarket.getchef.com"

cookbook "mysql", github: "jedateach/mysql", branch: "patches/amazon-2014.09"
cookbook "postfix"
cookbook "bag_config"
cookbook "ssl"
cookbook "chef-solo-search"
cookbook "newrelic"

cookbook "instedd-common", github: "instedd-cookbooks/instedd-common"
cookbook "verboice", github: "instedd-cookbooks/verboice"
cookbook "nuntium", github: "instedd-cookbooks/nuntium"
cookbook "openswan", github: "instedd-cookbooks/openswan"

Dir["site-cookbooks/*"].each do |dir|
  cookbook File.basename(dir), path: dir
end
