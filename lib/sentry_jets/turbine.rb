require 'sentry-ruby'

module SentryJets
  class Turbine < ::Jets::Turbine
    initializer 'sentry.configure' do
      Sentry.init do |config|
        config.dsn = ENV['SENTRY_DSN']
        config.environment = ENV['SENTRY_CURRENT_ENV'] || Jets.env.to_s
        config.traces_sample_rate = ENV['SENTRY_TRACE_SAMPLE_RATE'].to_f || 0.0
      end
    end

    on_exception 'sentry.capture' do |exception|
      Sentry.capture_exception(exception)
    end
  end
end
