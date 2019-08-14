# Test docker
describe service('jenkins') do
    it { should be_enabled }
    it { should be_running }
end

describe port(8080) do
  it { should be_listening }
end

describe 'jenkins user' do
  describe user('jenkins') do
    it { should exist }
  end
end
