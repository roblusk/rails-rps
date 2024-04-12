class ZebraController < ApplicationController
    OUTCOMES = {
    'rock' => {'rock' => 'tied', 'paper' => 'lost', 'scissors' => 'won'},
    'paper' => {'rock' => 'won', 'paper' => 'tied', 'scissors' => 'lost'},
    'scissors' => {'rock' => 'lost', 'paper' => 'won', 'scissors' => 'tied'}
  }
  
  def rules
  end
  
  def giraffe
    @user_move = params.fetch("move")
    @random_move = ["rock", "paper", "scissors"].sample
    @outcome = OUTCOMES.fetch(@user_move).fetch(@random_move)
    render({ :template => "game_templates/play_rps"})
  end

  def rules
    render({ :template => "game_templates/rules"})
  end

end
