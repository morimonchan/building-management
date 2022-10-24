class VacanciesController < ApplicationController

  def index
    @vacancies = vacancy.includes(:user)
  end

  def new
    @vacancy = vacancy.new
  end



end
