 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/gifs", type: :request do
  
  # Gif. As you add validations to Gif, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Gif.create! valid_attributes
      get gifs_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      gif = Gif.create! valid_attributes
      get gif_url(gif)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_gif_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      gif = Gif.create! valid_attributes
      get edit_gif_url(gif)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Gif" do
        expect {
          post gifs_url, params: { gif: valid_attributes }
        }.to change(Gif, :count).by(1)
      end

      it "redirects to the created gif" do
        post gifs_url, params: { gif: valid_attributes }
        expect(response).to redirect_to(gif_url(Gif.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Gif" do
        expect {
          post gifs_url, params: { gif: invalid_attributes }
        }.to change(Gif, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post gifs_url, params: { gif: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested gif" do
        gif = Gif.create! valid_attributes
        patch gif_url(gif), params: { gif: new_attributes }
        gif.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the gif" do
        gif = Gif.create! valid_attributes
        patch gif_url(gif), params: { gif: new_attributes }
        gif.reload
        expect(response).to redirect_to(gif_url(gif))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        gif = Gif.create! valid_attributes
        patch gif_url(gif), params: { gif: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested gif" do
      gif = Gif.create! valid_attributes
      expect {
        delete gif_url(gif)
      }.to change(Gif, :count).by(-1)
    end

    it "redirects to the gifs list" do
      gif = Gif.create! valid_attributes
      delete gif_url(gif)
      expect(response).to redirect_to(gifs_url)
    end
  end
end
