require 'sentry-raven'

module SentryJets
  class Turbine < ::Jets::Turbine
    initializer 'sentry.configure' do
      Raven.configure do |config|
        config.dsn = ENV['SENTRY_DSN']
      end
    end

    exception_reporter 'sentry.capture' do |exception|
      Raven.capture_exception(exception)
    end
  end
end