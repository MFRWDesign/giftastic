require 'rails_helper'

RSpec.describe "gifs/show", type: :view do
  before(:each) do
    @user = User.create!(email: 'bob@bob.com', password: 'bobbobob')
    @gif = assign(:gif, Gif.create!(
      title: "Title",
      user: @user
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
  end
end
