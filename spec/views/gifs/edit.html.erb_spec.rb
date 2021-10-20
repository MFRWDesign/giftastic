require 'rails_helper'

RSpec.describe "gifs/edit", type: :view do
  before(:each) do
    @user = User.create!(email: 'bob@bob.com', password: 'bobbobob')
    @gif = assign(:gif, Gif.create!(
      title: "MyString",
      user: @user
    ))
  end

  it "renders the edit gif form" do
    render

    assert_select "form[action=?][method=?]", gif_path(@gif), "post" do

      assert_select "input[name=?]", "gif[title]"

      assert_select "input[name=?]", "gif[user_id]"
    end
  end
end
