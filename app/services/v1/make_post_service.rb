module V1
  class MakePostService
    def initialize(url, comment, user_id, evaluation_point)
      @original_url = url
      @comment = comment
      @point = evaluation_point
      @article = set_article
      @user_id = user_id
    end

    def build!
      @article.reviews.create!(text: @comment, user_id: @user_id, evaluation_point: @point)
    end

    private

      def set_article
        Article.find_or_create_article!(@original_url)
      end
  end
end
