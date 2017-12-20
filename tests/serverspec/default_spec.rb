require "spec_helper"

group_file = "/etc/group"
su_users = %w[vagrant nobody _syslogd]

case os[:family]
when "freebsd"
end

su_users.each do |user|
end
describe file(group_file) do
  its(:content) { should match(/^wheel:\*:0:root,vagrant,nobody,_syslogd$/) }
end
