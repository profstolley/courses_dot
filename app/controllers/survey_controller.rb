class SurveyController < ApplicationController
  def index
    @survey = Enrollment.find_by_survey_token(params[:survey_token])
  end
end
