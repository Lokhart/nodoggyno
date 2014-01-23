execute 'whoami' do
  user 'deploy'
  group 'nginx'
  environment ({'HOME' => '/home/deploy'})
  command "whoami > /tmp/x; id >> /tmp/x"
end
