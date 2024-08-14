class Tweet < ApplicationRecord
end

def self.search(search)
  if search
    where('description ILIKE ?', "%#{search}%")
  else
    all
  end
end
