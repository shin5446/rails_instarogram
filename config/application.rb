require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Instarogram
  class Application < Rails::Application
   config.load_defaults 5.1
   config.time_zone = 'Tokyo'
   config.active_record.default_timezone = :local
   
    config.generators do |g|
      g.test_framework :rspec,
      fixtures: true,
      view_specs: false,
      helper_specs: false,
      routing_specs: false,
      controller_specs: false,
      request_specs: false
    g.fixture_replacement :factory_bot, dir: "spec/factories"
      # この二行の記述で自動生成しない設定を作成しています。
      g.assets false
      g.helper false
    end
  end
end
