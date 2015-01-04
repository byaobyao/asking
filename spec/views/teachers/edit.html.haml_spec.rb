require 'rails_helper'

RSpec.describe "teachers/edit", :type => :view do
  before(:each) do
    @teacher = assign(:teacher, Teacher.create!(
      :first_name => "MyString",
      :second_name => "MyString",
      :third_name => "MyString"
    ))
  end

  it "renders the edit teacher form" do
    render

    assert_select "form[action=?][method=?]", teacher_path(@teacher), "post" do

      assert_select "input#teacher_first_name[name=?]", "teacher[first_name]"

      assert_select "input#teacher_second_name[name=?]", "teacher[second_name]"

      assert_select "input#teacher_third_name[name=?]", "teacher[third_name]"
    end
  end
end