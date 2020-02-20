User.create!([
  {email: "test1@email.com", encrypted_password: "$2a$11$eI0JH7j7XNoRMKNn0GjWlOWhgxK/T8E0Lvzbl3rWN/9KjZn4x5zse", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil},
  {email: "test2@email.com", encrypted_password: "$2a$11$5r2jsiDHNWV/zbkIHCvtAenY2IBVtV6kwTsO5Q3mYlwKyCVDrZPBK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil}
])
Tweet.create!([
  {content: "FIrst tweet", user_id: 1},
  {content: "Tweeting to test", user_id: 1},
  {content: "Tweeting by test 2", user_id: 2}
])
Relationship.create!([
  {follower_id: 2, followed_id: 1},
  {follower_id: 1, followed_id: 2}
])
