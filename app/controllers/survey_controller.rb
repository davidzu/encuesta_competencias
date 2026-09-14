class SurveyController < ApplicationController
  layout false

  def show
    response.headers["Cache-Control"] = "no-store, must-revalidate"
  end

  def thanks
  end
end
