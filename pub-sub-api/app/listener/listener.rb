class Listener
  def post_created(post)
    User.NotifyFollowers(post)
  end
end
