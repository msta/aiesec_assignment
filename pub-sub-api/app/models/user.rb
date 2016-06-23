class User < ActiveRecord::Base

  has_many :subscriptions
  has_many :notes

  def subscribe(topic)
    @subscriptions = self.subscriptions.to_a.map { |s| s.topic }

    if @subscriptions.member? topic
      return false
    else
      @b = Subscription.create(user_id: self.id, topic: topic)
      return true
    end
  end

  def unsubscribe(topic)
    self.subscriptions.where(topic: topic).destroy_all.count > 0
  end

  def post(post_params)
    @post = Post.new(post_params)

    @post.save ? @post.id : 0
  end

  def my_notes
    @notes = self.notes.where("times_viewed < 5")

    #Update times_viewed
    @notes.each { |n| n.times_viewed = n.times_viewed + 1; n.save }
    @subscriber_notes = @notes.map { |n| n.post }

    @subscriber_notes
  end

  def self.NotifyFollowers(post)
      Subscription.where(topic: post.topic).each do |s|
        Note.create(post_id: post.id, user_id: s.user_id )
      end
  end
end
