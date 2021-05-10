require 'open-uri'
require 'json'

class GamesController < ApplicationController
  def new
    @letters = []
    Array.new(9, "").each { @letters << ('A'..'Z').to_a[rand(26)] }
    return @letters
  end
  def score
    end_time = Time.now
    url = "https://wagon-dictionary.herokuapp.com/#{@attempt}"
    user_serialized = open(url).read
    @user = JSON.parse(user_serialized)
    @hash = {
      score: 0,
      message: "",
      time: (end_time)
    }
  end
end
