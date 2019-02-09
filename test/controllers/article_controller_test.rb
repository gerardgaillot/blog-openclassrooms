require 'test_helper'

class ArticleControllerTest < ActionDispatch::IntegrationTest
  test "should get titre:string" do
    get article_titre:string_url
    assert_response :success
  end

  test "should get contenu:text" do
    get article_contenu:text_url
    assert_response :success
  end

end
