class HomeController < ApplicationController
  before_filter :authenticate_user!, :except =>'index'

  def index
    @page_header = "Welcome - Cliff's Hartman Model"
    @users = User.all
  end

  def my_list
    @home_tab = 'active'
    @page_header = "Home - Cliff's Hartman Model"
  	@result1 = Result.find_by_user_id_and_test_num(current_user,1)
    @result2 = Result.find_by_user_id_and_test_num(current_user,2)
  end	
  
	def testone
    @test_one_tab = 'active'
    @page_header = "Test One Items - Cliff's Hartman Model"
  	@list = Testone.all
  end	

	def testtwo
    @test_two_tab = 'active'
    @page_header = "Test Two Items - Cliff's Hartman Model"
  	@list = Testtwo.all
  end	

  def resultone
    @result_one_tab = 'active'
    @page_header = "Test One Results - Cliff's Hartman Model"
    @result = Result.find_by_user_id_and_test_num(current_user.id,params[:test].to_i)
    @list1 = Testone.all
  end 

  def resulttwo
    @result_two_tab = 'active'
    @page_header = "Test Two Results - Cliff's Hartman Model"
    @result = Result.find_by_user_id_and_test_num(current_user,params[:test])
    @list2 = Testtwo.all
  end 

  def result
    @result_tab = 'active'
    @page_header = "Test Results - Cliff's Hartman Model"
    
    @result1 = Result.find_by_user_id_and_test_num(current_user.id,1)

    if defined? @result1.item_order
      @avg_row_number = Testone.avg_row_number
      @avg_new_order = Testone.avg_new_order @result1.item_order
      @total_dim_i1 = total_dim_i1 @result1.item_order 
      @total_dim_e1 = total_dim_e1 @result1.item_order
      @total_dim_s1 = total_dim_s1 @result1.item_order
      
      @total_int_i1 = total_int_i1 @result1.item_order
      @total_int_e1 = total_int_e1 @result1.item_order
      @total_int_s1 = total_int_s1 @result1.item_order
      @total_dis1 = total_dis1 @result1.item_order
      @total_bali1 = total_bali1 @result1.item_order
      @total_bale1 = total_bale1 @result1.item_order
      @total_bals1 = total_bals1 @result1.item_order
      @total_rho1 = total_rho1 @result1.item_order
      @total_rho2 = total_rho2 @result1.item_order
      @total_rho3 = total_rho3 @result1.item_order

      @dif1 = dif1 @result1.item_order
      @int1 = int1 @result1.item_order
      @dim1 = dim1 @result1.item_order
      @di1 = di1 @result1.item_order

      @alper1 = (alper1 @result1.item_order).to_s + ' %'

      @vq1 = @int1 + @dif1 + @dim1 + @total_dis1
      @vq2 = @int1 + @dim1 + @total_dis1
      @dimper1 = (@dim1 * 100) / @dif1
      @intper1 = (@int1 * 100) / @dif1
    end
    @result2 = Result.find_by_user_id_and_test_num(current_user.id,2)
  end

  def final_result
    @final_result_tab = 'active'
    @page_header = "Final Results - Cliff's Hartman Model"
    
    @result1 = Result.find_by_user_id_and_test_num(current_user.id,1)

    if defined? @result1.item_order
      @avg_row_number = Testone.avg_row_number
      @avg_new_order = Testone.avg_new_order @result1.item_order
      @total_dim_i1 = total_dim_i1 @result1.item_order 
      @total_dim_e1 = total_dim_e1 @result1.item_order
      @total_dim_s1 = total_dim_s1 @result1.item_order
      
      @total_int_i1 = total_int_i1 @result1.item_order
      @total_int_e1 = total_int_e1 @result1.item_order
      @total_int_s1 = total_int_s1 @result1.item_order
      @total_dis1 = total_dis1 @result1.item_order
      @total_bali1 = total_bali1 @result1.item_order
      @total_bale1 = total_bale1 @result1.item_order
      @total_bals1 = total_bals1 @result1.item_order
      @total_rho1 = total_rho1 @result1.item_order
      @total_rho2 = total_rho2 @result1.item_order
      @total_rho3 = total_rho3 @result1.item_order

      @dif1 = dif1 @result1.item_order
      @int1 = int1 @result1.item_order
      @dim1 = dim1 @result1.item_order
      @di1 = di1 @result1.item_order

      @alper1 = (alper1 @result1.item_order).to_s + ' %'

      @vq1 = @int1 + @dif1 + @dim1 + @total_dis1
      @vq2 = @int1 + @dim1 + @total_dis1
      @dimper1 = (@dim1 * 100) / @dif1
      @intper1 = (@int1 * 100) / @dif1
    end
    @result2 = Result.find_by_user_id_and_test_num(current_user.id,2)
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
        redirect_to :action =>"result"
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
        redirect_to :action =>"result"
      else
        flash[:error] ="Test two result already saved!"  
        redirect_to :action =>'testtwo'
      end 
    end
  end

  def report
    @report_tab = 'active'
    @user = current_user
  end


  # calculating totals of the result 1.

  def total_dim_i1 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      dim1 = (Testone.find(n).dim_i1(row) == '-') ? 0 : Testone.find(n).dim_i1(row)
      total += dim1
      n += 1
    end
    return total
  end

  def total_dim_e1 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      dim1 = (Testone.find(n).dim_e1(row) == '-') ? 0 : Testone.find(n).dim_e1(row)
      total += dim1
      n += 1
    end
    return total
  end

  def total_dim_s1 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      dim1 = (Testone.find(n).dim_s1(row) == '-')? 0 : Testone.find(n).dim_s1(row)
      total += dim1
      n += 1
    end
    return total
  end

  def total_int_i1 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testone.find(n).int_i1(row)
      n += 1
    end
    return total
  end

  def total_int_s1 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testone.find(n).int_s1(row)
      n += 1
    end
    return total
  end

  def total_int_e1 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testone.find(n).int_e1(row)
      n += 1
    end
    return total
  end

  def dif1 new_order
    return total_dim_i1(new_order) + total_dim_s1(new_order) + total_dim_e1(new_order)
  end

  def int1 new_order
    return total_int_i1(new_order) + total_int_s1(new_order) + total_int_e1(new_order)
  end

  def dim1 new_order
    return 3*([total_dim_i1(new_order), total_dim_s1(new_order), total_dim_e1(new_order)].max) - dif1(new_order)
  end

  def di1 new_order
    return 3*([total_int_i1(new_order), total_int_s1(new_order), total_int_e1(new_order)].max) - int1(new_order)
  end

  def total_dis1 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testone.find(n).dis1(row)
      n += 1
    end
    return total
  end

  def total_bali1 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testone.find(n).bali1(row)
      n += 1
    end
    return total
  end

  def total_bale1 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testone.find(n).bale1(row)
      n += 1
    end
    return total
  end

  def total_bals1 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testone.find(n).bals1(row)
      n += 1
    end
    return total
  end

  def total_rho1 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testone.find(n).rho1(row, new_order)
      n += 1
    end
    return total
  end

  def total_rho2 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testone.find(n).rho2(row, new_order)
      n += 1
    end
    return total
  end

  def total_rho3 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testone.find(n).rho3(row, new_order)
      n += 1
    end
    return total
  end

  def alper1 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      bali1 = Testone.find(n).bali1(row)
      bale1 = Testone.find(n).bale1(row)
      bals1 = Testone.find(n).bals1(row)
      total += ( bali1 < 0 ) ? bali1 : 0
      total += ( bale1 < 0 ) ? bale1 : 0
      total += ( bals1 < 0 ) ? bals1 : 0
      n += 1
    end
    final = ((-total) * 100) / dif1(new_order)
    return final
  end

end