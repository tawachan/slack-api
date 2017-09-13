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
  if data.channel == "C726NA6M9"
    text = data.text
    if text.include?('くりえいてぃぶ') || text.include?('クリエイティブ')
      client.message channel: data.channel, text: "...く、くりえいてぃぶの予感...?"
    end
    if text.include?(':fastparrot:')
      client.message channel: data.channel, text: "クリエイティブが加速する(　･ิω･ิ)"
    end
  end
  puts data
end

client.start!

