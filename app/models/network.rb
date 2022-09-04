class Network < ActiveRecord::Base
    has_many :shows

    def shows
        self.shows.map do |actor|
            actor
        end
    end

    def sorry
        "We're sorry about passing on John Mulaney's pilot"
      end
  
end
