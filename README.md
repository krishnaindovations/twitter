# README

This App has following features in it

* User signup and login using Devise.
* User can tweet.
* User can view tweets from his followings.
* User can follow another user.
* user can unfollow


This App provides API facility to do the following

1. User tweets ( tweets from following users )
		curl http://localhost:3000/users/:id/tweets
		```curl http://localhost:3000/users/2/tweets```

		{
		  "tweets": [
		    {
		      "content": "My first tweet",
		      "author": {
		        "email": "hari@email.com",
		        "id": 1
		      }
		    },
		    {
		      "content": "Test tweet",
		      "author": {
		        "email": "hari@email.com",
		        "id": 1
		      }
		    },
		    {
		      "content": "Hello",
		      "author": {
		        "email": "hari@email.com",
		        "id": 1
		      }
		    },
		    {
		      "content": "Hello i'm tweeting",
		      "author": {
		        "email": "hari@email.com",
		        "id": 1
		      }
		    }
		  ]
		}

2. user details
	curl http://localhost:3000/users/id.json
	```curl http://localhost:3000/users/1.json```

	{
	  "user": {
	    "id": 1,
	    "email": "hari@email.com",
	    "followers": [
	      {
	        "id": 2,
	        "email": "test@test.com"
	      }
	    ],
	    "following": [
	      {
	        "id": 2,
	        "email": "test@test.com"
	      }
	    ]
	  }
	}

3. FOllow a user
  curl http://localhost:3000/users/:id/follow/:following_id
	curl http://localhost:3000/users/1/follow/2
	{"message":"you are following now !"}

4. unfollow User
	curl http://localhost:3000/users/:id/unfollow/:following_id
	curl http://localhost:3000/users/1/unfollow/2

	{"message":"successfully unfollwed !"}


5. If Already following
	curl http://localhost:3000/users/:id/follow/:following_id
	curl http://localhost:3000/users/1/follow/2

	{"message":"Already following that user !"}
