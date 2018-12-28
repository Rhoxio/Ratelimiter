require 'redis'
require 'redis-namespace'

class Ratelimiter

  def intialize(opts = {}, &block)
    @name = opts[:name]
    @base_redis = opts[:redis]
    @expires_at = opts[:expires_at]
    @created_at = Time.now
  end

  private

  def redis
    @base_redis ||= Redis::Namespace.new(:ratelimits, redis: @base_redis || Redis.new)
  end

end