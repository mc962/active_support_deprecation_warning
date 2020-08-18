class StaticPagesController < ApplicationController
  def home
    Rails.logger.info 'BEFORE FIRST FETCH'
    Rails.cache.fetch(:a) do
      Random.rand(10)
    end
    Rails.logger.info 'BETWEEN FIRST AND SECOND FETCH'
    Rails.cache.fetch(:a) do
      Random.rand(10)
    end
    Rails.logger.info 'AFTER SECOND FETCH'
  end
end
