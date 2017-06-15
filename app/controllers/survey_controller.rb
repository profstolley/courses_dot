class SurveyController < ApplicationController
  before_action :set_survey, except: [:thanks]

  def index
  end

  def update
    respond_to do |format|
      if @survey.update(survey_params)
        format.html { redirect_to survey_thanks_path }
      else
        format.html { render :index }
      end
    end
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
