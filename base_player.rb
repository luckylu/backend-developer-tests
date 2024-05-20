class BasePlayer
  attr_accessor :game, :name, :first_move

  def initialize(game:, name:)
    @game = game
    @name = name
    @first_move = true
  end

  def next_point(time:)
    raise "Not implemented"
  end
end
