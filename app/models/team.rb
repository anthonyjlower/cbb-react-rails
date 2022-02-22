class Team < ActiveRecord::Base
  self.abstract_class

  class << self
    include TeamDictionary

    def all
      TEAMS
    end

    def find_by(key, value)
      sym_key = key.to_sym
      str_value = value.to_s

      all.find { |team| team[sym_key] == str_value }
    end

    def build
      TeamBuilder.new.build
    end
  end
end
