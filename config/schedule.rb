every 1.day do
  rake 'mastodon:media:clear'
  rake 'mastodon:push:refresh'
  rake 'mastodon:feeds:clear'
end
