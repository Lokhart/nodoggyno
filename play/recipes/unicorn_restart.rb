# stop Unicorn service per app
node[:deploy].each do |application, deploy|
  if deploy[:application_type] != 'rails'
    Chef::Log.debug("Skipping unicorn::rails application #{application} as it is not an Rails app")
    next
  end

  execute "Restart unicorn" do
    command "#{deploy[:deploy_to]}/shared/scripts/unicorn restart"
    only_if do
      File.exists?("#{deploy[:deploy_to]}/shared/scripts/unicorn")
    end
  end
end
