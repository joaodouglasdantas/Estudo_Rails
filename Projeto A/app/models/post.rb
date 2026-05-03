class Post < ApplicationRecord
    #https://guides.rubyonrails.org/active_record_validations.html
    validates :description, presence: true, length: { minimum: 10 }
    validates :title, presence: true, length: { minimum: 5 }

    before_save do
        self.title = self.title + " John"
    end
end
