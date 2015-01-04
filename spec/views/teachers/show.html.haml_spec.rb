require 'rails_helper'

RSpec.describe "teachers/show", :type => :view do
  before(:each) do
    @teacher = assign(:teacher, Teacher.create!(
      :first_name => "First Name",
      :second_name => "Second Name",
      :third_name => "Third Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Second Name/)
    expect(rendered).to match(/Third Name/)
  end
end
