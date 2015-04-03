class Committee < ActiveRecord::Base
  has_many :students

  def next
    self.class.where("id > ?", id).first || self.class.first
  end

  def previous
    self.class.where("id < ?", id).last || self.class.last
  end
end
