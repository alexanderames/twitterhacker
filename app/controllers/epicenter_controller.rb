class EpicenterController < ApplicationController
  def feed
  	#initialize array that holds tweets from current_user follow list
  	@following_tweets = []

  	#iterate thru and find associated user tweets in array
  	Tweet.all.each do |tweet|
  		if current_user.following.include?(tweet.user_id)
  			@following_tweets.push(tweet)
  			#tweets pushed into array to power view
  		end
  	end
  end

  def show_user
  	@user = User.find(params[:id])
  end

  def now_following
  	#displaying purposes
  	@user = User.find(params[:follow_id])

  	current_user.following.push(params[:follow_id].to_i)
  	#adds user.id of User you want to follow to 'following' array attribute

  	current_user.save
  	#save to db
  end

  def unfollow
  end
end
