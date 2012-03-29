class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def my_list
  	@result = Result.all
  end	
	def testone
  	@list = Testone.all
  end	
	def testtwo
  	@list = Testtwo.all
  end	
  def resultone
    @result = Result.all
    @list1 = Testone.all
  end 
  def resulttwo
    @result = Result.all
    @list2 = Testtwo.all
  end 
  def update_list
    
  end
  def public_list
  end
end
