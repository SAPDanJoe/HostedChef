require 'serverspec'

set :backend, :exec

describe 'motd' do

	it "is correct" do
		expect(file "/etc/motd").to be_file
	end

end
