class User < ApplicationRecord
  validates :name, presence: true
  validates :occupation, presence: true, length: { minimum: 3 }
end
