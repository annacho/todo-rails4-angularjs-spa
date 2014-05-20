class User < ActiveRecord::Base

  has_many :task_lists, foreign_key: :owner_id

  after_create :create_task_list

  def create_task_list
    task_lists.create!(name: "My first list")
  end

  def first_list
    task_lists.first
  end
end
