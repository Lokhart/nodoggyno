node[:deploy].each do |application, deploy|
    Chef::Log.info(">>>>>>>>>>>>>>>>>>>>>>> #{deploy[:deploy_to]}")
    owner 'root'
    group 'root'
    command 'bundle exec bluepill --no-privileged load config/bluepill.pill'
    cwd "#{node[:deployed_to_path]}/current"
end

