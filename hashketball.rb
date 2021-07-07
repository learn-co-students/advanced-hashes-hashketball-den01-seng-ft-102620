# Write your code below game_hash
require 'pry'
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored (given_name)
  result_amount = 0
  game_hash.each do |location,data|
    data[:players].each do |inner_hash|
      if  inner_hash[:player_name] == given_name
         result_amount = inner_hash[:points]
      end
    end
  end
  result_amount
end

def shoe_size (given_name)
  result_amount = 0
  game_hash.each do |location,data|
    data[:players].each do |inner_hash|
      if  inner_hash[:player_name] == given_name
         result_amount = inner_hash[:shoe]
      end
    end
  end
  result_amount
end

def team_colors(team)
game_hash.each do |location, data|
  if team == data[:team_name]
    return data[:colors]
    end
  end
end

def team_names
  result = []
  game_hash.each do |location, data|
   result << data[:team_name]
  end
  result
end

def player_numbers (team)
  result = []
  game_hash.each do |location, data|
    if team == data[:team_name]
     data[:players].each do |inner_hash|
      result << inner_hash[:number]
    end
  end
  end
  result
end

def player_stats (given_name)
  game_hash.each do |location, data|
    data[:players].each do |inner_hash|
    if  inner_hash[:player_name] == given_name
      return inner_hash
    end
    end
  end
end


def big_shoe_rebounds
big_foot = 0
result = []
game_hash.each do |location, data|
  data[:players].map do |inner_hash|
    if inner_hash[:shoe] > big_foot
    big_foot = inner_hash[:shoe]
  end
#  binding.pry
  if inner_hash[:shoe] = big_foot
  result = inner_hash[:rebounds] -1
end
#data[:players].each do |inner_hash|
  # inner_hash[:shoe] = big_foot
    #binding.pry
     #return inner_hash[:rebounds]
  end
end
result
end
