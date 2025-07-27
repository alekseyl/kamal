class Kamal::Commands::Registry < Kamal::Commands::Base
  def login(registry_config: nil)
    registry_config ||= config.registry

    # cr.yandex registry will be configred manually, via YC, so no login will be needed
    # docker :login,
    #   registry_config.server,
    #   "-u", sensitive(Kamal::Utils.escape_shell_value(registry_config.username)),
    #   "-p", sensitive(Kamal::Utils.escape_shell_value(registry_config.password))
  end

  def logout(registry_config: nil)
    registry_config ||= config.registry
      
    # same here
    # docker :logout, registry_config.server
  end
end
