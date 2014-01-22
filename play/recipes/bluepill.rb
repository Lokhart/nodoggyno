node[:deploy].each do |application, deploy|
    Chef::Log.info(">>>>>>>>>>>>>>>>>>>>>>> #{deploy[:deploy_to]}")
    owner deploy[:user]
    group deploy[:group]
    cwd "#{node[:deployed_to_path]}/current"
    command 'bundle exec bluepill --no-privileged load config/bluepill.pill'
end

