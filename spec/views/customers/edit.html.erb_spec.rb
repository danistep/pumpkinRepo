require 'rails_helper'

RSpec.describe "customers/edit", :type => :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :name => "MyString",
      :discount => "9.99"
    ))
  end

  it "renders the edit customer form" do
    render

    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do

      assert_select "input#customer_name[name=?]", "customer[name]"

      assert_select "input#customer_discount[name=?]", "customer[discount]"
    end
  end
end
