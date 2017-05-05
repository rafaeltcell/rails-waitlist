if defined?(TCellAgent)
  TCellAgent.configure do |config|
    config.logging_options = {"enabled" => true, "level" => "DEBUG"}
    config.enable_event_manager = false
  end
end
