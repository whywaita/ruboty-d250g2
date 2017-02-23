module Ruboty::Web
  def call(env)
    [200, {'Content-type' => 'text/html'}, ['hello, sekimiyas']]
  end
end
Ruboty::Robot.include(Ruboty::Web)

Thread.new do
  robot.run
end

run rubot
