class V1::ArticlesPaging
  include ActiveModel::Model
  include ActiveModel::Serialization

  attr_accessor :data, :paging

  def paging
    ::V1::Paging.new(cursor: @paging[:cursor], has_next: @paging[:has_next])
  end
end
