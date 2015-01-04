require 'rails_helper'

RSpec.describe "tests/show", :type => :view do
  before(:each) do
    @test = assign(:test, Test.create!(
      :name => "",
      :discipline_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
  end
end
