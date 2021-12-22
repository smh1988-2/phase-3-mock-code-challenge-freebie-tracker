class Freebie < ActiveRecord::Base
    belongs_to :company
    belongs_to :dev

    def print_details
        p "#{dev.name} owns a #{item_name} from #{company.name}"
    end

end
