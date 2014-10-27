require 'rails_helper'

RSpec.describe "doctors/edit", :type => :view do
  before(:each) do
    @doctor = assign(:doctor, Doctor.create!(
      :title => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :specialty => "MyString"
    ))
  end

  it "renders the edit doctor form" do
    render

    assert_select "form[action=?][method=?]", doctor_path(@doctor), "post" do

      assert_select "input#doctor_title[name=?]", "doctor[title]"

      assert_select "input#doctor_first_name[name=?]", "doctor[first_name]"

      assert_select "input#doctor_last_name[name=?]", "doctor[last_name]"

      assert_select "input#doctor_specialty[name=?]", "doctor[specialty]"
    end
  end
end
