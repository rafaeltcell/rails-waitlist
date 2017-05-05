if defined?(TCellAgent)
  TCellAgent.configure do |config|
    config.logging_options = {"enabled" => true, "level" => "DEBUG"}
  end
end
