def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  new_card = rand(1..11)
  return new_card
end

def display_card_total(arg)
  # code #display_card_total here
  puts "Your cards add up to #{arg}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(arg)
  # code #end_game here
  puts "Sorry, you hit #{arg}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  hand = deal_card + deal_card
  display_card_total(hand)
  return hand
end

def hit?(hand)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == "h"
    hand += deal_card
  elsif input == "s"
    hand
  else
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
  puts "Sorry, not a valid command"
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  hand = initial_round
  until hand > 21
    hand = hit?(hand)
    display_card_total(hand)
  end
  end_game(hand)
end
