#coding: utf-8

require 'httparty'
require 'pp'

response = HTTParty.get('https://api.instagram.com/v1/')
puts response

class Instagram
  include HTTParty
  base_uri 'https://api.instagram.com/v1/'

  def initialize(default_params)
    self.class.default_params default_params
  end

  def media_popular
    self.class.get('/media/popular')
  end

end

instagram = Instagram.new(:client_id => '')
pp instagram.media_popular

