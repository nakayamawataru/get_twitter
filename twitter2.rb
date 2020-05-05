#ツイートのtextが完全一致している物を弾く処理
#textに微妙な差異があったため弾けなかった・・・。

require 'twitter'
require "google_drive"

client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "Uv8A7lCRpetbJgRJ1OIET5la8"
    config.consumer_secret     = "qn7TPsIesZxtLBUrlCjtMS9ZBcy1wHXXDvZDG2GLmJEbRglWKz"
    config.access_token        = "1181593614557667329-1NNYtnNHcqsCrU4smXUlky0da8tUjl"
    config.access_token_secret = "ZdCSMYjCSDA4XHv9SMSKvi71Czp389v7CUjMV04ogDy8y"
  end

account = "banana_planet11"
tweets = client.user_timeline(account, { count: 100 } )
array = []
tweets.each do |timeline|
    tweet = client.status(timeline.id)
    text = tweet.text
    array.push(text)
    end

tweets = array.uniq
p tweets.length