class Ticket < ActiveRecord::Base
  enum priority: { hight: 0, mid: 1, low: 3 }
  enum status: { not_comp: 0, wip: 1, comp: 3 }
end
