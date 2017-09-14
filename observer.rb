Process.daemon if ARGV.any? {|i| i == '-D' }

require 'slack-ruby-client'

token = ENV['token_parrot']

Slack.configure do |config|
  config.token = token
end

Slack::RealTime::Client.config do |config|
  config.start_method = :rtm_start
end

client = Slack::RealTime::Client.new

client.on :message do |data|
  puts data
end

client.start!
