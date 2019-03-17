class Team < ApplicationRecord
    has_many :players

    def team_name
        "#{code} : #{title}"
    end
end
