source "https://supermarket.getchef.com"

cookbook "mysql", github: "jedateach/mysql", branch: "patches/amazon-2014.09"
cookbook "postfix"
cookbook "bag_config"

Dir["site-cookbooks/*"].each do |dir|
  cookbook File.basename(dir), path: dir
end
