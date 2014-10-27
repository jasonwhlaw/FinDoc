require 'rails_helper'

RSpec.describe "doctors/index", :type => :view do
  before(:each) do
    assign(:doctors, [
      Doctor.create!(
        :title => "Title",
        :first_name => "First Name",
        :last_name => "Last Name",
        :specialty => "Specialty"
      ),
      Doctor.create!(
        :title => "Title",
        :first_name => "First Name",
        :last_name => "Last Name",
        :specialty => "Specialty"
      )
    ])
  end

  it "renders a list of doctors" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Specialty".to_s, :count => 2
  end
end
