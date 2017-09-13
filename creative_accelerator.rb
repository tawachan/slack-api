require "slack"

token = ENV['token']
puts token
icon = 'https://appstickers-cdn.appadvice.com/1158454115/819397787/4534b0f0c56c20c70a08a4f81acc1153-3.gif';
name = 'くりえいてぃぶ担当'

Slack.configure do |config|
  config.token = token
end


text = case Time.now.hour
when  9 then  '9時: もう教室に来てるかな？今日もクリエイティブが加速するぜい・ω・'
when 10 then '10時: さすがにもう来たよね？'
when 12 then '12時: ++ ランチタイム ++ ツナ缶は持った？'
when 15 then '15時: クリエイティブはまだまだこれから'
when 17 then '17時: ∠(｀・ω・´)'
when 19 then '19時: 時期尚早なパンプキン(´・ω・｀)'
when 21 then '21時: まだ行ける！まだまだクリエイティブが加速する！'
when 22 then '22時: 冷静に帰ろ(´・ω・｀)'
else '特になし'
end

puts Slack.chat_postMessage(text: text, channel: 'parrots', icon_url: icon, username: name)
