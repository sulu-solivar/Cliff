class HomeController < ApplicationController
  before_filter :authenticate_user!, :except =>'index'

  def index
    @page_header = "Welcome - Cliff's Hartman Model"
    @users = User.all
  end

  def my_list
    @page_header = "Home - Cliff's Hartman Model"
  	@result1 = Result.find_by_user_id_and_test_num(current_user,1)
    @result2 = Result.find_by_user_id_and_test_num(current_user,2)
  end	
  
	def testone
    @page_header = "Test One Items - Cliff's Hartman Model"
  	@list = Testone.all
  end	

	def testtwo
    @page_header = "Test Two Items - Cliff's Hartman Model"
  	@list = Testtwo.all
  end	

  def resultone
    @page_header = "Test One Results - Cliff's Hartman Model"
    @result = Result.find_by_user_id_and_test_num(current_user.id,params[:test].to_i)
    @list1 = Testone.all
  end 

  def resulttwo
    @page_header = "Test Two Results - Cliff's Hartman Model"
    @result = Result.find_by_user_id_and_test_num(current_user,params[:test])
    @list2 = Testtwo.all
  end 

  def update_list1
    #render :text => params[:test].inspect;return;
    if request.post?
      items = params[:items][:order]
      test = params[:test]
      @result = Result.find_by_user_id_and_test_num(current_user.id,test)
      if @result.blank?
        @result = Result.create(:user_id => current_user.id,:item_order => items,:test_num => test )
        flash[:notice] ="Test One result saved!"  
        redirect_to :action =>"resultone",:test => test
      else
        flash[:error] ="Test One result already saved!"  
        redirect_to :action =>'testone'
      end 
    end
  end

  def update_list2
    if request.post?
      items = params[:items][:order]
      test = params[:test]
      @result = Result.find_by_user_id_and_test_num(current_user.id,test)
    if @result.blank?
        @result = Result.create(:user_id => current_user.id,:item_order => items,:test_num => test )
        flash[:notice] ="Test two result saved!"  
        redirect_to :action =>"resulttwo",:test => test
      else
        flash[:error] ="Test two result already saved!"  
        redirect_to :action =>'testtwo'
      end 
    end
  end

  def public_list
  end
end
