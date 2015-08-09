require_relative 'resource_systemd_conf'
require_relative 'systemd_logind'

class Chef::Resource
  class SystemdLogind < Chef::Resource::SystemdConf
    self.resource_name = :systemd_logind
    provides :systemd_logind

    def conf_type(_ = nil)
      :logind
    end

    def label(_ = nil)
      'Login'
    end

    option_attributes Systemd::Logind::OPTIONS
  end
end
