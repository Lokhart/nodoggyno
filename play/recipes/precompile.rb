execute 'rake assets:precompile' do
  cwd "/srv/www/sample/current"
  user 'deploy'
  group 'nginx'
  command 'bundle exec rake assets:precompile'
  environment 'RAILS_ENV' => 'development'
end
