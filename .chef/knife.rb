cookbook_path    ["cookbooks", "site-cookbooks"]
node_path        "nodes"
role_path        "roles"
environment_path "environments"
data_bag_path    "data_bags"
encrypted_data_bag_secret File.expand_path('../../.instedd_secret_key', __FILE__)

knife[:berkshelf_path] = "cookbooks"
