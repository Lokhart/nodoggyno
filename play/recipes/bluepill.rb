Chef::Log.info("foooooooooooooooooooooo")
Chef::Log.info(">>>>> #{node[:deployed_to_path]} <<<<<")
Chef::Log.info(">>>>> #{node[:environment_variables]} <<<<<")
 
execute 'bluepill' do
cwd "#{node[:deployed_to_path]}/current"
command 'bundle exec bluepill --no-privileged load config/bluepill.pill'
user 'deploy'
group 'nginx'
end
