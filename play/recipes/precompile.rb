execute 'rake assets:precompile' do
  cwd "/srv/www/ancl_ruby-1/current"
  user 'deploy'
  group 'www-data'
  command 'bundle exec rake assets:precompile'
  environment 'RAILS_ENV' => 'development'
end
