class Role < ActiveRecord::Base
    has_many :auditions 

    def audition
        self.auditions
    end

    def actors
        audition.map do |audition|
            audition.actor
        end
    end

    def locations
        audition.map do |audition|
            audition.location
        end
    end

    def lead
        audition.find {|actor| actor.role_id == self.id && actor.hired == true}
    end

    def understudy
        count = 0
        lead_actor = lead
        understudy_actor = nil

        audition.map do |person|
            if person == lead_actor
                count += 1
                next
            elsif count == 1
                understudy_actor = person
            end
        end

        if count == 0
            "no actor has been hired for understudy for this role"
        else
            understudy_actor
        end
    end
end