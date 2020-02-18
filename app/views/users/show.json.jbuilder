json.user do
  json.id @user.id
  json.email @user.email
  json.followers @user.followers.count
  json.following @user.following.count
  json.followers @user.followers do |follower|
    json.id follower.id
    json.email follower.email
  end
  json.following @user.following do |following|
    json.id following.id
    json.email following.email
  end
end
