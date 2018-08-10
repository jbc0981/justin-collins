class Example < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 3, maximum: 50}
  validates :url, presence: true, length: {minimum: 10, maximum: 300}
  validates :giturl, presence: true, length: {minimum: 10, maximum: 300}
  validates :description, presence: true, length: {minimum: 10, maximum: 300}

end
