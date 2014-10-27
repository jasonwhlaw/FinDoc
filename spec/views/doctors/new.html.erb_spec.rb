require 'rails_helper'

RSpec.describe "doctors/new", :type => :view do
  before(:each) do
    assign(:doctor, Doctor.new(
      :title => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :specialty => "MyString"
    ))
  end

  it "renders new doctor form" do
    render

    assert_select "form[action=?][method=?]", doctors_path, "post" do

      assert_select "input#doctor_title[name=?]", "doctor[title]"

      assert_select "input#doctor_first_name[name=?]", "doctor[first_name]"

      assert_select "input#doctor_last_name[name=?]", "doctor[last_name]"

      assert_select "input#doctor_specialty[name=?]", "doctor[specialty]"
    end
  end
end
