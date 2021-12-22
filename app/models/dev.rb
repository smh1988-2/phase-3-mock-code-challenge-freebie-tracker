class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one item_name
        if self.freebies.find_by(item_name: item_name)
            true        
        else
            false
        end
    end

    #added some print outs to make it clear what is happening
    def give_away dev, freebie
        if  self.freebies.find_by(item_name: freebie.item_name)
            p "They can give it away!"
            freebie.update(:dev_id => dev.id)
            p "They gave it away!"
        else
            p "#{name} can't give #{freebie.item_name} to #{dev.name} because they don't have it'!"
        end
    end

end
