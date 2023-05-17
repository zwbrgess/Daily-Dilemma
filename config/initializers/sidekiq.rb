require 'sidekiq'
require 'sidekiq-scheduler'

# this allows us to utilize the sidekiq scheduler
Sidekiq.configure_server do |config|
  config.on(:startup) do
    Sidekiq.schedule = YAML.load_file(File.expand_path("../../scheduler.yml",__FILE__))
    Sidekiq::Scheduler.reload_schedule!
  end
end