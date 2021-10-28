require 'rails_helper'

RSpec.describe "gifs/index", type: :view do
  before(:each) do
    @user = User.create!(email: 'bob@bob.com', password: 'bobbobob')
    Gif.create!(title: "Title", user: @user)
    Gif.create!(title: "Title", user: @user)
    assign(:gifs, Gif.page(params[:page]).per(5))
  end

  it "renders a list of gifs" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: @user.email, count: 2
  end
end
