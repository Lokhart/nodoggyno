node[:deploy].each do |application, deploy|
    Chef::Log.info(">>>>>>>>>>>>>>>>>>>>>>> #{deploy[:deploy_to]}")
    command 'bundle exec bluepill --no-privileged load config/bluepill.pill'
end

