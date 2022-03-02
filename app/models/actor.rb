class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        #loop through the characters table to return each of the characters ( |character| )
        self.characters.map do |character|
            #for each character, get the character name with character.name
            #for the character's show name, its show.name because the show is taken from character
                #refer to like 3, "shows through characters"
            "#{character.name} - #{character.show.name}"
        end

    end
end