class SurveyController < ApplicationController
  before_action :set_survey, except: [:thanks]

  def index
  end

  def update
  end

  def thanks
  end

  private

  def set_survey
    @survey = Enrollment.find_by_survey_token(params[:survey_token])
  end

  def survey_params
    params.require(:enrollment).permit(:survey_token, :contract_acceptance, student_attributes: :preferred_first)
  end
end
