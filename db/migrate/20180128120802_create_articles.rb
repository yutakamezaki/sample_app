class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles, force: :cascade, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string   'url',       null: false
      t.string   'image_url',       null: false
      t.string   'title',       null: false
      t.integer 'reviews_count', null: false, default: 0
      t.decimal 'evaluation_point', null: false, default: 0.0, precision: 3, scale: 1
      t.datetime 'created_at', null: false
      t.datetime 'updated_at', null: false

      t.index 'url', name: 'index_articles_on_url', unique: true, using: :btree
    end
  end
end
