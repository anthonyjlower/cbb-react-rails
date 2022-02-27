module OddsCalculator

  class << self
    # percent_success should be in XX.YY format
    def calc_breakeven(percent_success)
      return if percent_success.nil?
      percent_fail = 1.0 - percent_success
      raw_odds = ((-0.05 + percent_fail) / percent_success) * 100
      raw_odds >= 100 ? raw_odds&.round(1) : convert_negative(raw_odds)&.round(1)
    end

    private

    def convert_negative(val)
      -200 + val
    end
  end
end
