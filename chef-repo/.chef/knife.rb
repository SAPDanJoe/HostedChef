# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "pezius"
client_key               "#{current_dir}/pezius.pem"
validation_client_name   "sapcheftraining-validator"
validation_key           "#{current_dir}/sapcheftraining-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/sapcheftraining"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
