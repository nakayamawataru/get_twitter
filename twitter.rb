require 'twitter'
require "google_drive"

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "Uv8A7lCRpetbJgRJ1OIET5la8" # ①
  config.consumer_secret     = "qn7TPsIesZxtLBUrlCjtMS9ZBcy1wHXXDvZDG2GLmJEbRglWKz" # ①
  config.access_token        = "1181593614557667329-1NNYtnNHcqsCrU4smXUlky0da8tUjl" # ①
  config.access_token_secret = "ZdCSMYjCSDA4XHv9SMSKvi71Czp389v7CUjMV04ogDy8y" # ①
end

acounts = ["LimJapan", "banana_planet11", "banana_planet11", "takezoudakedo", "Ds19910505", "Shamon01p", "pprras1", "chikokona", "shop_recomend"]
account = "LimJapan"
account2 = "banana_planet11"
account3 = "takezoudakedo"
account4 = "Ds19910505"
account5 = "Shamon01p"
account6 = "pprras1"
account7 = "chikokona"
account8 = "shop_recomend"
=begin
acounts.each do |acount|
  session = GoogleDrive::Session.from_config("config.json")
  sheets = session.spreadsheet_by_key("1Kf1K1egccdQHUft8S13WLrSsl2C_lEAK6HNKA8VdDZQ").worksheet_by_title(account)
  
  created_line = 2
  text_line = 3
  border_line = 4
  
  client.user_timeline(account, { count: 100 } ).each do |timeline|
    tweet = client.status(timeline.id)

    sheets[created_line, 2] = tweet.created_at
    sheets[text_line, 2] = tweet.text
    sheets[border_line, 2] = "---------------------"

    created_line += 3
    text_line += 3
    border_line += 3
    
  end
  sheets.save
  #タイムアウトしちゃう
end

=end
session = GoogleDrive::Session.from_config("config.json")
sheets = session.spreadsheet_by_key("1Kf1K1egccdQHUft8S13WLrSsl2C_lEAK6HNKA8VdDZQ").worksheet_by_title(account)

created_line = 2
text_line = 3
border_line = 4

client.user_timeline(account, { count: 100 } ).each do |timeline|
tweet = client.status(timeline.id)
#p "----------------"
#puts tweet.created_at
#puts tweet.text
#end
sheets[created_line, 2] = tweet.created_at
sheets[text_line, 2] = tweet.text
sheets[border_line, 2] = "---------------------"
created_line += 3
text_line += 3
border_line += 3

end
sheets.save



#restfullにする必要あり
#account2



sheets = session.spreadsheet_by_key("1Kf1K1egccdQHUft8S13WLrSsl2C_lEAK6HNKA8VdDZQ").worksheet_by_title(account2)

created_line = 1
text_line = 2
border_line =3

client.user_timeline(account2, { count: 100 } ).each do |timeline|
tweet = client.status(timeline.id)
sheets[created_line, 2] = tweet.created_at
sheets[text_line, 2] = tweet.text
sheets[border_line, 2] = "---------------------"
created_line += 3
text_line += 3
border_line += 3

end
sheets.save

#account3
sheets = session.spreadsheet_by_key("1Kf1K1egccdQHUft8S13WLrSsl2C_lEAK6HNKA8VdDZQ").worksheet_by_title(account3)

created_line = 1
text_line = 2
border_line =3

client.user_timeline(account3, { count: 100 } ).each do |timeline|
tweet = client.status(timeline.id)
sheets[created_line, 2] = tweet.created_at
sheets[text_line, 2] = tweet.text
sheets[border_line, 2] = "---------------------"
created_line += 3
text_line += 3
border_line += 3

end
sheets.save

#account4
=begin
sheets = session.spreadsheet_by_key("1Kf1K1egccdQHUft8S13WLrSsl2C_lEAK6HNKA8VdDZQ").worksheet_by_title(account4)

created_line = 1
text_line = 2
border_line =3

client.user_timeline(account4, { count: 100 } ).each do |timeline|
    tweet = client.status(timeline.id)
    sheets[created_line, 2] = tweet.created_at
    sheets[text_line, 2] = tweet.text
    sheets[border_line, 2] = "---------------------"
    created_line += 3
    text_line += 3
    border_line += 3

end
sheets.save
=end
  #account5
  sheets = session.spreadsheet_by_key("1Kf1K1egccdQHUft8S13WLrSsl2C_lEAK6HNKA8VdDZQ").worksheet_by_title(account5)
  
  created_line = 1
  text_line = 2
  border_line =3

  client.user_timeline(account5, { count: 100 } ).each do |timeline|
    tweet = client.status(timeline.id)
    sheets[created_line, 2] = tweet.created_at
    sheets[text_line, 2] = tweet.text
    sheets[border_line, 2] = "---------------------"
    created_line += 3
    text_line += 3
    border_line += 3

  end
  sheets.save

  #account6
  sheets = session.spreadsheet_by_key("1Kf1K1egccdQHUft8S13WLrSsl2C_lEAK6HNKA8VdDZQ").worksheet_by_title(account6)
  
  created_line = 1
  text_line = 2
  border_line =3

  client.user_timeline(account6, { count: 100 } ).each do |timeline|
    tweet = client.status(timeline.id)
    sheets[created_line, 2] = tweet.created_at
    sheets[text_line, 2] = tweet.text
    sheets[border_line, 2] = "---------------------"
    created_line += 3
    text_line += 3
    border_line += 3

  end
  sheets.save

  #account7
  sheets = session.spreadsheet_by_key("1Kf1K1egccdQHUft8S13WLrSsl2C_lEAK6HNKA8VdDZQ").worksheet_by_title(account7)
  
  created_line = 1
  text_line = 2
  border_line =3

  client.user_timeline(account7, { count: 100 } ).each do |timeline|
    tweet = client.status(timeline.id)
    sheets[created_line, 2] = tweet.created_at
    sheets[text_line, 2] = tweet.text
    sheets[border_line, 2] = "---------------------"
    created_line += 3
    text_line += 3
    border_line += 3

  end
  sheets.save

  #account8
  sheets = session.spreadsheet_by_key("1Kf1K1egccdQHUft8S13WLrSsl2C_lEAK6HNKA8VdDZQ").worksheet_by_title(account8)
  
  created_line = 1
  text_line = 2
  border_line =3

  client.user_timeline(account8, { count: 100 } ).each do |timeline|
    tweet = client.status(timeline.id)
    sheets[created_line, 2] = tweet.created_at
    sheets[text_line, 2] = tweet.text
    sheets[border_line, 2] = "---------------------"
    created_line += 3
    text_line += 3
    border_line += 3

  end
  sheets.save