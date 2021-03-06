class CreateReviewEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :review_evaluations, force: :cascade, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.bigint  'user_id',         null: false
      t.bigint  'review_id',     null: false
      t.integer  'evaluation_type', null: false
      t.datetime 'created_at',      null: false
      t.datetime 'updated_at',      null: false
    end

    # add_index "review_evaluations", ["user_id"], name: "index_review_evaluations_on_user_id", using: :btree
    # add_index "review_evaluations", ["review_id"], name: "index_review_evaluations_on_review_id", using: :btree
    add_index 'review_evaluations', ['user_id', 'review_id'], unique: true, using: :btree

    add_foreign_key 'review_evaluations', 'users'
    add_foreign_key 'review_evaluations', 'reviews'
  end
end
