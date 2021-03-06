require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new())
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do
      assert_select "label", text: "Name"
      assert_select "label", text: "Description"
      assert_select "label", text: "Price"
    end
  end
end
