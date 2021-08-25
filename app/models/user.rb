class User < ApplicationRecord
  validates_presence_of :cpf
  validates_uniqueness_of :cpf
end
