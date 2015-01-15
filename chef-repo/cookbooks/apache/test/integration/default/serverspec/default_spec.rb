require 'serverspec'

set :backend, :exec

describe 'apache' do

	it "is awesome" do
		expect(true).to eq true
	end

	it "is installed" do
		expect(package "httpd").to be_installed
	end

	it "is running" do
			expect(service "httpd").to be_running
	end

	it "is enabled" do
		expect(service "httpd").to be_enabled
	end

	it "is listening on the proper port" do
		expect(port 82 ).to be_listening
	end

	it "has our custom homepage" do
		expect(file '/var/www/html/index.html').to contain("Hello")
	end

	it "returns a homepage with the correct platform" do
		expect(command("curl http://localhost:82/").stdout).to match("centos")
	end
	it "returns a homepage with the correct version" do
		expect(command("curl http://localhost:82/").stdout).to match("6.6")
	end
	it "returns a homepage with the correct greeting" do
		expect(command("curl http://localhost:82/").stdout).to match("greeting")
	end

end
