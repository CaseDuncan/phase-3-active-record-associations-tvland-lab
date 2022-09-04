class Actor < ActiveRecord::Base
    belongs_to :characters
    has_many :shows, through: :characters

    def characters
      self.characters.all
    end

    def shows
      self.characters.map do |character|
        character.shows
    end

    def full_name
        "#{self.first_name} #{self.last_name}"
      end
    
      def list_roles
        self.characters.map do |character|
          "#{character.name} - #{character.show.name}"
        end
      end
  
end