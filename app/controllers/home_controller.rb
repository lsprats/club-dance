class HomeController < ApplicationController
  expose(:sliders)  { Slider.all }
  expose(:events)   { Event.all.limit(3) }
  expose(:discounts){ Discount.all.limit(2) }
  expose(:articles) { Article.all.limit(3) }

  layout 'home'

  def index;   end

end
