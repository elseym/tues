require 'sqlite3'
require 'active_record'


class Tag < ActiveRecord::Base
  has_and_belongs_to_many :todos
  def self.add_hash(name)
    hash = Tag.create(:name => name) 
    hash.save
    return hash.id 
  end
end

