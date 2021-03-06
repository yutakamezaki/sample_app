# == Schema Information
#
# Table name: hashtags
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_hashtags_evaluations_on_name  (name) UNIQUE
#

FactoryBot.define do
  factory :hash_tag do
    sequence :name do |n|
      "BTC#{n}"
    end
  end
end
