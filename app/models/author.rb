# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  name       :string
#  hometown   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Partials help us break our code up into reusable chunks.
class Author < ActiveRecord::Base
  has_many :posts
end
