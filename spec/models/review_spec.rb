# == Schema Information
#
# Table name: reviews
#
#  id               :integer          not null, primary key
#  user_id          :integer          not null
#  article_id       :integer          not null
#  text             :string(255)
#  evaluation_point :decimal(3, 1)    default(0.0), not null
#  likes_count      :integer          default(0), not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  fk_rails_bdbf711db8                      (article_id)
#  index_reviews_on_user_id_and_article_id  (user_id,article_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (article_id => articles.id)
#  fk_rails_...  (user_id => users.id)
#

require 'rails_helper'

RSpec.describe Review, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
