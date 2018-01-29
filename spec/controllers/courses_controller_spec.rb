require 'rails_helper'

RSpec.describe CoursesController do
  describe "GET index" do
    it "renders the courses index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end

