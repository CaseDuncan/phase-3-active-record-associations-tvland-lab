class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show


  def actor
    self.actors.filter do |a|
        a.name
 end

 def show
    self.show.filter(show_id) do |s|
        s.name
 end

 def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

end