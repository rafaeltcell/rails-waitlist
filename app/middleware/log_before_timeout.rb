class LogBeforeTimeout
  def initialize(app)
    @app = app
  end

  def call(env)
    path = env["PATH_INFO"]
    #puts "#{path} --- starting thread watch"
    thr = Thread.new do
      sleep(29) # set this to Unicorn timeout - 1
      unless Thread.current[:done]
        Thread.list.each do |thread|
          puts "\n"
          puts thread.backtrace
          puts "\n"
        end
        qs = env["QUERY_STRING"] and path = "#{path}?#{qs}"
        puts "#{path} I’m about to timeout bringing down my unicorn worker too :("
        Rails.logger.warn "#{path} I’m about to timeout bringing down my unicorn worker too :("
      end
    end

    resp = @app.call(env)

    thr[:done] = true
    #thr.exit
    #puts "#{path} ended thread watch ---"

    resp
  end
end
