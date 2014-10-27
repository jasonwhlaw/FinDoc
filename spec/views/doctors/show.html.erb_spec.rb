require 'rails_helper'

RSpec.describe "doctors/show", :type => :view do
  before(:each) do
    @doctor = assign(:doctor, Doctor.create!(
      :title => "Title",
      :first_name => "First Name",
      :last_name => "Last Name",
      :specialty => "Specialty"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Specialty/)
  end
end
