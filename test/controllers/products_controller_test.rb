require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/products.json"
    assert_response 200
  
    data = JSON.parse(response.body)
    assert_equal Product.count, data.length
  end
  
  test "show" do
    get "/products/#{Product.first.id}.json"
    assert_response 200
  
    data = JSON.parse(response.body)
    assert_equal ["created_at", "id", "price", "description", "name", "is_discounted?", "tax", "total", "quantity", "supplier", "images"], data.keys
  end
  
end
