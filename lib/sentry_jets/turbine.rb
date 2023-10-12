require 'sentry-ruby'

module SentryJets
  class Turbine < ::Jets::Turbine
    initializer 'sentry.configure' do
      Sentry.init do |config|
        config.dsn = ENV['SENTRY_DSN']
        config.environment = ENV['SENTRY_CURRENT_ENV'] || Jets.env.to_s
      end
    end

    on_exception 'sentry.capture' do |exception|
      Sentry.capture_exception(exception)
    end
  end
end
