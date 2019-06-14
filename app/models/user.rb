class User < ApplicationRecord
  has_many :todo_lists
  has_many :tasks through: :todo_lists
end
