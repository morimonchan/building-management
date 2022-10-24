class VacanciesController < ApplicationController

  def index
    @vacancies = vacancy.includes(:user)
  end

  def new
    @vacancy = Vacancy.new
  end



end
