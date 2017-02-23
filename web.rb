require 'webrick'

module Ruboty
  module Handlers
    class Web < Base
      Thread.new do
        WEBrick::HTTPServer.new(:DocumentRoot => "./public/", :Port => 80).start
      end
    end
  end
end
