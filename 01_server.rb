require 'gserver'


class MyServer < GServer
  def initialize(port=3333, *args)
    super(port, *args)
  end

  def serve(io)
    begin
      File.open("c:/DebugTraceAP.log", "r") do |f|
        #log.seek(10, IO::SEEK_END)
        while (line = f.gets)
          io.puts "#{line}"
        end
      end
    rescue Exception=>e
      return e.to_s
    end
  end
end

server = MyServer.new
server.audit = true
server.start.join

server.shutdown