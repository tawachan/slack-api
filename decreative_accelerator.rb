require "slack"

token = ENV['token']
puts token
icon = 'https://media.giphy.com/media/AORI3Pcli9JHG/giphy.gif'
name = 'でぃくりえいてぃぶ担当'

Slack.configure do |config|
  config.token = token
end


text = case Time.now.hour
when  9 then  '9時: まだまだお眠。２度寝も辞さない構え(　･ิω･ิ)'
when 10 then '10時: 圧倒的フルフレックス。出勤は午後一一択(　･ิω･ิ)'
when 12 then '12時: ++ ランチタイム ++ 出社の前にまずはランチでしょ(　･ิω･ิ)'
when 15 then '15時: おやつなくてはくりえいてぃぶなんかできねぇ(　･ิω･ิ)'
when 17 then '17時: (　･ิω･ิ)'
when 18 then '18時: ça va ? non, tu na ! (　･ิω･ิ)'
when 19 then '19時: ありがとう、僕の分も買ってきてくれたまえ(　･ิω･ิ)'
when 20 then '20時: ネタ切れ(　･ิω･ิ)'
when 21 then '21時: そろそろ店仕舞い(　･ิω･ิ)'
when 22 then '22時: 定時退社！！！(　･ิω･ิ)'
else '(　･ิω･ิ)'
end

puts Slack.chat_postMessage(text: text, channel: 'parrots', icon_url: icon, username: name)
