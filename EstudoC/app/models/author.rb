class Author < ApplicationRecord
  has_many :books
  has_one :account # Singular pois so podemos ter um
end
