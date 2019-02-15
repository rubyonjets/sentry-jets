require 'sentry-raven'

module SentryJets
  class Turbine < ::Jets::Turbine
    initializer 'sentry.configure' do
      Raven.configure do |config|
        config.dsn = ENV['SENTRY_DSN']
        config.current_environment = ENV['SENTRY_CURRENT_ENV'] || Jets.env.to_s
      end
    end

    on_exception 'sentry.capture' do |exception|
      Raven.capture_exception(exception)
    end
  end
end