class Audition < ActiveRecord::Base
    belongs_to :role

    def roles
        self.role
    end

    def call_back
        self.hired = true
    end

end