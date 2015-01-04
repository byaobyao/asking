require 'rails_helper'

RSpec.describe "teachers/index", :type => :view do
  before(:each) do
    assign(:teachers, [
      Teacher.create!(
        :first_name => "First Name",
        :second_name => "Second Name",
        :third_name => "Third Name"
      ),
      Teacher.create!(
        :first_name => "First Name",
        :second_name => "Second Name",
        :third_name => "Third Name"
      )
    ])
  end

  it "renders a list of teachers" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Second Name".to_s, :count => 2
    assert_select "tr>td", :text => "Third Name".to_s, :count => 2
  end
end
