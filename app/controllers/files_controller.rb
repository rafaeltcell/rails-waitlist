class FilesController < ApplicationController
  skip_before_action :authenticate_user!

  #include ActionController::Live

  #def stream
    #response.headers['Content-Type'] = 'text/event-stream'
    #10.times {
      #response.stream.write "<p>#{Time.now}</p>"
      #sleep 1
    #}
  #ensure
    #response.stream.close
  #end

  def big_transfer
    respond_to do |format|
      format.html {
        headers["X-Accel-Buffering"] = "no"
        headers["Cache-Control"] = "no-cache"
        render stream: true
      }
      format.text { render stream: true }
      format.csv {
        headers["X-Accel-Buffering"] = "no"
        headers["Cache-Control"] = "no-cache"
        headers["Content-Type"] = "text/csv; charset=utf-8"
        self.response_body = Enumerator.new do |lines|
          sleep 5
          10.times do |x|
            lines << (1..10).to_a.shuffle.join(",")
          end
        end
      }
    end
  ensure
    response.stream.close
  end

  def big_transfer_file
    send_file 'app/views/files/huge_file.csv', :type => 'text/csv; charset=utf-8'
  end

  def tiny_transfer_file
    send_file 'app/views/files/tiny_file.csv', :type => 'text/csv; charset=utf-8'
  end
end
