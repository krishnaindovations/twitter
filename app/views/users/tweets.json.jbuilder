json.tweets do
  json.array! @tweets do |tweet|
    json.content tweet.content
    json.author do
      json.email tweet.user.email
      json.id tweet.user.id
    end
  end
end