require "spec_helper"

describe DailyQuestionsController do
  describe "routing" do

    it "routes to #index" do
      get("/daily_questions").should route_to("daily_questions#index")
    end

    it "routes to #new" do
      get("/daily_questions/new").should route_to("daily_questions#new")
    end

    it "routes to #show" do
      get("/daily_questions/1").should route_to("daily_questions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/daily_questions/1/edit").should route_to("daily_questions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/daily_questions").should route_to("daily_questions#create")
    end

    it "routes to #update" do
      put("/daily_questions/1").should route_to("daily_questions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/daily_questions/1").should route_to("daily_questions#destroy", :id => "1")
    end

  end
end
