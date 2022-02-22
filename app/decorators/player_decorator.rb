class PlayerDecorator
  NON_PERIMITER_POSITIONS = %w(PF C PF/C).freeze

  def initialize(player:)
    @player = player.with_indifferent_access
  end

  def id
    name
  end

  def name
    @player[:name]
  end

  def rank
    @rank ||= @player[:draft_rank]
  end

  def position
    @position ||= @player[:position]
  end

  def is_perimiter?
    NON_PERIMITER_POSITIONS.exclude?(position)
  end

  def grade
    @player[:grade]
  end

  def is_first_round?
    rank.to_i <= 30
  end
end
