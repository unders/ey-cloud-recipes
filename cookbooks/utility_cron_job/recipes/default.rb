#
# Cookbook Name:: utility_cron_job
# Recipe:: default
#
if ['util'].include?(node[:instance_role])
  cron "test to write to log" do
    minute '2'
    hour '*'
    day '*'
    month '*'
    weekday '*'
    command "cd /data/bolagsspel/current && rake cron:test RAILS_ENV=production"
  end
end
