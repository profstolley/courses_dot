class SurveyController < ApplicationController
  def index
    @survey = Enrollment.find_by_survey_token(params[:survey_token])
  end

  private
  def survey_params
    params.require(:enrollment).permit(:survey_token, :contract_acceptance, student_attributes: :preferred_first)
  end
end
