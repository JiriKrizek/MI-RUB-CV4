require 'gserver'


class MyServer < GServer
  def initialize(port=3333, *args)
    super(port, *args)
  end

  def serve(io)
    #io.puts(Time.now.to_s)
    File.open("c:/DebugTraceAP.log", "r") do |f|
      while (line = f.gets)
        io.puts "#{line}"
      end
    end
  end
end

server = MyServer.new
server.audit = true
server.start.join

server.shutdown