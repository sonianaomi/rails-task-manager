class Task < ApplicationRecord
  validates :description, presence:true

  def mark_as_done
    self.done = true
  end
end
