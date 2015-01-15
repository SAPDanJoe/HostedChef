package "git" do
  action :install
end

file "/home/chef/.gitconfig" do
  action :create
  content "[user]\n name=Dan-Joe Lopez\n email=Dan-Joe.Lopez@sap.com\n"
  mode "0644"
  owner "chef"
  group "chef"
end
