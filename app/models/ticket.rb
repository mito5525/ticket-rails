# == Schema Information
#
# Table name: tickets
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  descripution :text(65535)
#  priority     :integer
#  status       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Ticket < ActiveRecord::Base
  enum priority: { hight: 0, mid: 1, low: 3 }
  enum status: { not_comp: 0, wip: 1, comp: 3 }

  has_many :comments
end
