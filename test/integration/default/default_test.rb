# Cinc Auditor test for recipe cinc-cookbook-apple-silicon::default

# Cinc Auditor is compatible with Chef Inspec profiles
# The Chef InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/


# Check port 80 is listening
describe port(80) do
  it { should be_listening }
end

# Check we get the expected index.html
describe http('http://localhost') do
  its('body') {should match /Hello from Cinc and Apple Silicon/}
end