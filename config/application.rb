# frozen_string_literal: true

require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_mailbox/engine'
require 'action_text/engine'
require 'action_view/railtie'
require 'action_cable/engine'
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module App
  class Application < Rails::Application
    config.load_defaults 7.0

    logger           = ActiveSupport::Logger.new($stdout)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)

    config.cache_store = :redis_cache_store, {
      url: ENV.fetch('REDIS_URL', 'redis://redis:6379/1'),
      namespace: 'cache'
    }

    config.generators.system_tests = nil
    config.generators do |g|
      g.assets false
      g.skip_routes true
      g.test_framework false
    end

    config.time_zone = 'Tokyo'
  end
end
