class SendTweet
    
  def initialize(tweet)
    @tweet = tweet
  end

  def log_in_to_twitter
 @client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "bRbX5YWhuuXp8gSzqDr21kOC9"
  config.consumer_secret     = "YhWDfDZ8PvfZzWLk84wI22Xja9UASygVrIhvFPbhjiAVbFjgwk"
  config.access_token        = 	"918065144835596289-ZlxEGZUSdGFeQOxtULLQ9badrC9apiD"
  config.access_token_secret = 	"isJ1rLi5pDMfOuokymKVYU58M4bJsVvp3fSsNvOvjjI0B"

  end
end 

  def send_tweet
    @client.update(@tweet)
  end

  def perform
    log_in_to_twitter
    send_tweet
  end
end
     
