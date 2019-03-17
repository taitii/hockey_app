class Scoreboard < ApplicationRecord
    belongs_to :home_team, class_name: 'Team'
    belongs_to :guest_team, class_name: 'Team'

    def game
        "#{home_team.title} vs #{guest_team.title}"
    end
end
