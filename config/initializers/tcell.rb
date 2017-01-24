if defined?(TCellAgent)
  TCellAgent.configure do |config|
    config.logging_options = {"enabled" => true, "level" => "DEBUG"}
    #config.logger = Logger.new(STDOUT)
    #config.logger.level = 0
  end
end
