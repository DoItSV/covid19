class HomeController < ApplicationController
  def home;  end

  def terms_and_conditions; end

  def about_us; end

  def faq
    @questions = Question.all
  end

  def news_resources; end

  def privacy_policy; end
end
