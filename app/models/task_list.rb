class TaskList < ActiveRecord::Base
  has_many :tasks, -> { order :priority }, foreign_key: :list_id, dependent: :destroy

  validates :name, presence: true
end
