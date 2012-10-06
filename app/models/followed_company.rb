class FollowedCompany < ActiveRecord::Base
  belongs_to :user
  belongs_to :company
  belongs_to :preference
  # attr_accessible :title, :body
end
