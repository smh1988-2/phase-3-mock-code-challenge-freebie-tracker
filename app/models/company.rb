#Company-<Freebies>-Dev = the domain! Freebies is the join/source of truth.

class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebie dev, item_name, value
        Freebie.create(item_name: item_name, value: value, dev: dev, company_id: id)
    end

    def self.oldest_company
        all.sort_by(&:founding_year).first
    end

end
