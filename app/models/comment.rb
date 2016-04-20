# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text(65535)
#  ticket_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  fk_rails_e013b60ecb  (ticket_id)
#

class Comment < ActiveRecord::Base
  belongs_to :ticket
end
