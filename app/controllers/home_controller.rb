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
    if defined? @result2.item_order
      @avg_row_number2 = Testtwo.avg_row_number
      @avg_new_order2 = Testtwo.avg_new_order @result2.item_order
      @total_dim_i2 = total_dim_i2 @result2.item_order 
      @total_dim_e2 = total_dim_e2 @result2.item_order
      @total_dim_s2 = total_dim_s2 @result2.item_order
      
      @total_int_i2 = total_int_i2 @result2.item_order
      @total_int_e2 = total_int_e2 @result2.item_order
      @total_int_s2 = total_int_s2 @result2.item_order
      @total_dis2 = total_dis2 @result2.item_order
      @total_bali2 = total_bali2 @result2.item_order
      @total_bale2 = total_bale2 @result2.item_order
      @total_bals2 = total_bals2 @result2.item_order
      @total_rho4 = total_rho4 @result2.item_order
      @total_rho5 = total_rho5 @result2.item_order
      @total_rho6 = total_rho6 @result2.item_order

      @dif2 = dif2 @result2.item_order
      @int2 = int2 @result2.item_order
      @dim2 = dim2 @result2.item_order
      @di2 = di2 @result2.item_order

      @alper2 = (alper2 @result2.item_order).to_s + ' %'

      @vq3 = @int2 + @dif2 + @dim2 + @total_dis2
      @vq4 = @int2 + @dim2 + @total_dis2
      @dimper2 = (@dim2 * 100) / @dif2
      @intper2 = (@int2 * 100) / @dif2
    end
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

      @alper1 = alper1 @result1.item_order

      @vq1 = @int1 + @dif1 + @dim1 + @total_dis1
      @vq2 = @int1 + @dim1 + @total_dis1
      @dimper1 = (@dim1 * 100) / @dif1
      @intper1 = (@int1 * 100) / @dif1
      
      # ratings
      @dif1_rating = rating @dif1, :r1 => 30, :r2 => 31, :r3 => 40, :r4 => 41, :r5 => 50, :r6 => 51, :r7 => 60, :r8 => 61, :r9 => 70, :r10 => 71, :r11 => 80, :r12 => 81
      @dim_i1_rating = rating @total_dim_i1, :r1 => 7, :r2 => 8, :r3 => 14, :r4 => 15, :r5 => 21, :r6 => 22, :r7 => 28, :r8 => 29, :r9 => 35, :r10 => 36, :r11 => 42, :r12 => 43
      @dim_e1_rating = rating @total_dim_e1, :r1 => 7, :r2 => 8, :r3 => 14, :r4 => 15, :r5 => 21, :r6 => 22, :r7 => 28, :r8 => 29, :r9 => 35, :r10 => 36, :r11 => 42, :r12 => 43
      @dim_s1_rating = rating @total_dim_s1, :r1 => 7, :r2 => 8, :r3 => 14, :r4 => 15, :r5 => 21, :r6 => 22, :r7 => 28, :r8 => 29, :r9 => 35, :r10 => 36, :r11 => 42, :r12 => 43
      @dim1_rating = rating @dim1, :r1 => 3, :r2 => 4, :r3 => 7, :r4 => 8, :r5 => 11, :r6 => 12, :r7 => 15, :r8 => 16, :r9 => 19, :r10 => 20, :r11 => 23, :r12 => 24
      @dimper1_rating = rating @dimper1, :r1 => 10, :r2 => 11, :r3 => 20, :r4 => 21, :r5 => 30, :r6 => 31, :r7 => 40, :r8 => 41, :r9 => 50, :r10 => 51, :r11 => 60, :r12 => 61
      @total_int_i1_rating = rating @total_int_i1, :r1 => 0, :r2 => 1, :r3 => 5, :r4 => 6, :r5 => 12, :r6 => 13, :r7 => 19, :r8 => 20, :r9 => 26, :r10 => 27, :r11 => 33, :r12 => 34
      @total_int_e1_rating = rating @total_int_e1, :r1 => 0, :r2 => 1, :r3 => 5, :r4 => 6, :r5 => 12, :r6 => 13, :r7 => 19, :r8 => 20, :r9 => 26, :r10 => 27, :r11 => 33, :r12 => 34
      @total_int_s1_rating = rating @total_int_s1, :r1 => 0, :r2 => 1, :r3 => 5, :r4 => 6, :r5 => 12, :r6 => 13, :r7 => 19, :r8 => 20, :r9 => 26, :r10 => 27, :r11 => 33, :r12 => 34
      @int1_rating = rating @int1, :r1 => 7, :r2 => 8, :r3 => 14, :r4 => 15, :r5 => 21, :r6 => 22, :r7 => 28, :r8 => 29, :r9 => 35, :r10 => 36, :r11 => 42, :r12 => 43
      @intper1_rating = rating @intper1, :r1 => 10, :r2 => 11, :r3 => 20, :r4 => 21, :r5 => 30, :r6 => 31, :r7 => 40, :r8 => 41, :r9 => 50, :r10 => 51, :r11 => 60, :r12 => 61
      @di1_rating = rating @di1, :r1 => 3, :r2 => 4, :r3 => 7, :r4 => 8, :r5 => 11, :r6 => 12, :r7 => 15, :r8 => 16, :r9 => 19, :r10 => 20, :r11 => 23, :r12 => 24
      @total_dis1_rating = rating @total_dis1, :r1 => 0, :r2 => 1, :r3 => 1, :r4 => 2, :r5 => 2, :r6 => 4, :r7 => 4, :r8 => 5, :r9 => 5, :r10 => 6, :r11 => 6, :r12 => 8
      @alper1_rating = rating @alper1, :r1 => 53, :r2 => 54, :r3 => 57, :r4 => 58, :r5 => 61, :r6 => 62, :r7 => 65, :r8 => 66, :r9 => 69, :r10 => 70, :r11 => 73, :r12 => 74
      @tota_rho123_rating = rho_rating(@total_rho1 + @total_rho2 + @total_rho3)
      @total_bali1_rating = bal_rating @total_bali1, :r1 => 'Strongly aversive towards individuality of other people', :r2 => 'Aversive tendencies towards individuality of other people', :r3 => 'Balanced valence towards individuality of other people', :r4 => 'Tendencies to be overly-attracted towards valuing individuality of other people', :r5 => 'Strongly over-attracted towards valuing individuality of other people'
      @total_bale1_rating = bal_rating @total_bale1, :r1 => 'Strongly aversive towards practicality', :r2 => 'Aversive tendencies towards practicality', :r3 => 'Balanced valence towards practicality', :r4 => 'Tendencies to be overly-attracted towards valuing practicality', :r5 => 'Strongly over-attracted towards valuing practicality'
      @total_bals1_rating = bal_rating @total_bals1, :r1 => 'Strongly aversive towards order and systems in the world', :r2 => 'Aversive tendencies towards order and systems in the world', :r3 => 'Balanced valence towards order and systems in the world', :r4 => 'Tendencies to be overly-attracted towards valuing order and systems in the world', :r5 => 'Strongly over-attracted towards valuing order and systems in the world'
    end
    
    @result2 = Result.find_by_user_id_and_test_num(current_user.id,2)
    if defined? @result2.item_order
      @avg_row_number2 = Testtwo.avg_row_number
      @avg_new_order2 = Testtwo.avg_new_order @result2.item_order
      @total_dim_i2 = total_dim_i2 @result2.item_order 
      @total_dim_e2 = total_dim_e2 @result2.item_order
      @total_dim_s2 = total_dim_s2 @result2.item_order
      
      @total_int_i2 = total_int_i2 @result2.item_order
      @total_int_e2 = total_int_e2 @result2.item_order
      @total_int_s2 = total_int_s2 @result2.item_order
      @total_dis2 = total_dis2 @result2.item_order
      @total_bali2 = total_bali2 @result2.item_order
      @total_bale2 = total_bale2 @result2.item_order
      @total_bals2 = total_bals2 @result2.item_order
      @total_rho4 = total_rho4 @result2.item_order
      @total_rho5 = total_rho5 @result2.item_order
      @total_rho6 = total_rho6 @result2.item_order

      @dif2 = dif2 @result2.item_order
      @int2 = int2 @result2.item_order
      @dim2 = dim2 @result2.item_order
      @di2 = di2 @result2.item_order

      @alper2 = alper2 @result2.item_order

      @vq3 = @int2 + @dif2 + @dim2 + @total_dis2
      @vq4 = @int2 + @dim2 + @total_dis2
      @dimper2 = (@dim2 * 100) / @dif2
      @intper2 = (@int2 * 100) / @dif2

      # ratings
      @dif2_rating = rating @dif2, :r1 => 30, :r2 => 31, :r3 => 40, :r4 => 41, :r5 => 50, :r6 => 51, :r7 => 60, :r8 => 61, :r9 => 70, :r10 => 71, :r11 => 80, :r12 => 81
      @dim_i2_rating = rating @total_dim_i2, :r1 => 7, :r2 => 8, :r3 => 14, :r4 => 15, :r5 => 21, :r6 => 22, :r7 => 28, :r8 => 29, :r9 => 35, :r10 => 36, :r11 => 42, :r12 => 43
      @dim_e2_rating = rating @total_dim_e2, :r1 => 7, :r2 => 8, :r3 => 14, :r4 => 15, :r5 => 21, :r6 => 22, :r7 => 28, :r8 => 29, :r9 => 35, :r10 => 36, :r11 => 42, :r12 => 43
      @dim_s2_rating = rating @total_dim_s2, :r1 => 7, :r2 => 8, :r3 => 14, :r4 => 15, :r5 => 21, :r6 => 22, :r7 => 28, :r8 => 29, :r9 => 35, :r10 => 36, :r11 => 42, :r12 => 43
      @dim2_rating = rating @dim2, :r1 => 3, :r2 => 4, :r3 => 7, :r4 => 8, :r5 => 11, :r6 => 12, :r7 => 15, :r8 => 16, :r9 => 19, :r10 => 20, :r11 => 23, :r12 => 24
      @dimper2_rating = rating @dimper2, :r1 => 10, :r2 => 11, :r3 => 20, :r4 => 21, :r5 => 30, :r6 => 31, :r7 => 40, :r8 => 41, :r9 => 50, :r10 => 51, :r11 => 60, :r12 => 61
      @total_int_i2_rating = rating @total_int_i2, :r1 => 0, :r2 => 1, :r3 => 5, :r4 => 6, :r5 => 12, :r6 => 13, :r7 => 19, :r8 => 20, :r9 => 26, :r10 => 27, :r11 => 33, :r12 => 34
      @total_int_e2_rating = rating @total_int_e2, :r1 => 0, :r2 => 1, :r3 => 5, :r4 => 6, :r5 => 12, :r6 => 13, :r7 => 19, :r8 => 20, :r9 => 26, :r10 => 27, :r11 => 33, :r12 => 34
      @total_int_s2_rating = rating @total_int_s2, :r1 => 0, :r2 => 1, :r3 => 5, :r4 => 6, :r5 => 12, :r6 => 13, :r7 => 19, :r8 => 20, :r9 => 26, :r10 => 27, :r11 => 33, :r12 => 34
      @int2_rating = rating @int2, :r1 => 7, :r2 => 8, :r3 => 14, :r4 => 15, :r5 => 21, :r6 => 22, :r7 => 28, :r8 => 29, :r9 => 35, :r10 => 36, :r11 => 42, :r12 => 43
      @intper2_rating = rating @intper2, :r1 => 10, :r2 => 11, :r3 => 20, :r4 => 21, :r5 => 30, :r6 => 31, :r7 => 40, :r8 => 41, :r9 => 50, :r10 => 51, :r11 => 60, :r12 => 61
      @di2_rating = rating @di2, :r1 => 3, :r2 => 4, :r3 => 7, :r4 => 8, :r5 => 11, :r6 => 12, :r7 => 15, :r8 => 16, :r9 => 19, :r10 => 20, :r11 => 23, :r12 => 24
      @total_dis2_rating = rating @total_dis2, :r1 => 0, :r2 => 1, :r3 => 1, :r4 => 2, :r5 => 2, :r6 => 4, :r7 => 4, :r8 => 5, :r9 => 5, :r10 => 6, :r11 => 6, :r12 => 8
      @alper2_rating = rating @alper2, :r1 => 53, :r2 => 54, :r3 => 57, :r4 => 58, :r5 => 61, :r6 => 62, :r7 => 65, :r8 => 66, :r9 => 69, :r10 => 70, :r11 => 73, :r12 => 74
      @tota_rho456_rating = rho_rating(@total_rho4 + @total_rho5 + @total_rho6)
      @total_bali2_rating = bal_rating @total_bali2, :r1 => 'Strongly aversive towards your own individuality ', :r2 => 'Aversive tendencies towards your own individuality', :r3 => 'Balanced valence towards your own  individuality ', :r4 => 'Tendencies to be overly-attracted towards valuing your own individuality ', :r5 => 'Strongly over-attracted towards valuing your own individuality'
      @total_bale2_rating = bal_rating @total_bale2, :r1 => 'Strongly aversive towards valuing your roles in life', :r2 => 'Aversive tendencies towards valuing your roles in life', :r3 => 'Balanced valence towards your roles in life', :r4 => 'Tendencies to be overly-attracted towards valuing your roles in life', :r5 => 'Strongly over-attracted towards valuing your roles in life'
      @total_bals2_rating = bal_rating @total_bals2, :r1 => 'Strongly aversive towards your self-concept', :r2 => 'Aversive tendencies towards your self-concept', :r3 => 'Balanced valence towards your self-concept', :r4 => 'Tendencies to be overly-attracted towards valuing your self-concept', :r5 => 'Strongly over-attracted towards valuing your self-concept'
    end
  end

  def update_list1
    if request.post?
      items = params[:items][:order]
      test = params[:test]
      @result = Result.find_by_user_id_and_test_num(current_user.id,test)
      if @result.blank?
        @result = Result.create( :user_id => current_user.id,:item_order => items,:test_num => test )
      else
        @result.update_attributes( :user_id => current_user.id, :item_order => items, :test_num => test )
      end 
      flash[:notice] ="Test One result saved!"  
      redirect_to :action =>"result"
    end
  end

  def update_list2
    if request.post?
      items = params[:items][:order]
      test = params[:test]
      @result = Result.find_by_user_id_and_test_num(current_user.id,test)
      if @result.blank?
        @result = Result.create(:user_id => current_user.id,:item_order => items,:test_num => test )
      else
        @result.update_attributes( :user_id => current_user.id, :item_order => items, :test_num => test )
      end 
      flash[:notice] ="Test two result saved!"  
      redirect_to :action =>"result"
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

  
  # calculating totals for the result2 ################################################

  def total_dim_i2 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      dim2 = (Testtwo.find(n).dim_i2(row) == '-') ? 0 : Testtwo.find(n).dim_i2(row)
      total += dim2
      n += 1
    end
    return total
  end

  def total_dim_e2 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      dim2 = (Testtwo.find(n).dim_e2(row) == '-') ? 0 : Testtwo.find(n).dim_e2(row)
      total += dim2
      n += 1
    end
    return total
  end

  def total_dim_s2 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      dim2 = (Testtwo.find(n).dim_s2(row) == '-')? 0 : Testtwo.find(n).dim_s2(row)
      total += dim2
      n += 1
    end
    return total
  end

  def total_int_i2 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testtwo.find(n).int_i2(row)
      n += 1
    end
    return total
  end

  def total_int_s2 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testtwo.find(n).int_s2(row)
      n += 1
    end
    return total
  end

  def total_int_e2 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testtwo.find(n).int_e2(row)
      n += 1
    end
    return total
  end

  def dif2 new_order
    return total_dim_i2(new_order) + total_dim_s2(new_order) + total_dim_e2(new_order)
  end

  def int2 new_order
    return total_int_i2(new_order) + total_int_s2(new_order) + total_int_e2(new_order)
  end

  def dim2 new_order
    return 3*([total_dim_i2(new_order), total_dim_s2(new_order), total_dim_e2(new_order)].max) - dif2(new_order)
  end

  def di2 new_order
    return 3*([total_int_i2(new_order), total_int_s2(new_order), total_int_e2(new_order)].max) - int2(new_order)
  end

  def total_dis2 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testtwo.find(n).dis2(row)
      n += 1
    end
    return total
  end

  def total_bali2 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testtwo.find(n).bali2(row)
      n += 1
    end
    return total
  end

  def total_bale2 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testtwo.find(n).bale2(row)
      n += 1
    end
    return total
  end

  def total_bals2 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testtwo.find(n).bals2(row)
      n += 1
    end
    return total
  end

  def total_rho4 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testtwo.find(n).rho4(row, new_order)
      n += 1
    end
    return total
  end

  def total_rho5 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testtwo.find(n).rho5(row, new_order)
      n += 1
    end
    return total
  end

  def total_rho6 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testtwo.find(n).rho6(row, new_order)
      n += 1
    end
    return total
  end

  def alper2 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      bali2 = Testtwo.find(n).bali2(row)
      bale2 = Testtwo.find(n).bale2(row)
      bals2 = Testtwo.find(n).bals2(row)
      total += ( bali2 < 0 ) ? bali2 : 0
      total += ( bale2 < 0 ) ? bale2 : 0
      total += ( bals2 < 0 ) ? bals2 : 0
      n += 1
    end
    final = ((-total) * 100) / dif2(new_order)
    return final
  end

  # rating methods

  def rating value, rates = {}
    rate = "Excellent" if value <= rates[:r1]
    rate = "Very Good" if value >= rates[:r2] and value <= rates[:r3]
    rate = "Good" if value >= rates[:r4] and value <= rates[:r5]
    rate = "Average" if value >= rates[:r6] and value <= rates[:r7]
    rate = "Poor" if value >= rates[:r8] and value <= rates[:r9]
    rate = "Very Poor" if value >= rates[:r10] and value <= rates[:r11]
    rate = "Bad" if value >= rates[:r12]
    return rate
  end

  def rho_rating value
    rate = "Excellent" if value >= 0.925
    rate = "Very Good" if value >= 0.850 and value <= 0.924
    rate = "Good" if value >= 0.775 and value <= 0.849
    rate = "Average" if value >= 0.700 and value <= 0.774
    rate = "Poor" if value >= 0.625 and value <= 0.699
    rate = "Very Poor" if value >= 0.550 and value <= 0.624
    rate = "Bad" if value <= 0.549 
    return rate
  end

  def bal_rating value, rates = {}
    rate = rates[:r1] if value <= -15
    rate = rates[:r2] if value >= -14 and value <= -6
    rate = rates[:r3] if value >= -5 and value <= 5
    rate = rates[:r4] if value >= 6 and value <= 14
    rate = rates[:r5] if value >= 15
    return rate
  end

end