if defined?(TCellAgent)
  TCellAgent.configure do |config|
    config.logger = Logger.new(STDOUT)
    config.logger.level = 5
  end
end
